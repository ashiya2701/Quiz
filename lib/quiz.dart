import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
   final List <Map<String,Object>> question;
   final int i;
   final Function ans;
   Quiz({@required this.question,@required this.ans,@required this.i});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ques(
          question[i]['quesno'],
        ),
        ...(question[i]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(()=> ans(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
