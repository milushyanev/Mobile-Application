import 'package:flutter/material.dart';
import 'package:flutter_app/easyLeanBodyPage.dart';
import 'package:flutter_app/intenseLeanBodyPage.dart';
import 'package:flutter_app/mediumLeanBodyPage.dart';
import 'dart:ui' as ui;
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
class LeanBodyRoute extends StatelessWidget{
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

          title: new Text( "LEAN BODY WORKOUTS",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),
        ),

        child: new Stack(

          fit: StackFit.expand,
          children: <Widget>[

            new Column(

              crossAxisAlignment: CrossAxisAlignment.center,


              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0),
                ),

                Container(
                  width: 150,
                  height: 150,
                  child: MaterialButton(
                    shape: CircleBorder(side: BorderSide(width: 2, color: Colors.black, style: BorderStyle.solid)),
                    child: Text("Easy", style: TextStyle(fontSize: 30)
                    ),
                    color: Colors.green,
                    splashColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: ()=>{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EasyLeanBodyRoute()),
                      ),

                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: MaterialButton(
                    shape: CircleBorder(side: BorderSide(width: 2, color: Colors.black, style: BorderStyle.solid)),
                    child: Text("Medium", style: TextStyle(fontSize: 30)
                    ),
                    color: Colors.orange,
                    splashColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: ()=>{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MediumLeanBodyRoute()),
                      ),

                    },
                  ),
                ),

                new Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: MaterialButton(
                    shape: CircleBorder(side: BorderSide(width: 2, color: Colors.black, style: BorderStyle.solid)),
                    child: Text("Intense", style: TextStyle(fontSize: 30)
                    ),
                    color: Colors.red,
                    splashColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: ()=>{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IntenseLeanBodyRoute()),
                      ),

                    },
                  ),
                ),

              ],),

          ],
        ),
      ),
    );
  }
}