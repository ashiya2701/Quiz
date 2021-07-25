import 'package:flutter/material.dart';
class Result extends StatelessWidget {
   final int rs;
   final Function reset;
   Result(this.rs,this.reset);
   String get resultph {
     String rt;

     if (rs <= 9) {
       rt = 'You are awesome and innocent!';
     }
     else if (rs <= 12) {
       rt = 'Pretty likable!';
     }
     else if (rs <= 16) {
       rt = 'You are odd!!';
     }
     else {
       rt = 'You are selfish!! ';
     }
     return rt;
   }



  @override
  Widget build(BuildContext context) {
    return Center(child:
    Padding(
      padding: const EdgeInsets.only(top: 250.0),
      child: Column(

        children: [
          Text( resultph, style: TextStyle(fontSize: 36,
              color: Colors.redAccent,
               fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,
            ),
           TextButton(onPressed: reset, child: Text('Restart Quiz!'))
        ],
      ),
    ),
    );
  }
}

