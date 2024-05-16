import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_view.dart';
import 'package:wise_app/presentation/screensParent/modules/modules_view.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class ManageCoursePageP extends StatelessWidget {
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
          'LEVEL 1',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(18),
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(10.0),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: AspectRatio(
                    aspectRatio: 16 / 10,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/bg_arabic.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(modulesPageP),
                  leading: Icon(
                    Icons.book,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Curriculum',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    color: backG,
                    width: 0.5,
                  )),
                ),
                child: ListTile(
                  onTap: () => Get.toNamed(contactsPageP),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey,
                    size: 25,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: CustomText(
                    'Contacts',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
