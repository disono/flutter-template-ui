import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Quizzler(),
    );
  }
}

class Quizzler extends StatefulWidget {
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {

  List<Widget> scoreKeeper = [];
  QuizBrain q = QuizBrain();

  int questionNumber = 0;

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (this.questionNumber < this.q.getTotalQuestion() - 1) {
        bool correctAnswer = this.q.getCorrectAnswer(questionNumber);
        if (correctAnswer == userPickedAnswer) {
          this.scoreKeeper.add(Icon(Icons.check, color: Colors.green));
        } else {
          this.scoreKeeper.add(Icon(Icons.close, color: Colors.red));
        }

        setState(() {
          this.questionNumber++;
        });
      } else {

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  this.q.getQuestionText(questionNumber),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  this.checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  this.testAlert(context);
                  this.checkAnswer(false);
                },
              ),
            ),
          ),
          Row(
            children: this.scoreKeeper,
          )
        ],
      ),
    );
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Test"),
      content: Text("Done..!"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
