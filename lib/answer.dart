import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
 final Function selectHandler;
 final String at;
 Answer(this.selectHandler, this.at);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(at),
        onPressed: selectHandler,
      ),
    );
  }
}
