import 'package:flutter/material.dart';
import 'package:flutter_app/signUp.dart';
import 'secondPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'signUp.dart';
import 'dart:ui' as ui;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.green
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();

}

class LoginPageState extends State<LoginPage> with TickerProviderStateMixin{


  final FirebaseAuth _auth = FirebaseAuth.instance;

  var emailEditingController= TextEditingController();
  var passEditingController= TextEditingController();

  Color gradientStart = Colors.grey; //Change start gradient color here
  Color gradientEnd = Colors.black;


  bool error = false;
  String errorMessage="";
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){

    super.initState();

    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(microseconds: 500)
    );
    _iconAnimation=new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();

    setState((){
      user  =_auth.currentUser();
      if(user != null)
        signedIn = true;
    });

  }
  var user;
  bool signedIn = false;
  Widget build(BuildContext context){

    //if(signedIn)
      //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));

    return new Scaffold(

      //resizeToAvoidBottomInset: false,
      
      
      body: new Stack(

        fit: StackFit.expand,
        children: <Widget>[


          Container(
            decoration:new BoxDecoration(
              color: Colors.black87.withOpacity(.8),
              //colorBlendMode:BlendMode.darken,
            ),
            child: ListView(

              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(40.0)),
                    Image(
                      image: AssetImage("assets/icon.png"),
                      height: _iconAnimation.value * 170,
                      width: _iconAnimation.value * 170,
                      fit: BoxFit.contain,
                    ),
                    new Form(
                      child: new Theme(
                        data: new ThemeData(
                            brightness: Brightness.dark,
                            primarySwatch: Colors.teal,
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle: new TextStyle(
                                    color: Colors.teal, fontSize: 20.0
                                )
                            )
                        ),
                        child: new Container(
                          padding: const EdgeInsets.all(40.0),
                          child: new Column(
                            children: <Widget>[
                              new TextFormField(
                                controller: emailEditingController,
                                decoration: new InputDecoration(
                                  labelText: "Email Address",
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              error ?
                              new Text(errorMessage,style:TextStyle(color: Colors.red)) : Padding(padding: EdgeInsets.all(0)),
                              new TextFormField(
                                controller: passEditingController,
                                decoration: new InputDecoration(
                                  labelText: "Password",
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0),
                              ),
                              Row(

                                children: <Widget>[
                                  Padding( padding: EdgeInsets.all( 25.0 ) ),
                                  new MaterialButton(
                                    height: 50.0,
                                    minWidth: 100.0,
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    child: new Text(
                                        "Login"),
                                    onPressed: ()=>{
                                      setState((){
                                        this.error=false;

                                      }),

                                      _auth.signInWithEmailAndPassword(email: emailEditingController.text.toString(),
                                          password: passEditingController.text.toString()).then((value){
                                        print("Success" + value.user.uid);
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));

                                      }).catchError((e){
                                        print("Failed" + e.toString());
                                        setState(() {
                                          this.error=true;
                                          this.errorMessage = e.toString();
                                        });


                                      })
                                    },
                                  ),
                                  Padding( padding: EdgeInsets.all( 20.0 ) ),
                                  new MaterialButton(

                                    height: 50.0,
                                    minWidth: 100.0,
                                    color: Colors.teal,
                                    textColor: Colors.white,

                                    child: new Text(
                                        "SignUp"),
                                    onPressed: ()=>{
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SignUpPage()),
                                      ),
                                    },

                                  ),
                                ],
                              ),




                            ],

                          ),


                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
