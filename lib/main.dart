
import 'package:flutter/material.dart';

  void main() {
    runApp(Quiz());
    }

class Quiz extends StatefulWidget {
  Quiz({ key}) : super(key:key);

  @override
  _QuizState createState() => _QuizState();
}

 class _QuizState extends State<Quiz> {
  

  @override
  Widget build(BuildContext){
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Quiz') ),
          ) ,
          body: Center(
            child: Column(   
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Pergunta 1 de 10'),
                Text('Pergunta', style: TextStyle(fontSize: 20)),
                
                
                ElevatedButton(
                  onPressed: () {
                    print('pressionado');
                  },
                   child: Text('pergunta 1', style: TextStyle(fontSize: 20)),
                   style: ElevatedButton.styleFrom(
                   primary: Color.fromRGBO(112, 28, 112, 1), 
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                )),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado');
                  },
                   child: Text('resposta 2', style: TextStyle(fontSize: 20)),
                   style: ElevatedButton.styleFrom(
                   primary: Color.fromRGBO(112, 28, 112, 1), 
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                )),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado');
                  },
                   child: Text('resposta 3', style: TextStyle(fontSize: 20)),
                   style: ElevatedButton.styleFrom(
                   primary: Color.fromRGBO(112, 28, 112, 1), 
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                )),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado');
                  },
                   child: Text('resposta 4', style: TextStyle(fontSize: 20)),
                   style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(112, 28, 112, 1), 
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                )),
              ],
            )
          ),
        )
      );
    }
}