import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz/clasy.dart';
class Fin extends StatelessWidget {
  const Fin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
        width: 300,
        height: 420,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('images/quizz.png'),
                fit: BoxFit.cover, 
             ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
              ),
            ],
        ),
        margin: const EdgeInsets.all(8),
        child: 
        Column(
          children: [
            const SizedBox(height: 40,),
            Text(
              'Félicitation',
              style:  GoogleFonts.bangers(
              textStyle: const TextStyle(fontSize: 40.0),
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Vous avez eu :'),
            const SizedBox(height: 30,),  
            Text('${Clasy.score}/10',style:const TextStyle(fontSize: 70),),   
            
          ],
        ),
          ),
      ) ,
    );
  }
}