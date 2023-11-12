import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q9.dart';
class Q8 extends StatelessWidget {
  const Q8({super.key});

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
          question: 'Qui a tué Ace dans One Piece',
           a: 'Aokiji',
           b: 'Akaino',
           c: 'Kizaru',
           answer: 'Akaino',
           q: Q9(),
           ),
      ),
    );
  }
}