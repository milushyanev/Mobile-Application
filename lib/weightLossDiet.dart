import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new WeightLossDietRoute(),
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
class WeightLossDietRoute extends StatefulWidget {
  WeightLossDietRoute();
  @override
  _WeightLossDietRoute createState() => _WeightLossDietRoute();
}

class _WeightLossDietRoute extends State<WeightLossDietRoute> {

  bool showMonday = false;
  bool showTuesday=false;
  bool showWednesday=false;
  bool showThursday=false;
  bool showFriday=false;
  bool showSaturday=false;
  bool showSunday=false;

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
          title: new Text( "WEIGHT LOSS - KETO WEEKLY PLAN",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage( "assets/weightLossDiet.jpg" ),
            fit: BoxFit.cover,
            color: Colors.transparent,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
            children: [
              Padding( padding: EdgeInsets.all( 15.0 ) ),
              Container(
                width: 20.0,
                height: 60.0,
                color: Colors.grey.withOpacity(.6),
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
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Egg muffins with Cheddar cheese, spinach, and sun-dried tomatoes',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Roast turkey, cucumber, and cheese roll-ups         ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Spiced cauliflower soup with bacon pieces or tofu cubes',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Garlic and herb buttered shrimp with zucchini noodles',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sticks of celery and pepper with guacamole       ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Scrambled eggs on a bed of sautéed greens with pumpkin seeds  ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Smoothie with almond milk, nut butter, chia seeds, and spinach ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Chicken mayonnaise salad with cucumber, avocado, tomato, almonds, and onion',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Beef stew made with mushrooms, onions, celery, herbs, and beef broth',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Olives                                                                           ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Omelet with mushrooms, broccoli, and peppers',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Slices of cheese and bell peppers                          ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Avocado and egg salad with onion and spices, served in lettuce cups',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Cajun spiced chicken breast with cauliflower rice and Brussels sprout salad',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Nuts                                                                                   ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Smoothie containing almond milk, nut butter, spinach, chia seeds, and protein powder',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: '2 boiled eggs                                                               ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Shrimp and avocado salad with tomatoes, feta cheese, herbs, lemon juice, and olive oil',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Garlic butter steak with mushrooms and asparagus',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Flax crackers with cheese                                                     ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: '2 eggs, fried in butter, with avocado and blackberries              ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Slices of cheese and bell peppers                                         ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Grilled salmon with a salad of mixed leafy greens and tomato       ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Chicken breast with cauliflower mash and green beans        ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Slices of cheese and bell peppers                             ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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

                      setState(() => showSaturday=!showSaturday);
                    },
                    child: ShadowText(
                      "SATURDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showSaturday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Scrambled eggs with jalapeños, green onions, and tomatoes sprinkled with sunflower seeds',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Celery sticks with almond butter dip                       ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Tuna salad with tomatoes and avocado plus macadamia nuts   ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Pork chops with nonstarchy vegetables of choice            ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'A handful of berries and nuts                                ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
                      setState(() => showSunday=!showSunday);
                    },
                    child: ShadowText(
                      "SUNDAY",
                      style: Theme.of(context).textTheme.display3,
                    ),
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showSunday ?
              Container(
                color: Colors.black.withOpacity(.7),
                child: Column(
                  children: <Widget>[
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "BREAKFAST",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Yogurt with keto-friendly granola                                      ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sugar-free turkey jerky                                            ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "LUNCH",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Grass-fed beef burger (no bun) with guacamole, tomato, and kale salad   ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "DINNER",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Stir-fried chicken, broccoli, mushrooms, and peppers, with homemade satay sauce',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          "SNACK",
                          style: TextStyle(color: Colors.grey,fontSize: 40,fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'An egg and vegetable muffin                                             ',
                              style: TextStyle( fontSize: 22, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
                          onPressed: _launchURL1,
                          child: Text('Foods to Avoid',style: TextStyle(fontSize:16,color: Colors.black,fontStyle: FontStyle.italic)),
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
  const url = 'https://www.google.com/';
  if (await canLaunch( url )) {
    await launch( url );
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL1() async {
  const url = 'https://www.atkins.com/how-it-works/library/articles/helpful-tips-ketogenic-foods-to-avoid';
  if (await canLaunch( url )) {
    await launch( url );
  } else {
    throw 'Could not launch $url';
  }
}