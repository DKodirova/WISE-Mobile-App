import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SyllabusPageT extends StatelessWidget {
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
        title: Text('SYLLABUS', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset('assets/pdfs/syllabus_cps340.pdf'),
    );
  }
}
