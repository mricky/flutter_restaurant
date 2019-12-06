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
         'answers' : ['Black','Red','Green','White']
       },
       {
         'questionText':  'What\'s your favourite animal?',
         'answers' : ['Rabbit','Snake','Elephant']
       },
        {
         'questionText':  'Who\'s your favourite instructor?',
         'answers' : ['Mohammad','Ricky','Sikasep']
       }

      
    ];
    var _questionIndex = 0;
    void _answerQuestion(){
      
      
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
             :
             Result(),
      ),
    );
  }
  
}
