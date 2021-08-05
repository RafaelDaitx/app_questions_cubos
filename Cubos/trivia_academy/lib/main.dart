import 'package:flutter/material.dart';
import 'package:trivia_academy/initial_screen.dart';

void main() {
  runApp(Trivia()); //para abrir a aplicação
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//vai construir o material app
        home: InitialScreen(),
      );
  }
}
