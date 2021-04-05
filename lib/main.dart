import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}
class MyAppState extends State {
  var answerQuestionIndex = 0;
  void answerQuestion() {
    answerQuestionIndex = answerQuestionIndex + 1;
    print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal',
      'What\'s your favorite instructor'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Flutter App'),
          ),
          body: Column(
            children: [
              Text(questions[answerQuestionIndex]),
              // ignore: deprecated_member_use
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              // ignore: deprecated_member_use
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
              // ignore: deprecated_member_use
              RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
            ],
          )),
    );
  }

}
