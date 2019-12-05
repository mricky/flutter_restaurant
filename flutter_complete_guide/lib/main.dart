import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var question =[
    'What\'s your favourite color?',
    'What\'s your favourite animal?'
  ];
  void answerQuestion(){
    print('answer');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Appbar'),),
        body: Column(children: <Widget>[
          Text('The Questions ?'),
          RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
          RaisedButton(child: Text('Answer 1'),onPressed: ()=> 'anwer 3'),
          RaisedButton(child: Text('Answer 1'),onPressed: (){
              print('anonymous function');
          },)
        ],),
      ),
    );
  }
}
