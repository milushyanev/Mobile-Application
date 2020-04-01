import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class IntenseWeightLossRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,

          title:new Text("WEIGHT LOSS - INTENSE MODE")
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
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "CARDIO",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20.0
                    )
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text.rich(
                  TextSpan(
                    // default text style
                    children: <TextSpan>[

                      TextSpan(text: ' Before Weight Lifting: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                      TextSpan(text: '15 Minutes of Pliability exercises for the whole body, followed with 40 minutes of cardio - preferebly on stepper machine or treadmill.', style: TextStyle(fontSize:16,color:Colors.white)),
                      TextSpan(text: ' Finish Workout with exercise for ABS (minimum 50 reps).', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 16)),

                    ],
                  ),

                ),

              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "MONDAY WEDNESDAY FRIDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20.0
                    )
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "Up to 1 Minute Rest after each Series !!!",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20.0
                    )
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BACK: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Lat Pulldowns - 4 series x 15 reps ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' CHEST: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Dumbbell Bench Press - 4 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Seated Dumbbell Overhead Press - 4 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Seated Dumbbell Lateral Raise - 4 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Cable Cross-over Reverse Fly- 4 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' LEGS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Squads- 4 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Curls- 2 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRICEPRS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Lateral Head with V Bar- 3 x 15 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "TUESDAY THURSDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20.0
                    )
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' CARDIO & PLIABILITY: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 17)),
                    TextSpan(text: 'Increase cardio to 60 minutes & Pliability for the whole body to 30 minutes ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  color: Colors.redAccent,

                  onPressed: _launchURL,
                  child: Text('YouTube Link',style: TextStyle(color: Colors.black)),
                ),
              )



            ],

          ),
        ],),

    );
  }
  _launchURL() async {
    const url = 'https://www.youtube.com/';
    if (await canLaunch( url )) {
      await launch( url );
    } else {
      throw 'Could not launch $url';
    }
  }
}