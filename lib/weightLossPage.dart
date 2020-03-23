import 'package:flutter/material.dart';
import 'package:flutter_app/easyWeightLossPage.dart';
import 'package:flutter_app/intenseWeightLossPage.dart';
import 'package:flutter_app/mediumWeightLossPage.dart';
class WeightLossRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,

          title:new Text("WEIGHT LOSS WORKOUTS")
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
                    "EASY"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EasyWeightLossRoute()),
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
                    "MEDIUM"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MediumWeightLossRoute()),
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
                    "INTENSE"),
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntenseWeightLossRoute()),
                  ),

                },
              ),

            ],),

        ],
      ),
    );
  }
}