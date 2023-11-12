import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q3.dart';
class Q2 extends StatelessWidget {
  const Q2({super.key});

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
          question: 'inona no amidy eny analakely',
           a: 'Akanjo',
           b: 'Prix Scolaire😂',
           c: 'Finday',
           answer: 'Prix Scolaire😂',
           q: Q3(),
           ),
      ),
    );
  }
}