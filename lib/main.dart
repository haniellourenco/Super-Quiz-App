import 'package:flutter/material.dart';
import 'package:projeto_quizz/question.dart';
import 'package:projeto_quizz/quiz_brain.dart';

void main() {
  runApp(const SuperQuiz());
}

class SuperQuiz extends StatefulWidget {
  const SuperQuiz({Key? key}) : super(key: key);

  @override
  State<SuperQuiz> createState() => _SuperQuizState();
}

class _SuperQuizState extends State<SuperQuiz> {
  List<Icon> score = [];

  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Super Quizz"),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quizBrain.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.green,
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      setState(() {
                        if (quizBrain.getQuestionAnswer() == true) {
                          score.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        } else {
                          score.add(
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        }
                        quizBrain.nextQuestion();
                      });
                    },
                    child: const Text(
                      "Sim",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      checkAnswer();
                    },
                    child: const Text(
                      "Não",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: score,
              )
            ],
          ),
        )),
      ),
    );
  }

  void checkAnswer() {
    return setState(() {
      if (quizBrain.getQuestionAnswer() == false) {
        score.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        score.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      quizBrain.nextQuestion();
    });
  }
}
