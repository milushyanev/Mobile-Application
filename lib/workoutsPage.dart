import 'package:flutter/material.dart';
import 'package:flutter_app/customWorkoutPage.dart';
import 'package:flutter_app/leanBodyPage.dart';
import 'package:flutter_app/muscleGain.dart';
import 'package:flutter_app/weightLossPage.dart';
class WorkoutRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,

          title:new Text("Workouts")
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
          new Column(
          crossAxisAlignment: CrossAxisAlignment.center,


          children: <Widget>[
          new Padding(
          padding: const EdgeInsets.only(
          top: 70.0),
          ),

          new MaterialButton(

          height: 100.0,
          minWidth: 300.0,
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text(
          "MUSCLE GAIN"),
          onPressed: ()=>{
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MuscleGainRoute()),
          ),

          },
          ),
            new Padding(
              padding: const EdgeInsets.only(
                  top: 30.0),
            ),

            new MaterialButton(

              height: 100.0,
              minWidth: 300.0,
              color: Colors.teal,
              textColor: Colors.white,
              child: new Text(
                  "WEIGHT LOSS"),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeightLossRoute()),
                ),

              },
            ),
            new Padding(
              padding: const EdgeInsets.only(
                  top: 30.0),
            ),

            new MaterialButton(

              height: 100.0,
              minWidth: 300.0,
              color: Colors.teal,
              textColor: Colors.white,
              child: new Text(
                  "LEAN BODY"),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeanBodyRoute()),
                ),

              },
            ),
            new Padding(
              padding: const EdgeInsets.only(
                  top: 30.0),
            ),

            new MaterialButton(

              height: 100.0,
              minWidth: 300.0,
              color: Colors.teal,
              textColor: Colors.white,
              child: new Text(
                  "CUSTOM"),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomMuscleGainRoute()),
                ),

              },
            ),
          ],),

        ],
      ),
    );
  }
}