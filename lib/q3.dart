import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q4.dart';
class Q3 extends StatelessWidget {
  const Q3({super.key});

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
          question: 'Rahoviana ny fifidianana',
           a: '16 Novembre',
           b: '20 Novembre',
           c: '12 Décembre',
           answer: '16 Novembre',
           q: Q4(),
           ),
      ),
    );
  }
}