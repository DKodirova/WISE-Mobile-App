import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/models/user_model.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/home/home_logic.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down_logic.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class ChildDropdownButton extends StatefulWidget {
  @override
  _ChildDropdownButtonState createState() => _ChildDropdownButtonState();
}

class _ChildDropdownButtonState extends State<ChildDropdownButton> {
  // List<String> items = childChoices;

  final logic = Get.find<ChildDropdownL>();

  String? selectedItem = null;

  @override
  Widget build(BuildContext context) {
    return Container();
    //  FutureBuilder(
    //   future: logic.getUserData(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       if (snapshot.hasData) {
    //         UserModel userData = snapshot.data as UserModel;
    //         List<String> testList = [userData.firstName, userData.lastName];

    //         return DropdownButton<String>(
    //           underline: Container(),
    //           value: selectedItem,
    //           onChanged: (String? newValue) {
    //             setState(() {
    //               selectedItem = newValue!;
    //             });
    //           },
    //           padding: EdgeInsets.only(right: 5),
    //           hint: CustomText('Switch Child',
    //               fontSize: 15,
    //               color: Colors.grey,
    //               fontWeight: FontWeight.w500),
    //           items: testList.map<DropdownMenuItem<String>>((String value) {
    //             return DropdownMenuItem<String>(
    //               value: value,
    //               child: CustomText(value,
    //                   fontSize: 15,
    //                   color: Colors.black,
    //                   fontWeight: FontWeight.w500),
    //             );
    //           }).toList(),
    //         );
    //       } else if (snapshot.hasError) {
    //         return Center(
    //           child: Text(snapshot.error.toString()),
    //         );
    //       } else {
    //         return const Center(
    //           child: Text("Smth went wrong!"),
    //         );
    //       }
    //     } else {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //   },
    // );
  }
}
