import 'Question.dart';

class QuizBrains {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(questionText: 'Question 1 ', questionAnswer: false),
    Question(questionText: 'Question 2 ', questionAnswer: true),
    Question(questionText: 'Question 3 ', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber <= _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool resetQuestion(){
    if (_questionNumber == _questionBank.length) {
      _questionNumber = 0;
      return true;
    }
    return false;
  }

  int getNumber() {
    return _questionNumber;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
