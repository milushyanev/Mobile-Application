import 'package:flutter/material.dart';
import 'package:flutter_app/signUp.dart';
import 'secondPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'signUp.dart';

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


  bool error = false;
  String errorMessage="";
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

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



  }
  Widget build(BuildContext context){


    return new Scaffold(
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.blueAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          new Image(
              image: AssetImage("assets/plogo.jpg"),
          fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode:BlendMode.darken,
          ),

          ListView(
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(50.0)),
                  new FlutterLogo(
                    size: _iconAnimation.value * 65,
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
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                            ),

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


                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
