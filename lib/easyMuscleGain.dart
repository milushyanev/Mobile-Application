import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class EasyMuscleGainRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,

          title:new Text("MUSCLE GAIN - EASY MODE")
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
              Padding(padding: EdgeInsets.all(2.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "CARDIO",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 14.0
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
                      TextSpan(text: '15 Minutes of Pliability exercises for the muscle groups stated in current day, followed with 30 minutes of cardio - preferebly on stepper machine or treadmill.', style: TextStyle(fontSize:14,color:Colors.white)),
                      TextSpan(text: ' Finish Workout with exercise for ABS (minimum 50 reps) & Pliability for current muscle groups used for 10-15 min.', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),

                    ],
                  ),

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
                        fontSize: 14.0
                    )
                ),
              ),
              //Padding(padding: EdgeInsets.all(5.0)),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BACK: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Lat Pulldowns,Bent-Over Barbell Rows,Seated Cable Rows -12,10,8,6 (each) ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Cable Cross-over Reverse Fly- 12,10,8 ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Curls- 12,12,10,8 ', style: TextStyle(fontSize:14,color:Colors.white)),

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
                        fontSize: 14.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' CHEST: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Straight Bar Bench Press,Dumbbell Bench Press,Bent Forward Cable crossover -12,10,8,6 (each) ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Seated Dumbbell Overhead Press - 15,12,12,10 ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRICEPRS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Lateral Head with V Bar-12,12,10 ', style: TextStyle(fontSize:14,color:Colors.white)),

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
                        fontSize: 14.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' LEGS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Squads, Leg Press, Walking Lunge, Single Leg Curl(back), Glute Hamstrings Raise-12,10,8,6(each) ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRAPEZIUS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Shrugs, Upright Rows -12,10,8 (each) ', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "THURSDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 14.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' SHOULDERS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Seated Dumbbell Lateral Raise, Behind Head Push Press, Seated Dumbbell Overhead Press, Cable Cross-over Reverse Fly - 12,12,10,8 (each)', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                alignment: Alignment.center,
                child: Text(
                    "FRIDAY",
                    style: new TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 14.0
                    )
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' BICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Standing Barbell Curls, Curls, Cable Rope Hammer Curl- 12,12,10 (each)', style: TextStyle(fontSize:14,color:Colors.white)),

                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  // default text style
                  children: <TextSpan>[

                    TextSpan(text: ' TRICEPS: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.redAccent,fontSize: 14)),
                    TextSpan(text: 'Lying Triceps Extensions, Triceps Dips, Lateral Head with V Bar, One-Arm Overhead Extensions - 12,12,10,8 (each)', style: TextStyle(fontSize:14,color:Colors.white)),

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
