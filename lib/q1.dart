import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q2.dart';

class Q1 extends StatefulWidget {
  const Q1({super.key});

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          question: 'IZA NO PAN',
           a: 'Tabera',
           b: 'Jean Josef Rabearivelo',
           c: 'Christine Razanamahasoa',
           answer: 'Christine Razanamahasoa',
           q: Q2(),
           ),
      ),
    );
  }
}