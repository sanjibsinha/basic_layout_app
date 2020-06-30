import 'package:basic_layout_app/src/customized_widget_one.dart';
import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Using Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Using Container'),
        ),
        body: Center(
          child: useContainer(),
        ),
      ),
    );
  }
}
