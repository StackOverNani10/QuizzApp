import 'package:flutter/material.dart';
import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzBrain extends StatefulWidget {
  @override
  State<QuizzBrain> createState() => _QuizzBrainState();
}

class _QuizzBrainState extends State<QuizzBrain> {
  Key key = UniqueKey();

  void restartQuizz(){
    setState(() {
      key = UniqueKey();
    });
  }

  List<Icon> scoreIcons = [];
  int correctAnswer = 0;
  int questionIndex = 1;

  void checkAnswer(bool theAnswer) {
    bool optionSelected = listQuestion[questionIndex].answer;
    setState(() {
      if (theAnswer == optionSelected) {
        scoreIcons.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        correctAnswer++;
      } else {
        scoreIcons.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      if (questionIndex < listQuestion.length - 1) {
        questionIndex++;
      } else {
        Alert(
            context: context,
            title: "Quizz Score",
            desc: "Tu puntuacion es $correctAnswer de ${listQuestion.length}",
            buttons: [
              DialogButton(
                child: Text(
                  'Volver a Inicio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
              )
            ]).show();
        questionIndex = 1;
        correctAnswer = 0;
        scoreIcons.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                'Pregunta ${questionIndex} de ${listQuestion.length}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 200, 15, 100),
              child: Text(
                listQuestion[questionIndex].question,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text(
                  "Verdadero",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  checkAnswer(true);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text(
                  "Falso",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
            Row(
              children: scoreIcons,
            )
          ],
        ),
      ),
    );
  }
}
