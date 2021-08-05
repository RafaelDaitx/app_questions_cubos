import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);

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
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 113,
                ),
                Text(
                  'Você acertou:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment
                      .baseline, //alinhar pela base do texto(é o do  Você acertou = 3/4)
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffE83B86),
                      ),
                    ),
                    Text(
                      '/$maximum',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff263238),
                      ),
                    ),
                  ],
                ),
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
                  Navigator.popUntil(
                      context,
                      (route) => route
                          .isFirst); //vai retirar todas as telas até a tela inicial
                },
                child: Text(
                  'Jogar novamente',
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
