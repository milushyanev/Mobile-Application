import 'package:flutter/material.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        home: new SignUpPage(),
        theme: new ThemeData(
            primarySwatch: Colors.green
        )
    );
  }
}

class SignUpPage extends StatefulWidget{
  @override
  State createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> with TickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  bool error = false;

  String errorMessage="";


  final FirebaseAuth _auth = FirebaseAuth.instance;

  var emailEditingController= TextEditingController();
  var passEditingController= TextEditingController();
  var firstNameEditingController= TextEditingController();
  var lastNameEditingController= TextEditingController();
  var ageEditingController= TextEditingController();


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

  }
  Widget build(BuildContext context){
    return new Scaffold(
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.blueAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
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
                  new FlutterLogo(
                    size: _iconAnimation.value * 50,
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
                            new TextFormField(
                              controller: firstNameEditingController,
                              decoration: new InputDecoration(
                                labelText: "First Namer",
                              ),
                              keyboardType: TextInputType.text,

                            ),
                            new TextFormField(
                              controller: lastNameEditingController,
                              decoration: new InputDecoration(
                                labelText: "Last Name",
                              ),
                              keyboardType: TextInputType.text,

                            ),
                            new TextFormField(
                              controller: ageEditingController,
                              decoration: new InputDecoration(
                                labelText: "Age",
                              ),
                              keyboardType: TextInputType.text,

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
                                  "SignUp"),
                              onPressed: ()=>{
                                setState((){
                                  this.error=false;

                                }),

                                print(emailEditingController.text.toString()),

                                print(passEditingController.text.toString()),

                                _auth.createUserWithEmailAndPassword(email:
                                emailEditingController.text.toString(),
                                    password: passEditingController.text.toString())
                                    .then((value) async {
                                  String lname = lastNameEditingController.text.toString();
                                  String fname = firstNameEditingController.text.toString();
                                  String age=ageEditingController.text.toString();
                                  String email = emailEditingController.text.toString();
                                  final CollectionReference usersCollection = Firestore.instance.collection('users');
                                  await usersCollection.document(value.user.uid).setData({
                                    'fname' : fname,
                                    'lname' : lname,
                                    'age'   : age,
                                    'email' : email,
                                    'timestamp': DateTime.now().toUtc().millisecondsSinceEpoch


                                  });

                                })
                                    .catchError((error) {
                                  setState(() {
                                    this.error = true;
                                    this.errorMessage = error.toString();
                                  });
                                }),


                              },

                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
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
