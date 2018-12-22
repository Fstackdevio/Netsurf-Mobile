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

          new IconButton(color: Colors.blue,
         icon: Icon(Icons.shopping_cart),
         iconSize: 120.0,
         padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
       ),
       new Text("Fill in the form below to buy data", style: new TextStyle(fontWeight: FontWeight.w300),),
       Padding(padding: EdgeInsets.only(bottom: 30.0 ) ,),
          

        ],

      ),
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

