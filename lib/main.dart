import 'package:flutter/material.dart';

void main() {
  runApp(AnimeQuiz());
}

class AnimeQuiz extends StatefulWidget {
  const AnimeQuiz({Key? key}) : super(key: key);

  @override
  State<AnimeQuiz> createState() => _AnimeQuizState();
}

class _AnimeQuizState extends State<AnimeQuiz> {
  List<Icon> Score = [];

  List<String> Question = [
    'Did Jiraiya teach Naruto one of his strongest jutsus?',
    'Naruto faces Kiba, in the Preliminary Round, in Episode 15?',
    'Does Naruto fight Gaara?',
    'Is Sakura and Ino rivals in love?',
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
                        Question[qno],
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
                          Score.add(
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
                          Score.add(
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
                  children: Score,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
