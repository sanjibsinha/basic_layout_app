import 'basic_staff/basic_layout.dart';
import 'package:basic_layout_app/basic_staff/image_and_row.dart';
import 'package:flutter/material.dart';
import 'package:basic_layout_app/basic_staff/using_container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'basic_staff/using_grid.dart';
import 'basic_staff/using_list.dart';
import 'basic_staff/using_card.dart';
import 'basic_staff/using_stack.dart';
import 'basic_staff/detail_page_using_all.dart';

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(ListApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// non material app is by default black, we can change the color
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: const BorderRadius.all(const Radius.circular(4)),
      ),
      margin: const EdgeInsets.all(12),
      child: Image.asset(
        'images/sanjib2.jpg',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
