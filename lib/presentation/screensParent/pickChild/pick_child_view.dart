import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/models/student_model.dart';
import 'package:wise_app/core/models/user_model.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/screensParent/pickChild/pick_child_logic.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class PickChildPageP extends StatelessWidget {
  // final List<String> items = List.generate(2, (index) => 'Item $index');
  final logic = Get.find<PickChildLogicP>();
  final state = Get.find<PickChildLogicP>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        title: CustomText(
          'CHOOSE YOUR CHILD',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Center(
        child: FutureBuilder(
            future: logic.getChildrenData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  List<StudentModel> children =
                      snapshot.data as List<StudentModel>;
                  // print(children.length);

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio:
                          1, // Set the aspect ratio to 1 for square cards
                    ),
                    itemCount: children.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(homePageP);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          margin: EdgeInsets.all(25.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Stack(
                              children: [
                                // Background Image
                                Image.asset(
                                  'assets/other/sample_child.jpeg', // Replace with your image asset path
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Colors.black,
                                    child: ListView(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      padding: EdgeInsets.all(20.0),
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    children[index].firstName +
                                                        " " +
                                                        children[index]
                                                            .lastName,
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  CustomText(
                                                    'Level 1',
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return const Center(
                    child: Text("Smth went wrong!"),
                  );
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
