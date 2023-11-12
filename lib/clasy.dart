import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Clasy extends StatefulWidget {
  static int score=0;
  final String a ,b,c,answer,question;
  final Widget q;
  const Clasy(
    {
      super.key ,
      required this.question,
      required this.a,
      required this.b,
      required this.c,
      required this.answer,
      required this.q,
    }
  );

  @override
  State<Clasy> createState() => _ClasyState();
}

class _ClasyState extends State<Clasy> {
  String rep='FAUX';
  
  Widget iconinat =const Icon(Icons.check_circle,size: 100,color: Color.fromARGB(255, 36, 194, 33),);
   Widget iconinaf =const Icon(Icons.close,size: 100,color: Color.fromARGB(255, 215, 50, 50),);
   Widget? icini;
   @override
  void initState() {
    // TODO: implement initState
    icini=iconinaf;
    rep='NON NEFA';
    super.initState();
  }
   void popup(BuildContext context,Widget wi) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(rep),
          content: icini,
          actions: [
            TextButton(
              onPressed: () {
                //Navigator.of(context).pop();
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wi),
                );
              },
              child: const Text('Next',style: TextStyle(color: Colors.black),),
            ),
          ],
        );
      },
    );
  }
  
  void comparaison(String v){
    if(widget.answer==v){
      setState(() {
          rep='SURA MINTSY';
          Clasy.score++;
          icini=iconinat;
        
      });
    }
     popup(context,widget.q);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
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
              //SizedBox(width: 30,),
              Text(
                widget.question,
                style:  GoogleFonts.bangers(
                   textStyle: const TextStyle(fontSize: 25.0),
                ),//const  TextStyle(fontSize: 19,color: Color.fromARGB(255, 250, 251, 251),fontFamily:'Bangers',fontWeight:FontWeight.bold),
              ),
            
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: ()=>comparaison(widget.a),
            child: Text(widget.a,style: const TextStyle(fontSize: 17,color: Colors.black),),
          ),
          const SizedBox(height: 25,),
          ElevatedButton(
            onPressed: ()=>comparaison(widget.b),
            child: Text(widget.b,style: const TextStyle(fontSize: 17,color: Colors.black),)
          ),
           const SizedBox(height: 25,),
          ElevatedButton(
            onPressed: ()=>comparaison(widget.c),
            child:  Text(widget.c,style: const TextStyle(fontSize: 17,color: Colors.black),)
          ),
          
        ],
      ),
    );
  }
}