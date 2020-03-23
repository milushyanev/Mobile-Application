import 'package:flutter/material.dart';
import 'package:flutter_app/leanBodyDietPage.dart';
import 'package:flutter_app/muscleGainDiet.dart';
import 'package:flutter_app/weightLossDiet.dart';

class DailyMealsRoute extends StatelessWidget{
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
                    MaterialPageRoute(builder: (context) => MuscleGainDietRoute()),
                  ),

                },
              ),
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
                    "WEIGHT LOSS"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeightLossDietRoute()),
                  ),

                },
              ),
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
                    "LEAN BODY"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeanBodyDietRoute()),
                  ),

                },
              ),
            ],),

        ],
      ),
    );
  }
}