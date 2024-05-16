import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Lecture1PageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 229, 229),
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Text('LECTURE 1', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset('assets/pdfs/android_core_1_slides.pdf'),
    );
  }
}
