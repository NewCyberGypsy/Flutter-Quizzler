import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(questionText: '199 - 1 = 198 ?', questionAnswer: true),
    Question(
        questionText: 'This app was made by Abhishek ?', questionAnswer: true),
    Question(questionText: 'Do dog meows ?', questionAnswer: false),
    Question(questionText: 'Octopus\'s blood is blue?', questionAnswer: true),
    Question(
        questionText: '1/0 is not equal to Infinity', questionAnswer: false),
    Question(
        questionText: 'Monaco is the smallest country in the world',
        questionAnswer: false),
    Question(
        questionText: 'There are five different blood groups',
        questionAnswer: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
