import 'package:flutter/material.dart';


class BuyData extends StatefulWidget{
  @override
  _BuyDataState createState() => new _BuyDataState();
}


class _BuyDataState extends State<BuyData>{
  List<DropdownMenuItem<String>> listDrop = [];
  String selected = null;

  void loadData(){
    listDrop = [];
    listDrop.add(new DropdownMenuItem(child: new Text('100 MB for 1 day'), value: 'val-1',));
    listDrop.add(new DropdownMenuItem(child: new Text('500 MB for 3 days'), value: 'val-2',));
    listDrop.add(new DropdownMenuItem(child: new Text('1 GB for 3 days'), value: 'val-3',));
    listDrop.add(new DropdownMenuItem(child: new Text('3 GB for 7 days'), value: 'val-4',));
    listDrop.add(new DropdownMenuItem(child: new Text('20 GB for 20 days'), value: 'val-5',));
  }
  Widget build(BuildContext context){
    loadData();
    //build function returns a "widget"
    var card =  new Card(
      child: new Column(
        children: <Widget>[
          new IconButton(color: Colors.blue,
         icon: Icon(Icons.shopping_cart),
         iconSize: 120.0,
         padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
       ),
       new Text("Fill in the form below to buy data",
        style: new TextStyle(fontWeight: FontWeight.w300),),
       Padding(padding: EdgeInsets.only(bottom: 30.0 ) ,),
       
       new Container(
       
         child: new Center(
           child: new DropdownButton(
             value: selected,
             items: listDrop,
             hint: new Text("Select data amount", style: new TextStyle(fontWeight: FontWeight.w600),),
             onChanged: (value) {
               selected = value;
               setState(() {
                                
                              });
             },
           ),
         ),
       ),
        new Container(
          padding: 
          EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          
      child: new TextField(decoration: InputDecoration(
         prefixIcon: Icon(Icons.fiber_pin), border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
         contentPadding: const EdgeInsets.only(left: 10.0,right: 10.0,),
      
         labelText: 'Enter secret pin',
         labelStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 15.0, ),
  
       ),)
        ),

        new Container(
          padding: EdgeInsets.only(top: 40.0),
          child: new Center(
            child: new RaisedButton(
              child: const Text("Done"),
              elevation: 4.0,
              onPressed: (null),
              splashColor: Colors.blue,
            )
          ),
        )
       ],


      ),
      
      );
      final sizedBox = new Container(
        margin: new EdgeInsets.only(left: 10.0,  right: 10.0),
        child: new SizedBox(
          height: 420.0,
          width: double.infinity,
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

