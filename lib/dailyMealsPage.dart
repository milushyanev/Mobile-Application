import 'package:flutter/material.dart';
import 'package:flutter_app/leanBodyDietPage.dart';
import 'package:flutter_app/muscleGainDiet.dart';
import 'package:flutter_app/weightLossDiet.dart';
import 'dart:ui' as ui;

void main() {
  runApp(new MaterialApp(
    home: new MuscleGainDietRoute(),
  ));
}

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
              style: style.copyWith(color: Colors.black),
            ),
          ),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Text(data, style: style.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
class DailyMealsRoute extends StatelessWidget{
  @override



  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.7),

          title:new Text("Daily Meal Plans")
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage("assets/dailyMealPlans.jpg"),
            fit: BoxFit.cover,
            color: Colors.transparent,
            colorBlendMode: BlendMode.hue,
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
                color: Colors.grey.withOpacity(.8),
                textColor: Colors.black,

                child: new ShadowText(
                    "MUSCLE GAIN",style: Theme.of(context).textTheme.display1,),
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
                color: Colors.grey.withOpacity(.8),
                textColor: Colors.black,
                child: new ShadowText(
                    "WEIGHT LOSS",style: Theme.of(context).textTheme.display1,),
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
                color: Colors.grey.withOpacity(.8),
                textColor: Colors.black,
                child: new ShadowText(
                    "LEAN BODY",style: Theme.of(context).textTheme.display1,),
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