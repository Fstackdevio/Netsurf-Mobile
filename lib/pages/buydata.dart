import 'package:flutter/material.dart';


class BuyData extends StatefulWidget{
  @override
  _BuyDataState createState() => new _BuyDataState();
}


class _BuyDataState extends State<BuyData>{
  Widget build(BuildContext context){
    //build function returns a "widget"
    var card =  new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
          leading: Icon(Icons.account_box, color: Colors.blue,size: 26.0),
          title: new Text("Adeniyi Mayokun", style: new TextStyle(fontWeight: FontWeight.w400),),
          subtitle: new Text("Software Developer at FStackDev"),
          )

        ],

      ),
      );
      final sizedBox = new Container(
        margin: new EdgeInsets.only(left: 10.0,  right: 10.0),
        child: new SizedBox(
          height: 420.0,
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

