import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class UsingCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card App',
          style: TextStyle(
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: _createCustomizedCard(),
      ),
    );
  }
}

Widget _createCustomizedCard() =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Image.asset('images/9.jpg', width: 150,),
        ),
        Container(
          height: 400,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Mitra Sen',
                    style: TextStyle(
                        fontFamily: 'Trajan Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )
                ),
                ListTile(
                  title: Text('96, Raja Rammohan Sarani',
                      style: TextStyle(
                          fontFamily: 'Schuyler',
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  subtitle: Text('Calcutta 9'),
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.blue[500],
                  ),
                ),
                ListTile(
                  title: Text('(+91) 0000000000',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.redAccent,
                  ),
                ),
                ListTile(
                  title: Text('mitra@example.com'),
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
);

class StackAppClass extends StatefulWidget {
  @override
  _StackAppClassState createState() => _StackAppClassState();
}

class _StackAppClassState extends State<StackAppClass> {

  String message = 'Your message will appear here!';

  void contactHer(String messageHer) {
    setState(() {
      message = messageHer;
    });
  }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _customizedAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _customizedStack(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  border: Border.all(width: 2, color: Colors.black38),
                  borderRadius: const BorderRadius.all(const Radius.circular(4)),
                ),
                padding: const EdgeInsets.all(10),
                child: RaisedButton(
                  disabledColor: Colors.orangeAccent,
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Schuyler',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    contactHer('Hi, my name is xxx...');
                  },
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Schuyler',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      );
  }
}

Widget _customizedAppBar() =>
    AppBar(
      title: Text(
        'Stack App',
        style: TextStyle(
          fontFamily: 'Trajan Pro',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.redAccent,
);

Widget _customizedStack() =>
    Column(
      children: <Widget>[
        Stack(
          alignment: const Alignment(0.1, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/5.jpg'),
              radius: 60,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Text(
                'Childhood spent in Delhi',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Trajan Pro',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Stack(
          alignment: const Alignment(0.1, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/3.jpg'),
              radius: 70,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Love to spend time with friends',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Schuyler',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Stack(
          alignment: const Alignment(0.1, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/9.jpg'),
              radius: 80,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'I am Mitra Sen',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Trajan Pro',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: 5,
          thickness: 10,
          color: Colors.black38,
        )
      ],
);