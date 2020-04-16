import 'package:flutter/material.dart';
import 'package:flutter_app/leanBodyPage.dart';
import 'package:flutter_app/muscleGain.dart';
import 'package:flutter_app/weightLossPage.dart';
import 'dart:ui' as ui;

void main() {
  runApp(new MaterialApp(
    home: new WorkoutRoute(),
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
              style: style.copyWith(color: Colors.black,fontStyle: FontStyle.italic),
            ),
          ),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Text(data, style: style.copyWith(color: Colors.white,fontStyle: FontStyle.italic)),
          ),
        ],
      ),
    );
  }
}
class WorkoutRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.7),

          title:new Text("Workouts")
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage("assets/workoutPage.jpg"),
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.8),
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
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),

              child: new ShadowText(
                "MUSCLE GAIN",style: Theme.of(context).textTheme.display1,),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MuscleGainRoute()),
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
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),

              child: new ShadowText(
                "WEIGHT LOSS",style: Theme.of(context).textTheme.display1,),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeightLossRoute()),
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
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),

              child: new ShadowText(
                "LEAN BODY",style: Theme.of(context).textTheme.display1,),
              onPressed: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeanBodyRoute()),
                ),

              },
            ),
          ],),

        ],
      ),
    );
  }
}