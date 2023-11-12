import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q8.dart';
class Q7 extends StatelessWidget {
  const Q7({super.key});

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
          question: 'Qui a mangé le fruit du Gum gum',
           a: 'Luffy',
           b: 'Shanks',
           c: 'Zorro',
           answer: 'Luffy',
           q: Q8(),
           ),
      ),
    );
  }
}