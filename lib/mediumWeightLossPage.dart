import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new MediumWeightLossRoute(),
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


class MediumWeightLossRoute extends StatefulWidget {
  MediumWeightLossRoute();
  @override
  _MediumWeightLossRoute createState() => _MediumWeightLossRoute();
}

class _MediumWeightLossRoute extends State<MediumWeightLossRoute> {

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

          title: new Text( "MEDIUM WEIGHT LOSS WORKOUT",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic) )
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage( "assets/weightLoss.jpg" ),
            fit: BoxFit.cover,
            color: Colors.transparent,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(

            children: [

              Padding( padding: EdgeInsets.all( 7.5 ) ),
              Container(
                color: Colors.grey.withOpacity(.95),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text.rich(
                    TextSpan(
                      // default text style
                      children: <TextSpan>[

                        TextSpan(text: ' Before Weight Lifting: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18)),
                        TextSpan(text: '15 Minutes of Pliability exercises for the muscle groups stated in current day, followed with 40 minutes of cardio - preferebly on stepper machine or treadmill.', style: TextStyle(fontSize:18,color:Colors.white)),
                        TextSpan(text: ' Finish Workout with exercise for ABS (minimum 75 reps).', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18)),

                      ],
                    ),

                  ),

                ),
              ),
              Padding( padding: EdgeInsets.all( 7.5 ) ),
              Container(
                color: Colors.grey.withOpacity(.95),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      // default text style
                      children: <TextSpan>[

                        TextSpan(text: ' Up to 1 Minute Rest after each Series !!! ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18)),
                      ],
                    ),

                  ),

                ),
              ),
              Padding( padding: EdgeInsets.all( 15.0 ) ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.9),
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

                color: Colors.black.withOpacity(.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BACK",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Lat Pulldowns,Bent-Over Barbell Rows,Seated Cable Rows - 4x12 (each)    ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SHOULDERS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Cable Cross-over Reverse Fly- 12, 10, 8 ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BICEPS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Curls- 12, 12, 10, 8 ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),

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
                color: Colors.grey.withOpacity(.7),

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
                          "CHEST",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Straight Bar Bench Press, Dumbbell Bench Press, Bent Forward Cable crossover -12, 10, 8, 6 (each)  ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SHOULDERS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Seated Dumbbell Overhead Press - 15, 12, 12, 10 ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "TRICEPS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Lateral Head with V Bar - 12, 12, 10', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),

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
                color: Colors.grey.withOpacity(.7),
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
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Squads, Leg Press, Walking Lunge, Single Leg Curl(back), Glute Hamstrings Raise - 12, 10, 8, 6  (each)', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "TRAPEZIUS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Shrugs, Upright Rows - 12, 10, 8 (each) ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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
                color: Colors.grey.withOpacity(.7),
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
                          "SHOULDERS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Seated Dumbbell Lateral Raise, Behind Head Push Press, Seated Dumbbell Overhead Press, Cable Cross-over Reverse Fly - 12, 12, 10, 8 (each) ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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
                color: Colors.grey.withOpacity(.7),
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
                          "TRICEPS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Lying Triceps Extensions, Triceps Dips, Lateral Head with V Bar, One-Arm Overhead Extensions - 12, 12, 10, 8 (each)', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BICEPS",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[

                          TextSpan(text: 'Standing Barbell Curls, Curls, Cable Rope Hammer Curl- 12, 12, 10 (each)', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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
