class Question {
  late String questionText;
  late bool questionAnswer;

  Question({String? q, bool? a}) {
    questionText = q!;
    questionAnswer = a!;
  }
}
// class Question {
//   final String questionText;
//   final bool questionAnswer;

//   Question({required this.questionText, required this.questionAnswer});
// }