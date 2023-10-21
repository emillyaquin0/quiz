import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  final int pontuacao;
  final int totalPerguntas;
  final Function resetQuiz;

  ResultScreen(this.pontuacao, this.totalPerguntas, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resultado do Quiz'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Você acertou $pontuacao de $totalPerguntas perguntas!',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  resetQuiz();
                  Navigator.pop(context); 
                },
                child: Text('Reiniciar Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
