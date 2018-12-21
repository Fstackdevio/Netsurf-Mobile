import 'package:flutter/material.dart';


class ShareData extends StatefulWidget{
  @override
  _ShareDataState createState() => _ShareDataState();
}


class _ShareDataState extends State<ShareData>{
  Widget build(BuildContext context){
    //build fuction returns a "widget"
     var card =  new Card(
      child: new Column(
        children: <Widget>[
          new IconButton(color: Colors.blue,
         icon: Icon(Icons.favorite),
         iconSize: 120.0,
         padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
       ),
       new Text("Fill in the form below to share data", style: new TextStyle(fontWeight: FontWeight.w300),),
       Padding(padding: EdgeInsets.only(bottom: 30.0 ) ,),

      TextField(decoration: InputDecoration(
         prefixIcon: Icon(Icons.person),
         labelText: 'Enter receipient\'s username',
         labelStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 15.0, ),
  
       ),)
        ],
      )
      
      );
      final sizedBox = new Container(
        margin: new EdgeInsets.only(left: 10.0,  right: 10.0),
        child: new SizedBox(
          height: 420.0,
          width: 420.0,
          child: card,
        ),
      );
      final center = new Center(
        
        child: sizedBox,
        );
      return new MaterialApp(
        title: "",
        home: new Scaffold(
          
          body: center,
        )
        );
  }
}