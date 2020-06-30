import 'package:flutter/material.dart';
/// this customized widgets cover only image, row, column and container
Widget expandImagesInsideRow() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Expanded(child: Image.asset('images/sanjib1.jpg'),),
    Expanded(child: Image.asset('images/sanjib2.jpg')),
    Expanded(child: Image.asset('images/sanjib3.jpg'),),
  ],
);

Widget expandImagesInsideRowWithFlex() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Expanded(child: Image.asset('images/sanjib1.jpg'),),
    Expanded(child: Image.asset('images/sanjib2.jpg'),),
    /// this child fills the available space along with Flex main axis
    Expanded(child: Image.asset('images/sanjib3.jpg'), flex: 3,),
  ],
);

/// #startSection useContainer
/// using containers wisely to display images in row with relevant text is essential
/// below we have used useContainer Widget, which has used three private methods
/// through which we can display images in row
Widget useContainer() => Container(
    decoration: BoxDecoration(
      color: Colors.white24,
    ),
    child: Column(
      children: <Widget>[
        _useRowToDisplayImages('images/sanjib2.jpg', 'Black Lives matter'),
        Text('data'),
        _useRowToDisplayImages('images/sanjib3.jpg', 'Beautiful smile stays'),
        Text('data'),
        _useRowToDisplayImages('images/sanjib2.jpg', 'Black Lives matter'),
        Text('data'),
      ],
    ),
);

Widget _useRowToDisplayImages(String imagePath, String someText) => Row(
  children: <Widget>[
    _decorateImage(imagePath),
    _textImage(someText),
  ],
);

Widget _decorateImage(String imagePath) => Expanded(
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.black12),
      borderRadius: const BorderRadius.all(const Radius.circular(8)),
    ),
    margin: const EdgeInsets.all(4),
    child: Image.asset(imagePath),
  ),
);

Widget _textImage(String imageText) => Text(
  imageText,
  softWrap: true,
  style: TextStyle(
    fontFamily: 'Trajan Pro',
    fontSize: 16.00,
    fontWeight: FontWeight.bold,
  ),
);
/// #endSection useContainer

