import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesRoute extends StatefulWidget {
  ResourcesRoute();
  @override
  _ResourcesRoute createState() => _ResourcesRoute();
}
class _ResourcesRoute extends State<ResourcesRoute> {

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
        ),
        new Divider(color: Colors.blue,indent: 16.0,),
        new ListTile(
          leading: new Icon(Icons.web, color: Colors.blueGrey, size: 26.0,),
          title: new Text("GitHub Account"
            ,style: new TextStyle(fontWeight: FontWeight.w700),),
          subtitle: new Text("Click to see Profile"),
          onTap: ()=>_launchURL1(),
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

          title: new Text( "App Info",style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic) )
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
                    height: 400.0,
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
_launchURL1() async {
  const url = 'https://github.com/milushyanev';
  if (await canLaunch( url )) {
    await launch( url );
  } else {
    throw 'Could not launch $url';
  }
}