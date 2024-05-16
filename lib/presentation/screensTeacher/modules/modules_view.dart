import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
 import 'package:wise_app/presentation/screensParent/syllabus/syllabus.dart';
import 'package:wise_app/presentation/screensTeacher/lecture1/lecture1.dart';
import 'package:wise_app/presentation/screensTeacher/syllabus/syllabus.dart';

// "assets/background/mecca.png"
class ModulesPageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.edit, size: 24, color: Colors.black),
            onPressed: () {
              // Handle the edit button press
              // Add your custom logic here
            },
          ),
        ],
        leading: GestureDetector(
          child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Text('MODULES', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: ElevatedButton.icon(
                icon:
                    const Icon(Icons.assignment, color: Colors.grey, size: 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SyllabusPageT()));
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Syllabus',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ModulesPageT()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Unit 1',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: ElevatedButton.icon(
                icon: const Icon(Icons.document_scanner,
                    color: Colors.grey, size: 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Lecture1PageT()));
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lecture 1',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: ElevatedButton.icon(
                icon: const Icon(Icons.quiz, color: Colors.grey, size: 20),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close')),
                      ],
                      title: const Text('Material is not available'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text(
                          "Your instructor did not upload the material for this assignment yet"),
                    ),
                  );
                  //Navigator.push(context,
                  //    MaterialPageRoute(builder: (_) => ModulesPage()));
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quiz 1',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ModulesPageT()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Unit 2',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: ElevatedButton.icon(
                icon: const Icon(Icons.document_scanner,
                    color: Colors.grey, size: 20),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close')),
                      ],
                      title: const Text('Material is not available'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text(
                          "Your instructor did not upload the material for this assignment yet"),
                    ),
                  );
                  //Navigator.push(context,
                  //    MaterialPageRoute(builder: (_) => ModulesPage()));
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lecture 2',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(color: Colors.white),
            child: ElevatedButton.icon(
                icon: const Icon(Icons.quiz, color: Colors.grey, size: 20),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close')),
                      ],
                      title: const Text('Material is not available'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text(
                          "Your instructor did not upload the material for this assignment yet"),
                    ),
                  );
                  //Navigator.push(context,
                  //    MaterialPageRoute(builder: (_) => ModulesPage()));
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quiz 2',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ),
        ), 
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the plus button press
          // Add your custom logic here
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey, // You can customize the color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
