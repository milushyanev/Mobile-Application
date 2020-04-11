import 'package:flutter/material.dart';

class MuscleGainDietRoute extends StatefulWidget {
  MuscleGainDietRoute();
  @override
  _MuscleGainDietRoute createState() => _MuscleGainDietRoute();
}

class _MuscleGainDietRoute extends State<MuscleGainDietRoute> {

  bool showMonday = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,

          title: new Text( "MUSCLE GAIN DIETS" )
      ),
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage( "assets/example.jpg" ),
            fit: BoxFit.cover,
            color: Colors.black.withOpacity( 0.8 ),
            colorBlendMode: BlendMode.darken,
          ),
          ListView(

            children: [

              Padding( padding: EdgeInsets.all( 20.0 ) ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {

                    setState(() => showMonday=!showMonday);
                  },
                  child: Text(
                      "MONDAY",
                      style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 20.0
                      )
                  ),
                ),
              ),
              Padding( padding: EdgeInsets.all( 10.0 ) ),
              showMonday ?
              Container(
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