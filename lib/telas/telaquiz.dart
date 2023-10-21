import 'package:flutter/material.dart';
import 'resultados.dart';


void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaAtual = 0;
  int pontuacao = 0;

  List<Map<String, dynamic>> quiz = [
    {
      "pergunta": "Qual é o nome científico do gato doméstico?",
      "opcoes": ["Felis catus", "Panthera leo", "Canis lupus", "Lynx pardinus"],
      "resposta": "Felis catus"
    },
    { "pergunta":"Qual é a expectativa de vida média de um gato doméstico?",
      "opcoes": ["12-18 anos", "5-8 anos", "25-30 anos", "1-2 anos"],
      "resposta": "12-18 anos"
    },
    {
      "pergunta":"Quantos bigodes, em média, um gato doméstico adulto tem?",
      "opcoes": ["24", "16", "10", "8"],
      "resposta": "24"
    },
    {
      "pergunta":"Qual é a raça de gato mais popular no mundo?",
      "opcoes": ["Siamês", "Persa", "Bengal", "Sphynx"],
      "resposta": "Siamês"
    },
    {
      "pergunta":"Os gatos têm uma glândula especial que produz um odor único. Onde está localizada?",
      "opcoes": ["Na orelha", "Na pata", "No rabo", "Na boca"],
      "resposta": "Na orelha"
    },
    {
      "pergunta":"Qual é o comportamento comum dos gatos quando estão se sentindo confortáveis e seguros?",
      "opcoes": ["Ronronar", "Latir", "Miado alto", "Morder"],
      "resposta": "Ronronar"
    },
    {
      "pergunta":"Qual é o nome do famoso gato da raça Maine Coon que entrou para o Guinness como o gato mais longo do mundo?",
      "opcoes": ["Whiskers", "Fluffy", "Stewie", "Max"],
      "resposta": "Stewie"
    },
    {
      "pergunta":"Quantas cores básicas de pelos os gatos podem ter?",
      "opcoes": ["2", "3", "4", "5"],
      "resposta": "3"
    },
    {
      "pergunta":"O que significa quando um gato lambe seu tutor?",
      "opcoes": ["Aprovação", "Carinho", "Sinal de fome", "Marcação de território"],
      "resposta": "Carinho"
    },
    {
      "pergunta":"Qual é a origem da raça de gato Scottish Fold?",
      "opcoes": ["Escócia", "Egito", "Japão", "Rússia"],
      "resposta": "Escócia"
    },
    {
      "pergunta":"Qual é o nome da lenda japonesa sobre um gato com a pata levantada?",
      "opcoes": ["Maneki-neko", "Totoro", "Nyan Cat", "Hello Kitty"],
      "resposta": "Maneki-neko"
    },

  ];

  void responder(String respostaSelecionada) {
    if (respostaSelecionada == quiz[perguntaAtual]["resposta"]) {
      pontuacao++;
    }

    setState(() {
      perguntaAtual++;
    });

    if (perguntaAtual >= quiz.length) {

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(pontuacao, quiz.length, resetQuiz),
        ),
      );
    }
  }

  void resetQuiz() {
    setState(() {
      perguntaAtual = 0;
      pontuacao = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz sobre Gatos') ),
        ) ,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple[200]!, Colors.purple[700]!],
            ),
          ),
          child: Center(
            child: Column(   
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Pergunta ${perguntaAtual + 1} de ${quiz.length}'),

                Text(
                  quiz[perguntaAtual]['pergunta'],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                ...((quiz[perguntaAtual]['opcoes'] as List<String>).map((opcao) {
                  return ElevatedButton(
                    onPressed: () {
                      responder(opcao);
                    },
                    child: Text(
                      opcao,
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[700]!,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  );
                })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
