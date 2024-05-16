import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down.dart';
import 'package:wise_app/presentation/widgets/text.dart';
import 'package:full_screen_image/full_screen_image.dart';

class GalleryPageP extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item $index');

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
            icon: const Icon(Icons.arrow_back)),
        title: CustomText(
          'GALLERY',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: FullScreenWidget(
                disposeLevel: DisposeLevel.Low,
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Hero(
                    tag: '',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/random_pic1.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
