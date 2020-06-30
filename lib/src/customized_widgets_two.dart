import 'package:flutter/material.dart';

/// here we will cover a few customized widgets that cover grid and list

class CustomizedGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customized Grid view'),
      ),
      body: Center(
        child: _createCustomizedGrid(),
      ),
    );
  }
}

Widget _createCustomizedGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  padding: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  /// we should pass a List of containers below
  /// and pass the image names as index
  /// it will start from 0 and ends at 8
  /// images are saved as 0.jpg, 1.jpg, etc
  children: _createGridList(9),
);

List<Container> _createGridList(int imageCount) => List.generate(
    imageCount, (index) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        border: Border.all(width: 2, color: Colors.black12),
        borderRadius: const BorderRadius.all(const Radius.circular(4)),
      ),
      margin: const EdgeInsets.all(2),
      child: Image.asset('images/$index.jpg'),
),
);

class CustomizedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customized List view'),
      ),
      body: Center(
        child: _createCustomizedList(),
      ),
    );
  }
}
Widget _createCustomizedList() =>
    ListView(
      children: <Widget>[
        _displayNamesAndImage('John Smith', 'Nikon', Image.asset('images/0.jpg')),
        _displayNamesAndImage('Json Web', 'Canon', Image.asset('images/1.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/2.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/3.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/4.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/5.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/6.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/7.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/8.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/9.jpg')),
        _displayNamesAndImage('xxx', 'xxx', Image.asset('images/0.jpg')),
      ],
);

Widget _displayNamesAndImage(String name, String camera, Image image) =>
    ListTile(
      title: Text(
        name,
        style: TextStyle(
          fontFamily: 'Schuyler',
          fontSize: 20.00,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        camera,
        style: TextStyle(
          fontFamily: 'Trajan Pro',
          fontSize: 16.00,
          fontWeight: FontWeight.normal,
        ),
      ),
      leading: image,
      onTap: () {
        print('{$name}');
      },

);