import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q6.dart';
class Q5 extends StatelessWidget {
  const Q5({super.key});

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
          question: 'Inona ny fadihiny Jerry Marcos',
           a: 'soukousy',
           b: 'Kilalaka',
           c: 'Patsy Patsa',
           answer: 'Patsy Patsa',
           q: Q6(),
           ),
      ),
    );
  }
}