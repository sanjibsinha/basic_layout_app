import 'package:basic_layout_app/src/customized_widgets_two.dart';
import 'package:flutter/material.dart';

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      home: CustomizedListView(),
    );
  }
}
