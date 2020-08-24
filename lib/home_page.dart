import 'package:flutter/material.dart';
import 'package:truefalsequizapp/views/quiz_play.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => QuizPlay()
              ));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Text(
                'Start quiz now',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              )
            ),
          ),
        )
    );
  }
}
