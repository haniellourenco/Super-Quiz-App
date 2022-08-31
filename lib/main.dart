import 'package:flutter/material.dart';

void main() {
  runApp(const SuperQuiz());
}

class SuperQuiz extends StatefulWidget {
  const SuperQuiz({Key? key}) : super(key: key);

  @override
  State<SuperQuiz> createState() => _SuperQuizState();
}

class _SuperQuizState extends State<SuperQuiz> {
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
              const Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Aqui vem a pergunta.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text(
                      "Não",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
