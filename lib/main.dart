import 'package:flutter/material.dart';
import 'package:quizz/clasy.dart';
import 'package:quizz/q1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 



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
          question: 'Iza ny ho lany filoha',
          a: 'Andry Rajoelina', 
          b: 'Siteny Randrianasoloniaiko',
          c: 'Tahiana Razafinjoelina', 
          answer: 'Tahiana Razafinjoelina',
          q: Q1(),
          ),
       
       
      ),
     
    );
  }
}
