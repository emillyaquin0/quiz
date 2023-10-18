import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  // const Homepage({ Key key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Quiz') ),
          ) ,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/imagen/White and Black Aesthetic Vintage Y2K Streetwear Logo.pgn'),
                ElevatedButton(
                  onPressed: () {
                    print('pressionado');
                  },
                   child: Text('Jogar', style: TextStyle(fontSize: 50)),
                   style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                   ),
                ),
              ],
            )
          ),
        )
      );
    }
    
  }