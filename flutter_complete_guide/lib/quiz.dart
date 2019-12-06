import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz({
      @required this.answerQuestion, 
      @required this.questionIndex, 
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
          Question(
            questions[questionIndex]['questionText']
          ),
          ...(questions[questionIndex]['answers'] as List<String>)
            .map((answers){
            return Answer(answerQuestion,answers);
          }).toList()
       
          // Text(questions[_questionIndex]),
          // RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
          
        ],
        );
  }
}