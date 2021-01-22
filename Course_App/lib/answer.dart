import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer(this.answerText,this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return 
      RaisedButton(
              child: Text(answerText),
              onPressed: selectHandler,
            
    );
  }
} 
