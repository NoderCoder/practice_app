import 'package:flutter/material.dart';
import 'package:practice_app/answer.dart';

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
  var questions = [
    {
      'que': "Whats is your favouroute colour ?",
      'ans': ['red', 'blue', 'yellow']
    },
    {
      'que': "Whats is your favouroute day ?",
      'ans': ['tues', 'mon', 'sun']
    },
    {
      'que': "Whhen do you get ",
      'ans': ['10 am', '9 am', 'dosent matter']
    },
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
        body: questionIndex<questions.length ? Column(
          children: [
            Text(questions[questionIndex]['que'].toString()),
            ...(questions[questionIndex]['ans'] as List<String>)
                .map((ans) => Answer(ans, answerQuestion)),
          ],
        )
        : Center(child: Text("End of questions"))
      ),
    );
  }
}
