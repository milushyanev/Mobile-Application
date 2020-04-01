import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HydratitionRoute extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,

          title:new Text("PROPER HYDRATION")
      ),

      body: new Stack(


        fit: StackFit.expand,
        children: <Widget>[



    new Image(
            image: AssetImage("assets/plogo.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,

          ),

    Column(


      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
       Padding(padding: EdgeInsets.all(5.0)),
      //How to show long text ?
      Text(''' "As we all know, our Bodiyes are made up of anywehere from 60 to 80 percent water, and our muscles alone are 75 percent water"  TB12 
      ''',
          style: new TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.redAccent,
              fontSize: 15.0

          )
      ),
      Text('''Proper hydration can reduce toxins in cells, slower metabolism, vulnerability to inflamation, joint pain, etc.
      ''',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16.0
          )
      ),
        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' TAP WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.red,fontSize: 17)),
              TextSpan(text: 'fluoride, chlorine, lead containment. Not recommenced, unless filtered first.', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),
        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' DISTILLED WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.red,fontSize: 17)),
              TextSpan(text: 'stripped out of mineral content. If used it is recommended along with electrolyte suplements.', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),
        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' SPRING WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.red,fontSize: 17)),
              TextSpan(text: 'identical to tap wate, but from different sources.', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),
        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' CARBONATED WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.red,fontSize: 17)),
              TextSpan(text: 'less oxygen and high carbon dioxide gas containtment. Not a good source for proper hydration.', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),
        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(

          TextSpan(

            // default text style
            children: <TextSpan>[


              TextSpan(text: ' MINERAL WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.lightGreenAccent,fontSize: 17)),
              TextSpan(text: 'due to containment of alkalizing minerals, it is a great product for proper hydration.', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),

        Padding(padding: EdgeInsets.all(5.0)),
        const Text.rich(

          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' PURIFIED WATER: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.blue,fontSize: 17)),
              TextSpan(text: 'it has a fewer number of impurities. It is the ', style: TextStyle(fontSize:16,color:Colors.white)),
              TextSpan(text: 'BEST', style: TextStyle(fontSize:16,color:Colors.blue)),
              TextSpan(text: ' for proper hydration. ', style: TextStyle(fontSize:16,color:Colors.white)),

            ],
          ),

        ),
        Padding(padding: EdgeInsets.all(10.0)),
        const Text.rich(

          TextSpan(
            // default text style
            children: <TextSpan>[

              TextSpan(text: ' WATER INTAKE AMOUNT: ', style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color:Colors.blue,fontSize: 17)),
              TextSpan(text: 'Minimum half of a person`s body weight. ', style: TextStyle(fontSize:16,color:Colors.white,fontStyle: FontStyle.italic)),
              TextSpan(text: ' EXAMPLE:', style: TextStyle(fontSize:16,color:Colors.blue)),
              TextSpan(text: ' If your weight is ', style: TextStyle(fontSize:16,color:Colors.white,fontStyle: FontStyle.italic)),
              TextSpan(text: ' 150 lbs', style: TextStyle(fontSize:16,color:Colors.blue)),
              TextSpan(text: ' , minimum water intake amount should be ', style: TextStyle(fontSize:16,color:Colors.white,fontStyle: FontStyle.italic)),
              TextSpan(text: '  75oz', style: TextStyle(fontSize:16,color:Colors.blue)),
              TextSpan(text: ' . It`s crucially important to spread the intake accordingly through out our day.', style: TextStyle(fontSize:16,color:Colors.white,fontStyle: FontStyle.italic)),
              TextSpan(text: ' Add ekectrolytes if possible.', style: TextStyle(fontSize:16,color:Colors.blue, fontWeight: FontWeight.bold  )),

            ],
          ),

        ),

    ],),



        ],),

    );

  }
}