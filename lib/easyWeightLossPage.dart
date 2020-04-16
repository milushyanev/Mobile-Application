import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new EasyWeightLossRoute(),
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


class EasyWeightLossRoute extends StatefulWidget {
  EasyWeightLossRoute();
  @override
  _EasyWeightLossRoute createState() => _EasyWeightLossRoute();
}

class _EasyWeightLossRoute extends State<EasyWeightLossRoute> {

  bool showMWD=false;
  bool showTTH=false;
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

          title: new Text( "EASY WEIGHT LOSS WORKOUT",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic) )
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
                        TextSpan(text: '15 Minutes of Pliability exercises for the whole body, followed with 40 minutes of cardio - preferebly on stepper machine or treadmill..', style: TextStyle(fontSize:18,color:Colors.white)),
                        TextSpan(text: ' Finish Workout with exercise for ABS (minimum 50 reps)', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18)),

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
                color: Colors.grey.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {

                      setState(() => showMWD=!showMWD);
                    },

                    child: new ShadowText(
                      "MONDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.7),

                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {

                      setState(() => showMWD=!showMWD);
                    },
                    child: ShadowText(
                      "WEDNESDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {

                      setState(() => showMWD=!showMWD);
                    },
                    child: ShadowText(
                      "FRIDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showMWD ?
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

                          TextSpan(text: 'Lat Pulldowns - 4 series x 15 reps             ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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

                          TextSpan(text: 'Dumbbell Bench Press - 4 x 15                 ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),Padding( padding: EdgeInsets.all( 10.0 ) ),
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

                          TextSpan(text: 'Seated Dumbbell Lateral Raise - 4 x 15      ', style: TextStyle(fontSize:24,color:Colors.white)),

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

                          TextSpan(text: 'Seated Dumbbell Lateral Raise - 4 x 15                                   ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),Padding( padding: EdgeInsets.all( 10.0 ) ),
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

                          TextSpan(text: 'Cable Cross-over Reverse Fly- 4 x 15        ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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

                          TextSpan(text: 'Squads- 4 x 15                                 ', style: TextStyle(fontSize:24,color:Colors.white)),

                        ],
                      ),
                    ),
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

                          TextSpan(text: 'Lateral Head with V Bar- 3 x 15                                 ', style: TextStyle(fontSize:24,color:Colors.white)),

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

                          TextSpan(text: 'Lateral Head with V Bar- 3 x 15                                 ', style: TextStyle(fontSize:24,color:Colors.white)),

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
              Padding( padding: EdgeInsets.all( 20.0 ) ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {

                      setState(() => showTTH=!showTTH);
                    },
                    child: ShadowText(
                      "TUESDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.7),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {

                      setState(() => showTTH=!showTTH);
                    },
                    child: ShadowText(
                      "THURSDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showTTH ?
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
                          "CARDIO & PLIABILITY",
                          style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),

                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[


                          TextSpan(text: 'Increase cardio to 90 minutes & Pliability for the whole body to 30 minutes, ABS to minimum 80. ', style: TextStyle(fontSize:24,color:Colors.white)),

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
