import 'dart:ui' as ui;
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'resourcesPage.dart';
import 'progressPage.dart';
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
class HydrationRoute extends StatefulWidget {
  HydrationRoute();
  @override
  _HydrationRoute createState() => _HydrationRoute();
}

class _HydrationRoute extends State<HydrationRoute> {
  int _currentIntValue = 90;
  double _ounceH2O=45;
  _showIntegerDialog() async {
    await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 90,
          maxValue: 300,
          step: 1,
          initialIntegerValue: _currentIntValue,
        );
      },
    ).then(_handleValueChangedExternally).then(_ounceCalc);
  }

  _handleValueChangedExternally(num value) {
    if (value != null) {
      if (value is int) {
        setState(() => _currentIntValue = value);
        setState(() => _ounceH2O=(value/2));

      }
    }
  }
  _ounceCalc(num _testingResult) {
    if (_testingResult != null) {
      if (_testingResult is double) {
        setState(() => _testingResult=(_currentIntValue/~2) );
      }
    }
  }
  var list=[' PURIFIED WATER: ',' MINERAL WATER: ',' TAP WATER:',' DISTILLED WATER: ','SPRING WATER: ', 'CARBONATED WATER:' ];
  var list1=['It has a fewer number of impurities. It is the BEST for proper hydration according athletes.','Fluoride, chlorine, lead containment. Not recommenced, unless filtered first.','Due to containment of alkalizing minerals, it is a great product for proper hydration.','Stripped out of mineral content. If used it is recommended along with electrolyte suplements','Close to or identical to tap water`s properties, but combined from different sources.','Less oxygen and high carbon dioxide gas containtment. Not a good source for proper hydration.'];

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

          title: new Text( "Proper Hydration",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
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

                              leading: Icon(Icons.local_drink,size: 50),
                              title: Text("Proper Hydration"),
                              subtitle: Text('"Minimum 1/2 of the current Body Weight"'),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(child:
                                    Text( "$_currentIntValue  lbs ",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20) )),
                                  ],
                                ),),
                              FlatButton(
                                child:  Text( "Weight Selector",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                onPressed: () => _showIntegerDialog(),
                              ),
                              Container(
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(child:
                                    Text( "$_ounceH2O oz",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.blue,fontSize: 22) )),
                                  ],
                                ),),
                              Text("Water",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18) ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    SizedBox(
                      height: 200,
                      // card height
                      child: PageView.builder(
                        itemCount: 6,
                        controller: PageController(viewportFraction: 0.7),
                        onPageChanged: (int index) => setState(() => _index = index),
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == _index ? 1 : 0.9,

                            child: ListView(
                              children: <Widget>[
                                Card(
                                  color: Colors.white.withOpacity(.9),
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

                              leading: Icon(Icons.person_outline,size: 50),
                              title: Text("Tom Brady"),
                              subtitle: Text('"As we all know, our Bodiyes are made up of anywehere from 60 to 80 percent water, and our muscles alone are 75 percent water"'),
                            ),
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

                              leading: Icon(Icons.book,size: 50),
                              title: Text("TB12 Method"),
                              subtitle: Text('"Proper hydration can reduce toxins in cells, slower metabolism, vulnerability to inflamation, joint pain, etc."'),
                            ),
                          ),
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

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          color:Colors.grey,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height:100,
                child: DrawerHeader(
                  child: Text( "MENU",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) ),
                  decoration: BoxDecoration(
                    color:Colors.black.withOpacity(.8),
                  ),
                ),
              ),
              Card(
                color: Colors.white.withOpacity(.8),
                child: ListTile(
                  leading: Icon(Icons.thumb_up),
                  title: Text('PROGRESS PAGE'),
                  subtitle: Text('Go to the progress page'),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgressRoute()),
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
