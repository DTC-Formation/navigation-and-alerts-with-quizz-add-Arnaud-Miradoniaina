import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q7.dart';
class Q6 extends StatelessWidget {
  const Q6({super.key});

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
          question: 'Iza ny candidat numero 3',
           a: 'Ravalomanana',
           b: 'Andry Rajoelina',
           c: 'Siteny',
           answer: 'Andry Rajoelina',
           q: Q7(),
           ),
      ),
    );
  }
}