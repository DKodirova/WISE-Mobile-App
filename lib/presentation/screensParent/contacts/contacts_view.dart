import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_logic.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_logic.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class ContactsPageP extends StatelessWidget {
  final logic = Get.find<ContactsLogicP>();
  final state = Get.find<ContactsLogicP>().state;

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Teacher',
      'Principal', 
    ];

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
      backgroundColor: backG,
      body: Container(
        constraints: BoxConstraints(
          minHeight: 100,
        ), 
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5), // Offset in the x and y direction
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
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
                                "Br. Shakeel",
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                items[index],
                                fontSize: 15,
                                color: Colors.black54,
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
