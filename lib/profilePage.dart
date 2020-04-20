import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class ProfileRoute extends StatefulWidget {
  ProfileRoute();
  @override
  _ProfileRoute createState() => _ProfileRoute();
}

class _ProfileRoute extends State<ProfileRoute> {

  bool error = false;

  String errorMessage="";
  var user;
   static  String firstName = "";
  static String lastName = "";
  String age = "";
   static String email = "";
   static int timeStamp=0;


  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future getUserInfo() async {
    user = await _auth.currentUser();

    await Firestore.instance.collection('users').document(user.uid).get().then((doc){

      if(doc.exists) {

        setState(() {
          firstName = doc.data['fname'];
          lastName=doc.data['lname'];
          age=doc.data['age'];
          timeStamp=doc.data['timestamp'];
          email=doc.data['email'];


        });
      }
      else {
        // document doesn't exist
      }
    });
  }

  @override
  void initState() {
    getUserInfo();

  }

  Widget build(BuildContext context) {

    getUserInfo();
    var date = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    var formattedDate = DateFormat.yMMMd().format(date);

    //print(formattedDate);

    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),

          title: new Text( "$firstName`s Profile",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
      ),
      body:
      Builder(
        builder:(context)=>
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20.0,),
                          Row(

                          )
                        ],
                      ),

                    ),
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                      color: Colors.white.withOpacity(0.8),
                      child: new SizedBox(
                          height: 310.0,
                          child: Container(
                              child: Card(

                                color: Colors.white.withOpacity(.7),
                                child:  Column(
                                  children: <Widget>[
                                    ListTile(
                                      leading:  Icon(Icons.account_box, color: Colors.blueGrey,size: 26.0,),
                                      title: Text("$firstName $lastName"
                                        ,style:  TextStyle(fontWeight: FontWeight.w700),),
                                      subtitle:  Text("Mobile Application Project"),

                                    ),
                                     Divider(color: Colors.blue,indent: 16.0,),
                                     ListTile(
                                      leading:  Icon(Icons.email, color: Colors.blueGrey, size: 26.0,),
                                      title:  Text("$email"
                                        ,style:  TextStyle(fontWeight: FontWeight.w700),),
                                    ),
                                     Divider(color: Colors.blue,indent: 16.0,),
                                     ListTile(
                                      leading:  Icon(Icons.calendar_view_day, color: Colors.blueGrey, size: 26.0,),
                                      title:  Text("Account Created on: $formattedDate"
                                        ,style:  TextStyle(fontWeight: FontWeight.w700),),
                                    ), Divider(color: Colors.blue,indent: 16.0,),
                                     ListTile(
                                      leading:  Icon(Icons.calendar_today, color: Colors.blueGrey, size: 26.0,),
                                      title:  Text("Age: $age"
                                        ,style:  TextStyle(fontWeight: FontWeight.w700),),
                                    )
                                  ],
                                ),
                              ),
                          )
                      ),

                    ),


                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
