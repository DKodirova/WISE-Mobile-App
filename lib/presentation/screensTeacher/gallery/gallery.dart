import 'package:flutter/material.dart';
import 'package:wise_app/core/style/constants.dart';

class GalleryPageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backG,
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Text('GALLERY', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(21),
                crossAxisCount: 3,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/random_pic1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/random_pic2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/random_pic3.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/random_pic4.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/random_pic5.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
