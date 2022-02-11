import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Question has been answered');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title Text'),
        ),
        body: Column(children: [
          Text('The Question text'),
          RaisedButton(
            child: Text('Answer Number 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer Number 2'),
            onPressed: () => print('answer 2222'),
          ),
          RaisedButton(
              child: Text('Answer Number 3333'),
              onPressed: () {
                print('answer 3');
              }),
        ]),
      ),
    );
  }
}
