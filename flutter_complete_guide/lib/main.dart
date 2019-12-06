import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MyAppState();
    }
  }

  class _MyAppState extends State<MyApp> {
    var _questionIndex = 0;
    void answerQuestion(){
      setState(() {
           _questionIndex = _questionIndex + 1;
      });
   
      print(_questionIndex);
    }
  @override
  Widget build(BuildContext context) {
     var questions =[
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Appbar'),),
        body: Column(children: <Widget>[
          Question(
            questions[_questionIndex]['questionText']
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
            .map((answers){
            return Answer(answerQuestion,answers);
          }).toList()
       
          // Text(questions[_questionIndex]),
          // RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
          
        ],),
      ),
    );
  }
  
}
