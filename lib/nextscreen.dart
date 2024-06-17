import 'package:flutter/material.dart';
import 'package:newone1/search.dart';

class NextScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person_2,color: Colors.white,),
          
          )
        ],
        leading: IconButton(onPressed: (){
     
        }, icon: Icon( Icons.arrow_back_ios_rounded,color: Colors.black,)),
        title: Text("Search Product"),
        centerTitle: true,
      ),
     body:MyApp() ,
   );
  }

}