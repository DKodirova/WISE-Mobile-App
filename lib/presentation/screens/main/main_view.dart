import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: CustomText(
          'WISE',
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand, // Make the stack take the full screen space
        children: [
          // Background image
          Image.asset(
            "assets/background/mecca.png", // Update the path to your image
            fit: BoxFit.cover, // Cover the entire screen
          ),

          Positioned(
            bottom: 50,
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.symmetric(
                        horizontal: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    )),
                  ), 
                  child: ListTile(
                    onTap: () => Get.toNamed(loginT),
                    leading: Icon(Icons.menu_sharp),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: CustomText(
                      'Teacher Login',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ), 
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.symmetric(
                        horizontal: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    )),
                  ),
                  child: ListTile(
                    onTap: () => Get.toNamed(loginP),
                    leading: Icon(Icons.menu_sharp),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: CustomText(
                      'Parent Login',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
