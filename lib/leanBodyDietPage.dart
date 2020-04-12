import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
void main() {
  runApp(new MaterialApp(
    home: new LeanBodyDietRoute(),
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


class LeanBodyDietRoute extends StatefulWidget {
  LeanBodyDietRoute();
  @override
  _LeanBodyDietRoute createState() => _LeanBodyDietRoute();
}

class _LeanBodyDietRoute extends State<LeanBodyDietRoute> {

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

          title: new Text( "LEAN BODY WEEKLY PLAN",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic) )
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage( "assets/leanBodyDiet.jpg" ),
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
                              text: 'Banana Powerseed Oatmeal (¼ cup steel-cut oats, ¾ cup unsweetened vanilla almond milk, 2 tbsp chia seeds, 1 tbsp natural almond butter, ½ banana)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '441, Fat: 21g, Carbs: 55g, Fiber: 17g, Protein: 14g',
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
                                text: 'Avocado toast (1 slice whole-wheat toast topped with ¼ avocado, salt and pepper to taste); 1 pear; 8 oz herb- or fruit-infused water',                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '240, Fat: 6g, Carbs: 45g, Fiber: 11g, Protein: 5g',
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
                              text: 'Waldorf Chicken Salad Wrap on whole- wheat tortilla; ½ cup carrots, ¼ cup hummus; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '587, Fat: 16.5g, Carbs: 64g, Fiber: 14g, Protein: 48g',
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
                              text: '4 oz baked salmon, ½ cup roasted asparagus, ½ cup cooked brown rice; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '415, Fat: 13g, Carbs: 24g, Fiber: 5g, Protein: 44g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup sliced strawberries, 1 oz 70% dark chocolate; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '190, Fat: 13g, Carbs: 25g, Fiber: 3g, Protein: 4g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,873, Fat: 70g, Carbs: 213g, Fiber: 50g, Protein: 115g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),
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
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
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
                              text: '7 oz plain low-fat Greek yogurt, 2 tbsp walnuts, ½ cup strawberries, 2 tsp honey, dash of cinnamon; 1 slice whole- wheat toast with 1 tsp butter)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '421, Fat: 18g, Carbs: 42g, Fiber: 6g, Protein: 27g',
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
                              text: '1 banana with 1 tbsp almond butter; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '245, Fat: 8g, Carbs: 38g, Fiber: 5g, Protein: 5g',
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
                              text: 'Tangy BBQ Quinoa Bowl (½ cup cooked quinoa, ½ cup shelled edamame, ¼ cup diced red onion, ¼ diced avocado, 2 tbsp BBQ sauce); 8 oz herb- or fruit-infused water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '314, Fat: 13g, Carbs: 38g, Fiber: 10g, Protein: 15g',
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
                              text: '4 oz grilled chicken breast, 1 cup steamed broccoli, 1 medium sweet potato drizzled with 2 tsp olive oil; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '508, Fat: 16g, Carbs: 32g, Fiber: 6g, Protein: 37g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 pear sprinkled with cinnamon; 1 organic string cheese; 4 cups air-popped popcorn; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '315, Fat: 8g, Carbs: 53g, Fiber: 10g, Protein: 13g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,803, Fat: 62g, Carbs: 203g, Fiber: 37g, Protein: 97g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),
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
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
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
                              text: 'Breakfast burrito (2 scrambled eggs, ½ cup black beans, ¼ cup bell pepper, ¼ cup diced onion, 2 tbsp salsa on whole-wheat tortilla)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '356, Fat: 11g, Carbs: 43g, Fiber: 13g, Protein: 22g',
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
                              text: '½ cup shelled edamame sprinkled with sea salt; 1 medium apple; 8 oz water',                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '225, Fat: 4g, Carbs: 36g, Fiber: 8g, Protein: 9g        ',
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
                              text:'Avocado egg salad sandwich on 2 slices whole- wheat bread; ½ cup sliced cucumber, ¼ cup hummus; 8 oz kombucha' ,
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '522, Fat: 26g, Carbs: 60g, Fiber: 15g, Protein: 32g',
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
                              text: '2 cups raw spinach, 2 tbsp walnuts, ⅛ cup feta cheese, ¼ cup dried cranberries, 2 oz grilled chicken with dressing (1 tbsp olive oil, 1 tbsp balsamic vinegar, salt, pepper); 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '517, Fat: 28g, Carbs: 38g, Fiber: 12g, Protein: 22g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '6 oz organic Greek yogurt topped with ½ cup sliced strawberries, 1 oz crushed 70% dark chocolate',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '344, Fat: 14g, Carbs: 39g, Fiber: 3g, Protein: 17g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,964, Fat: 83g, Carbs: 217g, Fiber: 51g, Protein: 102g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),
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
                          child: Text('Google Link',style: TextStyle(color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.white70,
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
                              text: 'Smoothie (½ cup frozen blueberries, ½ banana, ¼ avocado, 2 cups raw spinach, ¾ cup vanilla unsweetened almond milk, 1 tsp cinnamon, 2 scoops vanilla whey protein powder)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '331, Fat: 10g, Carbs: 37g, Fiber: 9g, Protein: 30g',
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
                              text: '1 hard-boiled egg; 1 medium apple; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200, Fat: 6g, Carbs: 29g, Fiber: 4g, Protein: 7g   ',
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
                              text: 'Turkey burger with ¼ avocado, sliced tomato, onion, mustard on 100% whole-wheat thin sandwich roll; ½ cup strawberries; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '426, Fat: 19g, Carbs: 41g, Fiber: 12g, Protein: 30g',
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
                              text: 'Quinoa, Chicken, Cranberry & Goat Cheese Salad ; 1 cup steamed broccoli; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '600, Fat: 25g, Carbs: 61g, Fiber: 15g, Protein: 28g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '3 oz canned tuna packed in water with 1 tbsp Dijon mustard on 5 whole-grain crackers; 1 pear; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '257, Fat: 5g, Carbs: 33g, Fiber: 5g, Protein: 22g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,814, Fat: 65g, Carbs: 201g, Fiber: 45g, Protein: 117g',
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
                              text: 'Banana Powerseed Oatmeal (¼ cup steel-cut oats, ¾ cup unsweetened vanilla almond milk, 2 tbsp chia seeds, 1 tbsp natural almond butter, ½ banana)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '441, Fat: 21g, Carbs: 55g, Fiber: 17g, Protein: 14g',
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
                              text: '1 banana with 1 tbsp almond butter; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),
                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '245, Fat: 8g, Carbs: 38g, Fiber: 5g, Protein: 5g',
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
                              text: 'Avocado egg salad sandwich on 2 slices whole- wheat bread; ½ cup sliced cucumber, ¼ cup hummus; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '522, Fat: 26g, Carbs: 60g, Fiber: 15g, Protein: 32g',
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
                              text: 'Quinoa, Chicken, Cranberry & Goat Cheese Salad ; 1 cup steamed broccoli; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '415, Fat: 13g, Carbs: 24g, Fiber: 5g, Protein: 44g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 cup sliced strawberries, 1 oz 70% dark chocolate; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '190, Fat: 13g, Carbs: 25g, Fiber: 3g, Protein: 4g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,813, Fat: 81g, Carbs: 202, Fiber: 45g, Protein: 99g',
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
                              text: 'Smoothie (½ cup frozen blueberries, ½ banana, ¼ avocado, 2 cups raw spinach, ¾ cup vanilla unsweetened almond milk, 1 tsp cinnamon, 2 scoops vanilla whey protein powder)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '331, Fat: 10g, Carbs: 37g, Fiber: 9g, Protein: 30g',
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
                              text: ' ½ cup shelled edamame sprinkled with sea salt; 1 medium apple; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '225, Fat: 4g, Carbs: 36g, Fiber: 8g, Protein: 9g   ',
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
                              text: 'Waldorf Chicken Salad Wrap on whole- wheat tortilla; ½ cup carrots, ¼ cup hummus; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '587, Fat: 16.5g, Carbs: 64g, Fiber: 14g, Protein: 48g',
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
                              text: '4 oz baked salmon, ½ cup roasted asparagus, ½ cup cooked brown rice; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '415, Fat: 13g, Carbs: 24g, Fiber: 5g, Protein: 44g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1 pear sprinkled with cinnamon; 1 organic string cheese; 4 cups air-popped popcorn; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '315, Fat: 8g, Carbs: 53g, Fiber: 10g, Protein: 13g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,873, Fat: 51.5g, Carbs: 214g, Fiber: 46g, Protein: 144g',
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
                              text: 'Breakfast burrito (2 scrambled eggs, ½ cup black beans, ¼ cup bell pepper, ¼ cup diced onion, 2 tbsp salsa on whole-wheat tortilla)Breakfast burrito (2 scrambled eggs, ½ cup black beans, ¼ cup bell pepper, ¼ cup diced onion, 2 tbsp salsa on whole-wheat tortilla)',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '356, Fat: 11g, Carbs: 43g, Fiber: 13g, Protein: 22g',
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
                              text: '1 hard-boiled egg; 1 medium apple; 8 oz kombucha',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '200, Fat: 6g, Carbs: 29g, Fiber: 4g, Protein: 7g',
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
                              text: 'Tangy BBQ Quinoa Bowl (½ cup cooked quinoa, ½ cup shelled edamame, ¼ cup diced red onion, ¼ diced avocado, 2 tbsp BBQ sauce); 8 oz herb- or fruit-infused water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '314, Fat: 13g, Carbs: 38g, Fiber: 10g, Protein: 15g',
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
                              text: '4 oz grilled chicken breast, 1 cup steamed broccoli, 1 medium sweet potato drizzled with 2 tsp olive oil; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '508, Fat: 16g, Carbs: 32g, Fiber: 6g, Protein: 37g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),

                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' SNACK/DESSERT: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '6 oz organic Greek yogurt topped with ½ cup sliced strawberries, 1 oz crushed 70% dark chocolate; 8 oz water',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '344, Fat: 14g, Carbs: 39g, Fiber: 3g, Protein: 17g',
                              style: TextStyle( fontSize: 16, color: Colors.white ) ),

                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 10.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' TOTAL NUTRITION: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18 ) ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.all( 5.0 ) ),
                    const Text.rich(

                      TextSpan(

                        // default text style
                        children: <TextSpan>[

                          TextSpan( text: ' Calories: ',
                              style: TextStyle( fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  //decoration: TextDecoration.underline,
                                  fontSize: 18 ) ),
                          TextSpan(
                              text: '1,722, Fat: 60g, Carbs: 181g, Fiber: 36g, Protein: 98g',
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