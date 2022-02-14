import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    {
      'questionText': 'what\'s your favourite colour',
      'answers': ['Red,', 'Black', 'Green', 'white']
    },
    {
      'questionText': 'what\'s your favourite animal',
      'answers': ['Cow,', 'Rabit', 'Elephant', 'Tiger']
    },
    {
      'questionText': 'who\'s the best',
      'answers': ['Roger,', 'Roger', 'Roger']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(questions[_questionIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ],
      ),
    ));
  }
}
