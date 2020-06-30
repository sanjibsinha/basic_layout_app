import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Page',
          style: TextStyle(
            fontFamily: 'Trajan Pro',
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/sanjib1.jpg',
            height: 200,
            width: 600,
            fit: BoxFit.cover,
          ),
          _titleAndDescription(),
          DifferentStatefulButtonWidget(),
        ],
      ),
    );
  }
}

Widget _titleAndDescription() =>
    Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Some name',
                    style: TextStyle(
                      fontFamily: 'Schuyler',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Some Address',
                    style: TextStyle(
                      fontFamily: 'Trajan Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    'Hi, my name is Some name. I live in Austria, with my parents. Currently,'
                        ' I am studying Computer Science in University Austrian. Because this is '
                        ' a post that does not mean actually anything, please do not expect '
                        ' any detail about me. Better you ask the author who has created this '
                        'post about me. All I know is the image has been taken from the '
                        'website Unsplash. It is a very good website with plenty of images '
                        'that you will like!',
                    style: TextStyle(
                      fontFamily: 'Schuyler',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
);

class DifferentStatefulButtonWidget extends StatefulWidget {
  @override
  _DifferentStatefulButtonWidgetState createState() => _DifferentStatefulButtonWidgetState();
}

class _DifferentStatefulButtonWidgetState extends State<DifferentStatefulButtonWidget> {
  String calling = 'The calling message wil appear here!';
  void callMe(String callingMe) {
    setState(() {
      calling = callingMe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.call, color: Colors.orange,),
                  RaisedButton(
                    child: Text(
                      'Call Me!',
                      style: TextStyle(
                        fontFamily: 'Schuyler',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      callMe('Calling, it\'s dialling...');
                    },
                    color: Colors.redAccent,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 40, top: 10),
                    child: Text(
                      calling,
                      style: TextStyle(
                        fontFamily: 'Trajan Pro',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(

            ),
          ),
        ],
      ),

    );
  }
}


