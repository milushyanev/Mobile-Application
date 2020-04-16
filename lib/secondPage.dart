import 'package:flutter/material.dart';
import 'package:flutter_app/easyMuscleGain.dart';
import 'package:flutter_app/hydratitionPage.dart';
import 'package:flutter_app/easyLeanBodyPage.dart';
import 'package:flutter_app/intenseLeanBodyPage.dart';
import 'package:flutter_app/mediumLeanBodyPage.dart';
import 'package:flutter_app/easyWeightLossPage.dart';
import 'package:flutter_app/intenseWeightLossPage.dart';
import 'package:flutter_app/mediumWeightLossPage.dart';
import 'package:flutter_app/leanBodyDietPage.dart';
import 'package:flutter_app/muscleGainDiet.dart';
import 'package:flutter_app/weightLossDiet.dart';
import 'profilePage.dart';
import 'resourcesPage.dart';
import 'secondPage.dart';
import 'workoutsPage.dart';
import 'package:flutter_app/intenseMuscleGain.dart';
import 'package:flutter_app/mediumMuscleGain.dart';
import 'dart:ui' as ui;

void main() => runApp(SecondRoute());

class ShadowText extends StatelessWidget {
  ShadowText(this.data, { this.style }) : assert(data != null);

  final String data;
  final TextStyle style;

  Widget build(BuildContext context) {
    return new ClipRect(
      child: new Stack(
        children: [
          new Positioned(
            top: 2.0,
            left: 2.0,
            child: new Text(
              data,
              style: style.copyWith(color: Colors.white,fontStyle: FontStyle.italic),
            ),
          ),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Text(data, style: style.copyWith(color: Colors.black,fontStyle: FontStyle.italic)),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SecondRoute extends StatelessWidget{
  Color gradientStart = Colors.grey; //Change start gradient color here
  Color gradientEnd = Colors.black;
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),

          title: new Text( "Welcome to Modern Fitness Life",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
      ),
      body:
      Container(
        decoration: new BoxDecoration(
          color: Colors.black.withOpacity(.8),
        ),
        child: new Stack(

          fit: StackFit.expand,
          children: <Widget>[
            ListView(
              children: <Widget>[
                new Column(

                  crossAxisAlignment: CrossAxisAlignment.center,


                  children: <Widget>[

                    Card(
                      color:Colors.white.withOpacity(.9),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          Container(

                            child: const ListTile(

                              leading: Icon(Icons.fitness_center),
                              title: Text('MUSCLE GAIN WORKOUTS'),
                              subtitle: Text('"No Pain, No Gain."'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('EASY'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EasyMuscleGainRoute()),
                                  ),

                                },
                              ),
                              FlatButton(
                                child: const Text('MEDIUM'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MediumMuscleGainRoute()),
                                  ),
                                },
                              ),
                              FlatButton(
                                child: const Text('INTENSE'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => IntenseMuscleGainRoute()),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color:Colors.white.withOpacity(.9),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          Container(

                            child: const ListTile(

                              leading: Icon(Icons.fitness_center),
                              title: Text('LEAN BODY WORKOUTS'),
                              subtitle: Text('"Float like a butterfly, sting like a bee."'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('EASY'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EasyLeanBodyLossRoute()),
                                  ),

                                },
                              ),
                              FlatButton(
                                child: const Text('MEDIUM'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MediumLeanBodyRoute()),
                                  ),
                                },
                              ),
                              FlatButton(
                                child: const Text('INTENSE'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => IntenseLeanBodyRoute()),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color:Colors.white.withOpacity(.9),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          Container(

                            child: const ListTile(

                              leading: Icon(Icons.fitness_center),
                              title: Text('WEIGHT LOSS WORKOUTS'),
                              subtitle: Text('"If you have discipline, drive, and determination … nothing is impossible."'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('EASY'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EasyWeightLossRoute()),
                                  ),

                                },
                              ),
                              FlatButton(
                                child: const Text('MEDIUM'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MediumWeightLossRoute()),
                                  ),
                                },
                              ),
                              FlatButton(
                                child: const Text('INTENSE'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => IntenseWeightLossRoute()),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color:Colors.white.withOpacity(.9),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          Container(

                            child: const ListTile(

                              leading: Icon(Icons.fastfood),
                              title: Text('DAILY MEAL PLANS'),
                              subtitle: Text('There are 3 choices from easy to intense.'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('MUSCLE GAIN'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MuscleGainDietRoute()),
                                  ),

                                },
                              ),
                              FlatButton(
                                child: const Text('LEAN BODY'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LeanBodyDietRoute()),
                                  ),
                                },
                              ),
                              FlatButton(
                                child: const Text('WEIGHT LOSS'),
                                onPressed: () =>{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => WeightLossDietRoute()),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],),



              ],
            ),

          ],
        ),
      ),


      endDrawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          color:Colors.grey,
          child: ListView(


            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height:100,
                child: DrawerHeader(
                  child: Text( "MENU",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) ),
                  decoration: BoxDecoration(
                    color:Colors.black.withOpacity(.8),
                  ),
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.local_drink),
                  title: Text('HYDRATION'),
                  subtitle: Text('Go to see proper Hydration Info'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HydratitionRoute()),
                    ),},
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('PROFILE'),
                  subtitle: Text('Go to the profile page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileRoute()),
                    ),},
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.thumb_up),
                  title: Text('PROGRESS PAGE'),
                  subtitle: Text('Go to the progress page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorkoutRoute()),
                    ),},
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text('RESOURSES PAGE'),
                  subtitle: Text('Go to the resourse page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResourcesRoute()),
                    ),},
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}