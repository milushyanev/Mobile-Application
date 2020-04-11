import 'package:flutter/material.dart';
class EasyLeanBodyDietRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,

          title:new Text("LEAN BODY - EASY")
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage("assets/plogo.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
            children: [
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Lying Triceps Extensions, Triceps Dips, Lateral Head with V Bar, One-Arm Overhead Extensions - 12,10,10,8,6 (each)', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
            ],
          ),
        ],),

    );
  }
}