import 'package:app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp((MyApp()));
class MyApp extends StatefulWidget{

   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  final _question=[
    { 'quesno':'What is your favourite colour?', 'answers' :[
    {'text':'Black', 'score': 10},
    {'text':'Pink', 'score':5},
    {'text':' Green','score': 3},
    { 'text':'White', 'score': 2},] },
    { 'quesno':'What is your favourite animal?', 'answers' :[
    {'text':'Bear', 'score':5},
      {'text':'Cat','score':3},
    {'text':'Rabbit','score':2},
    {'text':'Snake','score':10},], },
    { 'quesno':'What is your favourite food?', 'answers' :[
    {'text':'Pizza', 'score':10},
    {'text':'Dal', 'score':3},
    {'text':'Pasta', 'score': 5},
    {'text':'Rice','score': 2 },], },

  ];
  var _i=0;
  var _ts=0;
  void _restartquiz(){
    setState(() {
      _i=0;
      _ts=0;
    });

}


  void _ans(int score){
    _ts=_ts+score;

    setState(() {
      _i=_i+1;
      if(_i<_question.length)
        print('WE have more questions');
    });

  print(_i);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz'),),
        body: _i<_question.length ?
            Quiz(question: _question,
            ans: _ans, i: _i)
            : Result(_ts,_restartquiz),
      ),
    );



  }

}



