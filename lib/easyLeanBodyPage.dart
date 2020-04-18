import 'dart:ui' as ui;
import 'package:url_launcher/url_launcher.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/leanBodyDietPage.dart';
import 'package:flutter_app/hydrationPage.dart';
import 'package:flutter/rendering.dart';
import 'resourcesPage.dart';
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
  _EasyLeanBodyLossRoute createState() => _EasyLeanBodyLossRoute();
}

class _EasyLeanBodyLossRoute extends State<EasyLeanBodyLossRoute> {
  int _currentIntValue = 1;
  _showIntegerDialog() async {
    await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 1,
          maxValue: 5,
          step: 1,
          initialIntegerValue: _currentIntValue,
        );
      },
    ).then(_handleValueChangedExternally);
  }

  _handleValueChangedExternally(num value) {
    if (value != null) {
      if (value is int) {
        setState(() => _currentIntValue = value);


      }
    }
  }


  var list=['PREVIEW','BACK','CHEST','SHOULDERS','LEGS' ];
  var list1=['Here is a random Preview of some of the muscle group exercises','Chin-ups. Wide-grip lat pull-downs. Close-grip lat pull-downs. Dumbbell rows.',
    'Flat bench barbell press. Dumbbell press. Dumbbell flyes. Push-ups. Cable crossovers.','Shoulder press. Military press . Deltoid flyes. Upright rows. Dumbbell front raises. Lateral raises.',
    'Barbell squats. Leg press. Leg extensions. Calf raises. Leg extensions. Barbell forward lunges.'];
  var listDay=['CHEST',
    'SHOULDERS',
    'LEGS',
    'BACK AND ABS',
    'TRICEPS BICEPS'];
  var listDayEx=['Flat bench barbell press (4 sets, 6 reps). Dumbbell press (4 sets, 6 reps). Dumbbell flyes (3 sets, 10 reps). Push-ups (4 sets, 20 reps). Cable crossovers (3 sets, 15 reps).',
  'Shoulder press (4 sets, 12 reps). Military press (4 sets, 10-12 reps). Deltoid flyes (3 sets, 6 reps). Upright rows (4 sets, 6 reps). Dumbbell front raises (4 sets, 12 reps). Lateral raises (4 sets, 12 reps.',
  'Barbell squats (4 sets, 8-10 reps). Leg press (3 sets, 10 reps). Leg extensions (3 sets, 10 reps). Calf raises (3 sets, 20 reps). Leg extensions (3 sets, 10 reps). Barbell forward lunges (3 sets, 10 reps).',
  'Chin-ups (4 sets, 10 reps). Wide-grip lat pull-downs (4 sets, 12 reps). Close-grip lat pull-downs (4 sets, 12 reps). Dumbbell rows (4 sets, 8-10 reps per arm). Hyperextensions (4 sets to failure) followed by a core workout of your choosing.',
  'Dumbbell curls (4 sets, 10-12 reps). Preacher curls (4 sets, 12 reps). Triceps extension (4 sets, 10-12 reps per arm). Triceps rope pushdowns (4 sets, 15 reps). Skull crushers (4 sets, 10 reps).'];
  Color gradientStart = Colors.grey; //Change start gradient color here
  Color gradientEnd = Colors.black;
  int _index = 0;

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),

          title: new Text( "Lean Body Workout",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
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
                    Padding(padding: EdgeInsets.all(10.0)),
                    Card(
                      color:Colors.white.withOpacity(.9),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            child: const ListTile(
                              leading: Icon(Icons.fitness_center,size: 50),
                              title: Text("Pre and Post workout Routine",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                              subtitle: Text('15 Minutes of Pliability exercises for the muscle groups stated in current day, followed with 40 minutes of cardio - preferebly on stepper machine or treadmill.  '
                                  'Finish Workout with exercise for ABS (minimum 50 reps) & Pliability (10-15 min) for current muscle groups used.',
                                  style: TextStyle(fontStyle: FontStyle.normal,color:Colors.black,fontSize: 16) ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text("Up to 1 Minute Rest after each Series !!! ", style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 22)),
                          Padding(padding: EdgeInsets.all(5.0)),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    SizedBox(
                      height: 200,
                      // card height
                      child: PageView.builder(
                        itemCount: 5,
                        controller: PageController(viewportFraction: 0.7),
                        onPageChanged: (int index) => setState(() => _index = index),
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == _index ? 1 : 0.9,

                            child: ListView(
                              children: <Widget>[
                                Card(
                                  color: Colors.white.withOpacity(.8),
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                        child: Text("${list[i]}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24.0)),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                          child: Text(" ${list1[i]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
                              title: Text('SPEED KILLS'),
                              subtitle: Text('"Choose your workout day from the day picker."'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(child:
                                    Text( "Current day: $_currentIntValue       ",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20) )),
                                  ],
                                ),),
                              FlatButton(
                                child:  Text( "DAY PICKER            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                onPressed: () => _showIntegerDialog(),
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

                              leading: Icon(Icons.today,size: 50),
                              title: Text("LEAN BODY WORKOUT"),
                              subtitle: Text('"Please follow the order of exercises provided"'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                "${listDay[_currentIntValue-1]}",
                                style: TextStyle(color: Colors.black.withOpacity(1),fontSize: 24,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                "${listDayEx[_currentIntValue-1]}",
                                style: TextStyle(color: Colors.black.withOpacity(1),fontSize: 22,fontStyle: FontStyle.italic),textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20.0)),
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
                          Padding(padding: EdgeInsets.all(20.0)),
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
        child: Container(
          color:Colors.grey,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height:100,
                child: DrawerHeader(
                  child: Text( "GO TO ...",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) ),
                  decoration: BoxDecoration(
                    color:Colors.black.withOpacity(.8),
                  ),
                ),
              ),

              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.local_drink),
                  title: Text('HYDRATION PAGE'),
                  subtitle: Text('Go to the Hydration Info page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HydrationRoute()),
                    ),},
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('LEAN BODY DIET'),
                  subtitle: Text('Go to Muscle Gain Diet Page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeanBodyDietRoute()),
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
              )
            ],
          ),
        ),
      ),
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