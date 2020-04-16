import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new IntenseLeanBodyRoute(),
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
class IntenseLeanBodyRoute extends StatefulWidget {
  IntenseLeanBodyRoute();

  @override
  _IntenseLeanBodyRoute createState() => _IntenseLeanBodyRoute( );
}
class _IntenseLeanBodyRoute extends State<IntenseLeanBodyRoute> {

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
          title: new Text( "INTENSE LEAN BODY WORKOUT",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic) )
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
                        TextSpan(text: ' Finish Workout with exercise for ABS (minimum 100 reps).', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 20)),
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
                          "CHEST AND BACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("All exercises are 4 sets, 6 reps with heavy weight unless otherwise noted." ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text(""),
                    Text("Barbell bench press" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Pull-ups" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Pendlay row" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("One arm dumbbell row" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Chest dips, 4 sets to failure" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Deadlifts" ,style: TextStyle(color: Colors.white,fontSize: 24)),
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
                          "SHOULDERS AND ARMS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("All exercises are 4 sets, 6 reps with heavy weight unless otherwise noted." ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text(""),
                    Text("Barbell military press" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell side laterals" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Close grip bench press" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Rope pushdown (2 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Barbell biceps curl (3 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dumbbell hammer curl (3 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
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
                          "LEGS AND ABS",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("All exercises are 4 sets, 6 reps with heavy weight unless otherwise noted." ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text(""),
                    Text("Barbell squats (3 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Leg press (3 sets, 6 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Walking lunges (3 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Leg extensions (3 sets, 12 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Hanging leg raises (4 sets, 10 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dragon flags (4 sets, 5 reps)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Planks (4 sets, 1 minute each)" ,style: TextStyle(color: Colors.white,fontSize: 24)),
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
                          "CARDIO DAY",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("Increase cardio to 90 minutes and pliability exercises to 45 minutes" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Dry Sauna - minimum 15 minutes" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Steam Sauna - minimum 20 minutes" ,style: TextStyle(color: Colors.white,fontSize: 24)),
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
                          "BACK AND CHEST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    Text("All exercises are 4 sets, 6 reps with heavy weight unless otherwise noted." ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text(""),
                    Text("Barbell bench press" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Pull-ups" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Pendlay row" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("One arm dumbbell row" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Chest dips, 4 sets to failure" ,style: TextStyle(color: Colors.white,fontSize: 24)),
                    Text("Deadlifts" ,style: TextStyle(color: Colors.white,fontSize: 24)),
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