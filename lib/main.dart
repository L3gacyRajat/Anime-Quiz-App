import 'package:anime_quiz/questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimeQuiz());
}

class AnimeQuiz extends StatefulWidget {
  const AnimeQuiz({Key? key}) : super(key: key);

  @override
  State<AnimeQuiz> createState() => _AnimeQuizState();
}

class _AnimeQuizState extends State<AnimeQuiz> {
  List<Icon> score = [];

  List<Question> questionBank = [
    Question("Naruto faces Kiba, in the Preliminary Round, in Episode 15?", false),
    Question('Does Naruto fight Gaara?', true),
    Question('Is Sakura and Ino rivals in love?', true),
    Question("Did Jiraiya teach Naruto one of his strongest jutsus?", true),
  ];

  int qno =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        questionBank[qno].questionText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {

                        setState(() {
                          qno++;
                          score.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        });
                      },
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      onPressed: () {

                        setState(() {
                          qno++;
                          score.add(
                            Icon(
                              Icons.clear,
                              color: Colors.red,
                            ),
                          );
                        });
                      },
                      child: Text(
                        'False',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: score,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
