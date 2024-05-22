import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quizzler(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Quizzler extends StatefulWidget {
  const Quizzler({
    super.key,
  });

  @override
  State<Quizzler> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Quizzler'),
        backgroundColor: Colors.cyan,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // void nextQuestion() {
  //   setState(() {
  //     if (questionNumber < questionBank .length - 1) {
  //       questionNumber++;
  //     } else {
  //       questionNumber = 0;
  //     }
  //   });
  // }

  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs',
  //   'Approximately one quarter of human bones are in the feet ',
  //   'A slug\'s blood is green'
  // ];
  int questionNumber = 0;
  // List<bool> answers = [
  //   false,
  //   true,
  //   true,
  // ];

  // List<Question> questionBank = [
  //    Question q1 = Question(q:'You can lead a cow down stairs but not up stairs',a: false),
  // Question q2 = Question(q:'Approximately one quarter of human bones are in the feet ',a: true ),
  // Question q3 = Question(q: 'A slug\'s blood is green',a: true);
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionNumber].questionText,
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
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionNumber].questionAnswer;

                if (correctAnswer == true) {
                } else {}
                questionNumber++;
              },
              child: const Text(
                'TRUE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionNumber].questionAnswer;

                if (correctAnswer == true) {
                } else {}
                questionNumber++;
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'FALSE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
