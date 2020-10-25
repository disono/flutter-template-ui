import 'package:quizzler/question.dart';

class QuizBrain {

  List<Question> _q = [
    Question(q: 'You can lead?', a: true),
    Question(q: 'Are you alien?', a: true),
    Question(q: 'A slug\'s blood is green.', a: false),
    Question(q: 'This is where the question text will go.', a: true),
    Question(q: 'Question here.', a: true),
  ];

  String getQuestionText(int questionNumber) {
    return this._q[questionNumber].questionText;
  }

  bool getCorrectAnswer(int questionNumber) {
    return this._q[questionNumber].questionAnswer;
  }

  int getTotalQuestion() {
    return this._q.length;
  }

}