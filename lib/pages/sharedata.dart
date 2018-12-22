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

        new Container(
          padding: 
          EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          
      child: new TextField(decoration: InputDecoration(
         prefixIcon: Icon(Icons.person),
      
         labelText: 'Enter receipient\'s username',
         labelStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 15.0, ),
  
       ),)
        ),
         new Container(
          padding: 
          EdgeInsets.only(left: 15.0, right: 15.0),
          
      child: new TextField(decoration: InputDecoration(
         prefixIcon: Icon(Icons.fiber_pin),
      
         labelText: 'Enter secret pin',
         labelStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 15.0, ),
  
       ),)
        )
        ],
      )
      
      );
      final sizedBox = new Container(
        padding: new EdgeInsets.only(left: 10.0,  right: 10.0,),

         
        child: new SizedBox(
          height: 450.0,
          width: 420.0,
          child: card,
        ),
      );
      final center = new Center(
        
        child: sizedBox,
        );
      return new MaterialApp(
       
      home: new Scaffold(
          
          body: center,
        )
        );
  }
}