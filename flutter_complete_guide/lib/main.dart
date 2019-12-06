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
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Appbar'),),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          Answer(answerQuestion),
          Answer(answerQuestion),
          Answer(answerQuestion),
          // Text(questions[_questionIndex]),
          // RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
          
        ],),
      ),
    );
  }
  
}
