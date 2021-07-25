import 'package:flutter/material.dart';
class Ques extends StatelessWidget {
  final String qt;
  Ques(this.qt);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        qt,
        style: TextStyle(fontSize: 24,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,

      ),
    );
  }
}
