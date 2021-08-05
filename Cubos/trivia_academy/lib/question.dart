class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer); //inicialidor

  static List<Question> getQuestionList() {
    //isso é um método
    List<Question> questions = [];


//index 0
    questions.add(Question(
      //String's
      'O que é Flutter', //questionText
      'Um novo Smartphone', //option1
      'Um sistema operacional', //option2
      'Um SDK de desenvolvimento multiplataforma', //option3
      'Uma linguagem de programação', //option4
      3, //answer
    ));


//index 1
    questions.add(
      Question(
        'Qual linguagem de programação é usada pelo Flutter?',
        'Dart',
        'Java',
        'JavaScript',
        'Go',
        1,
      ),
    );

    return questions;
  }
}
