import 'package:flutter/material.dart';
import 'package:flutter_app/dailyMealsPage.dart';
import 'package:flutter_app/hydratitionPage.dart';
import 'package:flutter_app/profilePage.dart';
import 'package:flutter_app/progressPage.dart';
import 'package:flutter_app/resourcesPage.dart';
import 'package:flutter_app/workoutsPage.dart';


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,

        title:new Text("Welcome to Pliability")
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
            crossAxisAlignment: CrossAxisAlignment.start,


            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(
                    top: 70.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 200.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Profile"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileRoute()),
                  ),

                },
              ),
              new Padding(
                padding: const EdgeInsets.only(left:30,
                    top: 20.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 200.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Workouts"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkoutRoute()),
                  ),

                },
              ),
              new Padding(
                padding: const EdgeInsets.only(left:30,
                    top: 20.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 500.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Resources"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResourcesRoute()),
                  ),

                },
              ),
              new Padding(
                padding: const EdgeInsets.only(left:30,
                    top: 20.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 500.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Hydration"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HydratitionRoute()),
                  ),

                },
              ),
            ],
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.end,



            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(left:30,
                    top: 70.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 200.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Progress"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProgressRoute()),
                  ),

                },
              ),
              new Padding(
                padding: const EdgeInsets.only(left:30,
                    top: 20.0),
              ),

              new MaterialButton(

                height: 100.0,
                minWidth: 200.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text(
                    "Daily Meal Plans"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DailyMealsRoute()),
                  ),

                },
              ),
            ],
          ),

        ],
      ),
    );
  }

}