import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new MuscleGainDietRoute(),
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
              style: style.copyWith(color: Colors.white),
            ),
          ),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Text(data, style: style.copyWith(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}


class MuscleGainDietRoute extends StatefulWidget {
  MuscleGainDietRoute();
  @override
  _MuscleGainDietRoute createState() => _MuscleGainDietRoute();
}

class _MuscleGainDietRoute extends State<MuscleGainDietRoute> {

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

          title: new Text( "MUSCLE GAIN WEEKLY PLAN",style: TextStyle(color: Colors.white,fontSize: 20) )
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage( "assets/example.jpg" ),
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
                color: Colors.grey.withOpacity(.4),
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
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 whole eggs, 3 eggs whites (scrambled), 2 cups of cooked oats with 1 tbsp honey, 1 banana, 3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup berries (strawberries, blueberries, raspberries), 2 cups low-fat cottage cheese',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 cups cooked brown rice, 300g cooked chicken breast, 1 cup green vegies',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200g salmon or steatk, 2 cups couscous, 2 cups spinach, 1 tbsp balsamic dressing',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup low-fat greek yoghurt, 1 tbsp flaxseeds',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.4),

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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 poached eggs, 2 slices multigrain toast, 1 tbsp natural peanut butter, 1 1/2 cup oats, 3 scoops (60g) WHEY protein with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup low-fat greek yoghurt, 2 tbsp honey, 1 banana',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200g steak, 1 cup chickpeas, 1 tomato diced, 1/2 cucumber diced, 1 apple',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200g chicken breast, sweet popato, 2 medium carrots, 1 cup green vegies',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 cups low-fat cottage cheese, 2 tbsp shredded coconut, 1 tsp sugar free syrup',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.4),
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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Blend 1 cup oats, 1tbsp flaxseed oil, 1 cup of milk, 3 scoops (60g) of WHEY protein , 1tsp honey, 1 cup berries, 1 banana',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Chicken/tukey sandwich with lettuce, tomato, 1 slice cheese, low-fat mayo',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1.5 cups wholemeal pasta with tomato based sauce, 1.5 cups mixed vegies, 1 slice low fat cheese',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200g trim pork, 1 cup stir fried veggies, 1 1/2 cup brown rice, 1 tbsp soy sauce, 2 tbsp cashew nuts',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup low-fat greek yoghurt, 1 tbsp peanut butter, 1 scoop whey protein',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.4),
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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 whole eggs, 3 egg whites (scrambled), 2 sliced multigrain toast, 4 slices extra lean turkey bacon, 1/4 avocado',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 large apples, 2 tbsp peanut butter                          ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Baked Potato, (Skin On) 1 tin tuna (185g), 1 cup sweet corn. 1 tbsp low fat mayo, 1 slice low-fat cheese, chilli to taste',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 whole meal burger buns, lean steak (200g), 1 fried egg, 2 slices beetroot, 1 slice cheese, 1 tbsp low fat mayo, 2 large sweet potatoes with olive oil',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 tin tuna (185g) 1 tsp olive oil                              ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.4),
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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '8 Weetbix with 3 scoops (60g) of WHEY protein mixed with 300ml milk, 1 sliced banana and barries',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Chicken/turkey sandwich with lettuce, tomato, 1 slice cheese, low-fat mayo',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Baked Potato, (Skin On) 1 tin tuna (185g), 1 cup sweet corn. 1 tbsp low fat mayo, 1 slice low-fat cheese, chilli to taste',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 cups wholemeal pasta, shredded chicken breast (200g), 5 cherry tomatoes, basil, mushroom, fetta',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup full cream milk, 1 tbsp peanut butter        ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.4),
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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '8 Weetbix with 3 scoops (60g) of WHEY protein mixed with 300ml milk, 1 sliced banana and barries',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Chicken/turkey sandwich with lettuce, tomato, 1 slice cheese, low-fat mayo',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Baked Potato, (Skin On) 1 tin tuna (185g), 1 cup sweet corn. 1 tbsp low fat mayo, 1 slice low-fat cheese, chilli to taste',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 cups wholemeal pasta, shredded chicken breast (200g), 5 cherry tomatoes, basil, mushroom, fetta',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup full cream milk, 1 tbsp peanut butter        ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
                color: Colors.grey.withOpacity(.3),
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
                color: Colors.black.withOpacity(.8),
                child: Column(
                  children: <Widget>[
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' BREAKFAST: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '8 Weetbix with 3 scoops (60g) of WHEY protein mixed with 300ml milk, 1 sliced banana and barries',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Chicken/turkey sandwich with lettuce, tomato, 1 slice cheese, low-fat mayo',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' LUNCH: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: 'Baked Potato, (Skin On) 1 tin tuna (185g), 1 cup sweet corn. 1 tbsp low fat mayo, 1 slice low-fat cheese, chilli to taste',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 scoops (60g) of WHEY protein mixed with 300ml milk',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' DINNER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '2 cups wholemeal pasta, shredded chicken breast (200g), 5 cherry tomatoes, basil, mushroom, fetta',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SUPPER: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup full cream milk, 1 tbsp peanut butter        ',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL,
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          onPressed: _launchURL1,
                          child: Text('UNIT Converter',style: TextStyle(color: Colors.black)),
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
  const url = 'https://www.unitconverters.net/';
  if (await canLaunch( url )) {
    await launch( url );
  } else {
    throw 'Could not launch $url';
  }
}