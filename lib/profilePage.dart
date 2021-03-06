import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_app/main.dart';
import 'dart:io';

class ProfileRoute extends StatefulWidget {
  ProfileRoute();
  @override
  _ProfileRoute createState() => _ProfileRoute();
}

class _ProfileRoute extends State<ProfileRoute> {
  File _image;
  @override




    var user;
    static  String firstName = "";
    static String lastName = "";
    String age = "";
    static String email = "";
    static int timeStamp=0;
    String image='';



    Future getImage() async{
      var image=await ImagePicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image=image;
        print('Image Path $_image');

      });
    }

    Future<void> uploadFile(File image) async {
      StorageReference storageReference = FirebaseStorage.instance
          .ref( )
          .child( 'profile/' + user.uid.toString( ) );
      StorageUploadTask uploadTask = storageReference.putFile( image );
      await uploadTask.onComplete;
      storageReference.getDownloadURL( ).then( (fileURL) async {
        await Firestore.instance.collection( 'users' ).document( user.uid )
            .updateData( {
          'img': fileURL,
        } );
      } );


    }


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
          image=doc.data['img'];
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
    @override
    var date = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    var formattedDate = DateFormat.yMMMd().format(date);



    return new Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(.8),

          title: new Text( "$firstName`s Profile",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.rotate_left),onPressed: (){
            _auth.signOut();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()));

          } )
        ],
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
                     Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           SizedBox(height: 20.0,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsets.only( left: 30)),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   backgroundColor: Colors.white.withOpacity(.7),
                                   radius: 100,
                                   child: ClipOval(
                                     child: SizedBox(
                                       width: 180,
                                       height: 180,
                                       child: (_image!=null)?Image.file(
                                         _image,
                                         fit: BoxFit.fill,
                                       ):
                                       Image.network(image,
                                       fit:BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                               ),
                               Padding(
                                   padding: EdgeInsets.only(top: 60, left: 5),
                                 child: Container(
                                   child: Column(
                                     children: <Widget>[
                                       IconButton(
                                         icon:Icon(
                                           Icons.camera_enhance,
                                           size: 30.0,
                                             color: Colors.white70
                                         ),
                                         onPressed: (){
                                           getImage();
                                         },
                                       ),
                                       IconButton(
                                         icon:Icon(
                                             Icons.save,
                                             size: 30.0,
                                             color: Colors.white70
                                         ),
                                         onPressed: (){

                                           uploadFile(_image);

                                         },
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Padding(padding: EdgeInsets.all(10.0)),
                           Container(
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
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                             ),
                           ),
                         ],
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
