import 'package:flutter/material.dart';
class BasicLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Basic Layout',
          ),
        ),
        body: Center(
          child: Text(
            'Basic Layout',
            style: TextStyle(
              fontFamily: 'Trajan Pro',
              fontSize: 25.00,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
