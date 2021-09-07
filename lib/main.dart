import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<String> questions = [
    "Whats is your favouroute colour ?",
    "Whate is your favouroite day ?",
    "How many people do you like ?"
  ];
  void answerQuestion() {
    setState(() {
    questionIndex = questionIndex+ 1;  
    });
    print(questionIndex);
  }

  @override //DecoraTER
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful vs stateless"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text("Answer1"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
