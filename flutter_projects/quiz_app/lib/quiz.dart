import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen ; // ? is used to denote that the variable can be null

  @override
  void initState() {
    // TODO: implement initState
    // Initstate use to initialize the state of the widget
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState((){
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff35495e), Color.fromARGB(255, 34, 46, 59)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
