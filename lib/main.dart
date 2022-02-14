import 'package:flutter/material.dart';

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
  var buttons = ['button 0', 'button 1', 'button 2', 'button 3'];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(children: [
          Text(buttons[_questionIndex]),
          RaisedButton(
            child: Text(buttons[1]),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text(buttons[2]),
            onPressed: () => print('answer 2222'),
          ),
          RaisedButton(
              child: Text(buttons[3]),
              onPressed: () {
                print('answer 3');
              }),
        ]),
      ),
    );
  }
}
