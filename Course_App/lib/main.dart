import 'package:flutter/material.dart';


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
      'What\'s your favorite color?',
      'What\'s your favorite animarl?',
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
            Text (questions[questionindex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen');
              },
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: () {
                print('Answer 4 chosen');
              }
            
            )
          ],
        ),
      ),
    );
  }
}
