import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileRoute extends StatefulWidget {
  ProfileRoute();
  @override
  _ProfileRoute createState() => _ProfileRoute();
}

class _ProfileRoute extends State<ProfileRoute> {

  bool error = false;

  String errorMessage="";


  final FirebaseAuth _auth = FirebaseAuth.instance;


  var emailEditingController= TextEditingController();
  var passEditingController= TextEditingController();
  var firstNameEditingController= TextEditingController();
  var lastNameEditingController= TextEditingController();
  var ageEditingController= TextEditingController();


  var card = new Card(
    color: Colors.white.withOpacity(.7),
    child: new Column(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.account_box, color: Colors.blueGrey,size: 26.0,),
          title: new Text("Milush Yanev"
            ,style: new TextStyle(fontWeight: FontWeight.w700),),
          subtitle: new Text("Mobile Application Project"),

        ),
        new Divider(color: Colors.blue,indent: 16.0,),
        new ListTile(
          leading: new Icon(Icons.email, color: Colors.blueGrey, size: 26.0,),
          title: new Text("myanev@cpp.edu"
            ,style: new TextStyle(fontWeight: FontWeight.w700),),
        ),
        new Divider(color: Colors.blue,indent: 16.0,),
        new ListTile(
          leading: new Icon(Icons.phone, color: Colors.blueGrey, size: 26.0,),
          title: new Text("+1-951-316-2882"
            ,style: new TextStyle(fontWeight: FontWeight.w700),),
        ),new Divider(color: Colors.blue,indent: 16.0,),
        new ListTile(
          leading: new Icon(Icons.add_location, color: Colors.blueGrey, size: 26.0,),
          title: new Text("Easvale  CA  91752"
            ,style: new TextStyle(fontWeight: FontWeight.w700),),
        )
      ],
    ),
  );

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),

          title: new Text( "User Profile",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
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
                Padding(padding: EdgeInsets.all(50.0)),
                new Container(

                ),
                new Container(
                  margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                  color: Colors.white.withOpacity(0.8),
                  child: new SizedBox(
                      height: 310.0,
                      child: card
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
