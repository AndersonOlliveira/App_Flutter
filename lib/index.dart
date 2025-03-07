// import 'package:flutter/cupertino.dart';
 

 class Produto{
    String? nome;
    double? preco;
    Produto(this.nome, this.preco);

 }
 //para náo retornar nada da funcao 
//  void soma(int a, int b){
//    print(a+b);
//  }

main(){
//  final r = 2 + 2;
//  print('o valor somando e : ${soma(2,3)}');

 var p1 = Produto('caderno', 4.00);	
//  p1.nome = 'Lapis';
//  p1.preco = 4.00;

 print('O produto é ${p1.nome} e custa ${p1.preco}');
}