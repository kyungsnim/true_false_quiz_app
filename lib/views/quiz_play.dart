import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:truefalsequizapp/data/data.dart';
import 'package:truefalsequizapp/model/QuestionModel.dart';
import 'package:truefalsequizapp/views/result_page.dart';

class QuizPlay extends StatefulWidget {
  @override
  _QuizPlayState createState() => _QuizPlayState();
}

class _QuizPlayState extends State<QuizPlay> with SingleTickerProviderStateMixin{

  List<QuestionModel> _questions = new List<QuestionModel>();
  int index;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;
  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _questions = getQuestion();
    index = 0;
    animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this
    )..addListener(() {
      setState(() {

      });
    });
    animation = Tween(begin: beginAnim, end: endAnim).animate(animationController);
    startAnim();

    animationController.addStatusListener((AnimationStatus status) {
      // 프로그레스바 끝까지 갔다면
      if(status == AnimationStatus.completed) {
        setState(() {
          index++;
          resetAnim();
          if(index == 9) {
            stopAnim();
          } else {
            startAnim();
          }
        });
      }
    });
  }

  startAnim() {
    animationController.forward();
  }

  resetAnim() {
    animationController.reset();
  }

  stopAnim() {
    animationController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == _questions.length? Center(child: CircularProgressIndicator()) : Container(
        padding: EdgeInsets.symmetric(vertical: 80),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: <Widget>[
                  Text('${index + 1}/${_questions.length}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(' Question',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Spacer(),
                  Text('${points}',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(' Points',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ),
            Text("${_questions[index].getQuestion()}"),
            SizedBox(height: 20,),
            LinearProgressIndicator(
              value: animation.value
            ),
            CachedNetworkImage(
              imageUrl: _questions[index].getImageUrl(),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if(_questions[index].getAnswer() == '1') {
                          setState(() {
                            points += 10;
                          });
                        } else {
                          setState(() {
                            points -= 5;
                          });
                        }
                        index++;
                        resetAnim();

                        if(index == _questions.length) {
                          stopAnim();
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => ResultPage(points)
                          ));
                        } else {
                          startAnim();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if(_questions[index].getAnswer() == '2') {
                          setState(() {
                            points += 10;
                          });
                        } else {
                          setState(() {
                            points -= 5;
                          });
                        }
                        index++;
                        resetAnim();

                        if(index == _questions.length) {
                          stopAnim();
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => ResultPage(points)
                          ));
                        } else {
                          startAnim();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child:
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if(_questions[index].getAnswer() == '3') {
                            setState(() {
                              points += 10;
                            });
                          } else {
                            setState(() {
                              points -= 5;
                            });
                          }
                          index++;
                          resetAnim();

                          if(index == _questions.length) {
                            stopAnim();
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => ResultPage(points)
                            ));
                          } else {
                            startAnim();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if(_questions[index].getAnswer() == '4') {
                            setState(() {
                              points += 10;
                            });
                          } else {
                            setState(() {
                              points -= 5;
                            });
                          }
                          index++;
                          resetAnim();

                          if(index == _questions.length) {
                            stopAnim();
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => ResultPage(points)
                            ));
                          } else {
                            startAnim();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            )
          ],
        ),
      )
    );
  }
}