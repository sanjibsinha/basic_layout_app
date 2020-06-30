import 'package:basic_layout_app/src/customized_widget_one.dart';
import 'package:flutter/material.dart';

class ImageAndRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image and Row Examples',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image and Row'),
        ),
        body: Column(
          children: <Widget>[
            expandImagesInsideRow(),
            Text(
                'Above every photo takes the same width.',
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontWeight: FontWeight.bold,
                fontSize: 25.00,
              ),
            ),
            expandImagesInsideRowWithFlex(),
            Text(
              'Above the third photo in the row expands more than others for flex.',
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontWeight: FontWeight.bold,
                fontSize: 25.00,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
