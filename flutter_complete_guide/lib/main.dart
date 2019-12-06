import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MyAppState();
    }
  }

  class _MyAppState extends State<MyApp> {
    final questions = const [
       {
         'questionText': 'What\'s your favourite color?',
         'answers' : [
           {'text':'Black', 'score':10},
           {'text':'Red','score':5},
           {'text':'Green','score':30},
           {'text':'White', 'score':50}
           ],
       },
       {
         'questionText':  'What\'s your favourite animal?',
         'answers' : [
           {'text':'Rabbit','score':3},
           {'text':'Snake','score':11},
           {'text':'Elephant','score':5},
           {'text':'Lion','score':9},
           ],
       },
        {
         'questionText':  'Who\'s your favourite instructor?',
         'answers' : [
           {'text':'Mohammad','score':1},
           {'text':'Ricky','score':1},
           {'text':'Sikasep','score':1}
           ],
       }

      
    ];
    var _questionIndex = 0;
    var _totalScore = 0;
    void _answerQuestion(int score){
      _totalScore += score;

      setState(() {
           _questionIndex = _questionIndex + 1;
      });
   
      print(_questionIndex);
      // if(_questionIndex < questions.length){
      //     print('we have moer question');
      // }
    }
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Appbar'),),
        body: _questionIndex < questions.length 
            ?
           Quiz(
             answerQuestion: _answerQuestion,
             questionIndex: _questionIndex, 
             questions :questions)
           // Text(questions.toList().toString())
             :
             Result(_totalScore),
      ),
    );
  }
  
}
