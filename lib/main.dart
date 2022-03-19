import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Match photos"),
        backgroundColor: Colors.lightBlue[800],
      ),
      body: game1(),
    ),
  ));
}

class game1 extends StatefulWidget {
  const game1({Key? key}) : super(key: key);

  @override
  _game1State createState() => _game1State();
}

class _game1State extends State<game1> {
  int i = 9;
  int j = 2;

  void changeimage() {
    i = Random().nextInt(8) + 1;
    j = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          i == j ? 'Congratulations' : 'try again ',
          style: TextStyle(fontSize: 25),
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeimage();
                  });
                },
                child: Image.asset('images/image-$i.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeimage();
                  });
                },
                child: Image.asset('images/image-$j.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
