import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new EasyLeanBodyLossRoute(),
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
              style: style.copyWith(color: Colors.red,fontStyle: FontStyle.italic),
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
class EasyLeanBodyLossRoute extends StatefulWidget {
  EasyLeanBodyLossRoute();

  @override
  _EasyLeanBodyLossRoute createState() => _EasyLeanBodyLossRoute( );
}
class _EasyLeanBodyLossRoute extends State<EasyLeanBodyLossRoute> {

  bool showMonday = false;
  bool showTuesday=false;
  bool showWednesday=false;
  bool showThursday=false;
  bool showFriday=false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),
          title: new Text( "EASY LEAN BODY WORKOUT",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic) )
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: AssetImage( "assets/leanBodyWorkout.jpg" ),
            fit: BoxFit.cover,
            color: Colors.transparent,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
            children: [
              Padding( padding: EdgeInsets.all( 5 ) ),
              Container(
                color: Colors.black.withOpacity(.8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text.rich(
                    TextSpan(
                      // default text style
                      children: <TextSpan>[
                        TextSpan(text: ' Before Weight Lifting: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 20)),
                        TextSpan(text: '15 Minutes of Pliability exercises for the muscle groups stated in current day, followed with 40 minutes of cardio - preferebly on stepper machine or treadmill.', style: TextStyle(fontSize:20,color:Colors.white)),
                        TextSpan(text: ' Finish Workout with exercise for ABS (minimum 50 reps).', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 7.5 ) ),
              Container(
                color: Colors.black.withOpacity(.8),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      // default text style
                      children: <TextSpan>[
                        TextSpan(text: ' Up to 1 Minute Rest after each Series !!! ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 22)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.black.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() => showMonday=!showMonday);
                    },
                    child: new ShadowText(
                      "MONDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showMonday ?
              Container(
                color: Colors.black.withOpacity(.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "CHEST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Flat bench barbell press (4 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell press (4 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell flyes (3 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Push-ups (4 sets, 20 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Cable crossovers (3 sets, 15 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.red,
                          onPressed: _launchURL,
                          child: Text('YouTube Link',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18)),
                        ),
                      ],
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                  ],
                ),
              )
                  :
              Row(),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.black.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() => showTuesday=!showTuesday);
                    },
                    child: ShadowText(
                      "TUESDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showTuesday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SHOULDERS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Shoulder press (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Military press (4 sets, 10-12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Deltoid flyes (3 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Upright rows (4 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell front raises (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Lateral raises (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.red,
                          onPressed: _launchURL,
                          child: Text('YouTube Link',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18)),
                        ),

                      ],
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                  ],
                ),
              )
                  :
              Row(),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.black.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() => showWednesday=!showWednesday);
                    },
                    child: ShadowText(
                      "WEDNESDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showWednesday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LEGS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Barbell squats (4 sets, 8-10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Leg press (3 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Leg extensions (3 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Calf raises (3 sets, 20 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Leg extensions (3 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Barbell forward lunges (3 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.red,
                          onPressed: _launchURL,
                          child: Text('YouTube Link',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18)),
                        ),

                      ],
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                  ],
                ),
              )
                  :
              Row(),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.black.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() => showThursday=!showThursday);
                    },
                    child: ShadowText(
                      "THURSDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showThursday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BACK AND ABS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Chin-ups (4 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Wide-grip lat pull-downs (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Close-grip lat pull-downs (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell rows (4 sets, 8-10 reps per arm)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Hyperextensions (4 sets to failure)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("followed by a core workout of your choosing" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.red,
                          onPressed: _launchURL,
                          child: Text('YouTube Link',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18)),
                        ),
                      ],
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                  ],
                ),
              ) :
              Row(),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.black.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() => showFriday=!showFriday);
                    },
                    child: ShadowText(
                      "FRIDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showFriday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "TRICEPS AND BICEPS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Dumbbell curls (4 sets, 10-12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Preacher curls (4 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Triceps extension (4 sets, 10-12 reps per arm)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Triceps rope pushdowns (4 sets, 15 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Skull crushers (4 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.red,
                          onPressed: _launchURL,
                          child: Text('YouTube Link',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18)),
                        ),
                      ],
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                  ],
                ),
              )
                  :
              Row(),
            ],
          ),
        ], ),
    );
  }
}
_launchURL() async {
  const url = 'https://www.youtube.com/';
  if (await canLaunch( url )) {
    await launch( url );
  } else {
    throw 'Could not launch $url';
  }
}