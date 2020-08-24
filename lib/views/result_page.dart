import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int points;

  ResultPage(this.points);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'result : ${widget.points}',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      )
    );
  }
}
