import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/widgets/text.dart';

import 'login_logic.dart';

class LoginPageT extends StatelessWidget {
  final logic = Get.find<LoginLogicT>();
  final state = Get.find<LoginLogicT>().state;

  final formKeyT = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(25),
          child: Form(
            key: formKeyT,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              children: [
                Center(
                  child: CustomText(
                    'Authorization',
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomText(
                    'E-mail:',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: backG,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      controller: state.email,
                      validator: (email) {
                        if (logic.isEmailValid(email!)) {
                          return null;
                        } else {
                          return 'Enter a valid email address';
                        }
                      },
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: "Enter your email",
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomText(
                    'Password:',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: backG,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      controller: state.password,
                      obscureText: true,
                      validator: (password) {
                        if (logic.isPasswordValid(password!)) {
                          return null;
                        } else {
                          return 'Enter a valid password';
                        }
                      },
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: "Enter your password",
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKeyT.currentState!.validate()) {
                      formKeyT.currentState!.save();
                      logic.login(
                        state.email!.text,
                        state.password!.text,
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomText(
                      'Log in',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.white,
                    backgroundColor: linkT,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: CustomText(
                      'Request Credentials from ICCL',
                      fontSize: 15,
                      color: Color.fromRGBO(12, 140, 255, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
