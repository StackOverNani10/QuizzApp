import 'package:flutter/material.dart';
import 'question.dart';

class QuizzBrain extends StatefulWidget {
  @override
  State<QuizzBrain> createState() => _QuizzBrainState();
}

class _QuizzBrainState extends State<QuizzBrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 200),
              child: Text(
                "Question Here!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              /*child: ListView.builder(
                itemCount: widget.Question.length,
                itemBuilder: (BuildContext context, index) {
                  final ingredient = widget.Questions.question;
                  return Text(
                    '',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    );
                  },
              ),*/
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
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
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
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Icono respuesta',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
