

//porta de entrada do app main

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget{
  
  var perguntasSelecionadas = 0;

 void responder (){
     perguntasSelecionadas++;  
    print(perguntasSelecionadas);
}
   
  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
 ];

 void Function() funcaoQueRetornaUmaFuncao(){
    return () {
      print('Pergunta respondida #02');
    };
  }


  
 @override //sobrescrevendo o metodo build
  Widget build(BuildContext context){
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),//precisa passar o widget para saber que é um texto
        ),
        body: Column(
          children: <Widget> [
            Text(perguntas[perguntasSelecionadas]),
            ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1'),
              ),
                ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 2'),
              ),ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3'),
              ),
           ],
        ),
      ),
     );
  }

}