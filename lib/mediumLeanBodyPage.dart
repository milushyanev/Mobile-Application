import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class MediumLeanBodyRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,

          title:new Text("LEAN BODY - MEDIUM MODE")
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
              Padding(padding: EdgeInsets.all(5.0)),
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

                      TextSpan(text: ' Before Weight Lifting: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                      TextSpan(text: '15 Minutes of Pliability exercises for the muscle groups stated in current day, followed with 30 minutes of cardio - preferebly on stepper machine or treadmill.', style: TextStyle(fontSize:16,color:Colors.white)),
                      TextSpan(text: ' Finish Workout with exercise for ABS (minimum 75 reps).', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),

                    ],
                  ),

                ),

              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "Up to 1 Minute Rest after each Series !!!",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 18.0
                    )
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "MONDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 16.0
                    )
                ),
              ),
              //Padding(padding: EdgeInsets.all(5.0)),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BACK: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Lat Pulldowns,Bent-Over Barbell Rows,Seated Cable Rows - 12,12,10,10 (each) ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Cable Cross-over Reverse Fly- 3 x 12 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Curls,Cable Rope Hammer Curl- 3 x 12 (each) ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "TUESDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 16.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' CHEST: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Straight Bar Bench Press,Dumbbell Bench Press,Bent Forward Cable crossover - 12,12,12,10 (each) ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Seated Dumbbell Overhead Press -15,15,12', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRICEPRS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Lateral Head with V Bar- 15,12,12 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "WEDNESDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 16.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' LEGS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Squads, Leg Press, Walking Lunge, Single Leg Curl(back quad), Glute Hamstrings Raise- 12,12,12,10', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRAPEZIUS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Shrugs, Upright Rows -12,12,10 ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "THURSDAY FRIDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 16.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' CARDIO & PLIABILITY: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 15)),
                    TextSpan(text: 'Increase cardio for 45 minutes & Pliability for the whole body to 30 minutes ', style: TextStyle(fontSize:16,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
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


