import 'package:flutter/material.dart';
import 'package:trivia_academy/question.dart';
import 'package:trivia_academy/score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionsList = Question.getQuestionList();

  void verifyResponse() {
    if (answer == questionsList[index].answer) {
      //se a resposta for igual ao
      //ao que está na answer da lista, que é o 3 (question.dart)
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            false, //para retirar o botão de faltar, ele lê que há outra tela e coloca o botão de voltar...com false tu seta que não há como voltar e retira a seta
        backgroundColor: Color(0xff374952),
        centerTitle: true, //cor do backgroundo da segunda tela após começar
        title: Image(
          image: AssetImage('lib/assets/icones.png'),
        ),
      ), //AppBar é o cabeçalho, tipo o header
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                32, 56, 32, 0), //margin laterais da caixa de texto da pergunta
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pergunta 1:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  questionsList[index].questionText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), //borda arredondada para a caixa de resposta
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius:
                            2, //o tanto que ela se espalha pela caixa, o tamanho da borda da sombra
                        blurRadius: 3, //suavização da borda
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value:
                        1, //esse é o valor que se´ra comparado a variavel answer para ver se está certo a resposta
                    groupValue:
                        answer, //groupValue é sobre qual variável vai guardar o value caso seja marcado
                    title: Text(questionsList[index].option1),
                    onChanged: (int value) {
                      //quando ele for clicado, vai passar o valor para o answer
                      setState(() {
                        answer =
                            value; //e armazenar nessa variavel answer o value que representa a resposta
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), //borda arredondada para a caixa de resposta
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius:
                            2, //o tanto que ela se espalha pela caixa, o tamanho da borda da sombra
                        blurRadius: 3, //suavização da borda
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value:
                        2, //esse é o valor que se´ra comparado a variavel answer para ver se está certo a resposta
                    groupValue:
                        answer, //groupValue é sobre qual variável vai guardar o value caso seja marcado
                    title: Text(questionsList[index].option2),
                    onChanged: (int value) {
                      //quando ele for clicado, vai passar o valor para o answer
                      setState(() {
                        answer =
                            value; //e armazenar nessa variavel answer o value que representa a resposta
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), //borda arredondada para a caixa de resposta
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius:
                            4, //o tanto que ela se espalha pela caixa, o tamanho da borda da sombra
                        blurRadius: 3, //suavização da borda
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value:
                        3, //esse é o valor que se´ra comparado a variavel answer para ver se está certo a resposta
                    groupValue:
                        answer, //groupValue é sobre qual variável vai guardar o value caso seja marcado
                    title: Text(questionsList[index].option3),
                    onChanged: (int value) {
                      //quando ele for clicado, vai passar o valor para o answer
                      setState(() {
                        answer =
                            value; //e armazenar nessa variavel answer o value que representa a resposta
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), //borda arredondada para a caixa de resposta
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius:
                            2, //o tanto que ela se espalha pela caixa, o tamanho da borda da sombra
                        blurRadius: 3, //suavização da borda
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value:
                        4, //esse é o valor que se´ra comparado a variavel answer para ver se está certo a resposta
                    groupValue:
                        answer, //groupValue é sobre qual variável vai guardar o value caso seja marcado
                    title: Text(questionsList[index].option4),
                    onChanged: (int value) {
                      //quando ele for clicado, vai passar o valor para o answer
                      setState(() {
                        answer =
                            value; //e armazenar nessa variavel answer o value que representa a resposta
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                //botao responder
                onPressed: () {
                  verifyResponse(); //verifica resposta
                  //ver se é a última pergunta da lista
                  if (index < questionsList.length - 1) {
                    setState(() {
                      //para poder atualziar a página e passar a pertgunta
                      index = index + 1; //fazer passar para a próxima pergunta
                      //soma mais um index e pega o index 1 da question.dart
                      answer = 0; //para desmacar na próxima pergunta
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                                maximum: questionsList.length,
                                result: score,
                              )),
                    );
                  }
                },
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 16),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0xffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
