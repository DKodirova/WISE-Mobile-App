import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_logic.dart';
import 'package:wise_app/presentation/screensTeacher/contacts/contacts_logic.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class ContactsPageT extends StatelessWidget {
  final logic = Get.find<ContactsLogicT>();
  final state = Get.find<ContactsLogicT>().state;

  @override
  Widget build(BuildContext context) {
    // void _showDialog(Widget child) {
    //   showCupertinoModalPopup<void>(
    //     context: context,
    //     builder: (BuildContext context) => Container(
    //       height: 216,
    //       padding: const EdgeInsets.only(top: 6.0),
    //       // The Bottom margin is provided to align the popup above the system
    //       // navigation bar.
    //       margin: EdgeInsets.only(
    //         bottom: MediaQuery.of(context).viewInsets.bottom,
    //       ),
    //       // Provide a background color for the popup.
    //       color: CupertinoColors.systemBackground.resolveFrom(context),
    //       // Use a SafeArea widget to avoid system overlaps.
    //       child: SafeArea(
    //         top: false,
    //         child: child,
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: CustomText(
          'CONTACTS',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(
                      color: backG,
                      width: 1.0,
                    )),
                  ),
                  child: ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    tileColor: Colors.white,
                    title: Container(
                        height: 100,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              "Parent - Mr. Smith",
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              "Student - Joe Smith",
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        )),
                    trailing: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.green,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
