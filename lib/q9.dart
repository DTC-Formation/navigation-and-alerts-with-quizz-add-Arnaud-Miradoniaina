import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/fin.dart';
class Q9 extends StatelessWidget {
  const Q9({super.key});

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
          question: 'Alavao ny DTC',
           a: 'Datoa Tia Coka',
           b: 'Dezy Tia Chocolat',
           c: 'Digital Training center',
           answer: 'Digital Training center',
           q: Fin(),
           ),
      ),
    );
  }
}