import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/syllabus/syllabus.dart';
import 'package:wise_app/presentation/widgets/text.dart';

// "assets/background/mecca.png"
class ModulesPageP extends StatelessWidget {
  final List<String> weeks = [
    'Week 1',
    'Week 2',
    'Week 3',
    'Week 4',
    'Week 5',
    'Week 6',
  ];

  final List<String> eachWeek = [
    'Classwork',
    'Homework',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: CustomText(
          'MODULES',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: backG,
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              onTap: () {
                Get.toNamed(syllabusPageP);
              },
              leading: Icon(
                Icons.notes_rounded,
                color: Colors.grey,
                size: 25,
              ),
              title: CustomText(
                'Parents Handbook',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: weeks.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: backG,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Align(
                        child: CustomText(
                          weeks[index],
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        alignment: FractionalOffset.centerLeft,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: eachWeek.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.symmetric(
                                  horizontal: BorderSide(
                                    color: backG,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                onTap: () {
                                  // Get.toNamed(contactsPageP);
                                },
                                leading: Icon(
                                  eachWeek[index] == 'Classwork'
                                      ? Icons.class_
                                      : Icons.class_outlined,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                                title: CustomText(
                                  eachWeek[index],
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
