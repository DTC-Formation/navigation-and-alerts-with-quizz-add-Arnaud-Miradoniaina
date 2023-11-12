import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q5.dart';
class Q4 extends StatelessWidget {
  const Q4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor:Colors.amber,
        title: const Text('Quizz'),
         actions:[
          Text('SCORE   ${Clasy.score}',style: const TextStyle(fontSize: 18),),  
          const SizedBox(width: 40,),      
        ],
      ),
      body: const Center(
        child: Clasy(
          question: 'Iza ny hiran Rim-ka & Ceasar',
           a: 'Nonoiko',
           b: 'Navadibadiko',
           c: 'Naolakolako',
           answer: 'Navadibadiko',
           q: Q5(),
           ),
      ),
    );
  }
}