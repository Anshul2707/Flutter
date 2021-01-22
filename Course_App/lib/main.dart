import 'package:flutter/material.dart';
import './questionwidget.dart';
import './answer.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState(){

    
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
   var questionindex =0 ;
     var questions = [
       {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];
    

  void answerQuestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question( questions[questionindex]['questionText']) ,
            ...(questions[questionindex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
