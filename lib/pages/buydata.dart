import 'package:flutter/material.dart';

class BuyData extends StatefulWidget {
  @override
  _BuyDataState createState() => new _BuyDataState();
}

class _BuyDataState extends State<BuyData> {
  var selected = 0;
  List<DropdownMenuItem<String>> listDrop = [];

  TextEditingController ctrlPin = new TextEditingController();

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('100 MB'),
      value: 'val-1',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('500 MB'),
      value: 'val-2',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('1 GB'),
      value: 'val-3',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('3 GB'),
      value: 'val-4',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('20 GB'),
      value: 'val-5',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('50 GB'),
      value: 'val-6',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      body: SingleChildScrollView(
        child: new Center(
          child: new Container(
            margin: new EdgeInsets.only(left: 10.0, right: 10.0),
            child: new SizedBox(
              height: 420.0,
              width: double.infinity,
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.blue,
                        size: 120.0,
                      ),
                    ),
                    Text('Fill in the form below to buy data',
                        style: new TextStyle(fontWeight: FontWeight.w300)),
                    Spacer(),
                    Container(
                      child: new Center(
                        child: new DropdownButton(
                          value: selected,
                          items: listDrop,
                          hint: new Text('Select data amount',
                              style:
                                  new TextStyle(fontWeight: FontWeight.w600)),
                          onChanged: (value) {
                            setState(() {
                              selected = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                      child: new TextField(
                        controller: ctrlPin,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fiber_pin),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          contentPadding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          labelText: 'Enter Secret Pin',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 15.0),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: new Center(
                        child: RaisedButton(
                          color: Colors.blue,
                          elevation: 4.0,
                          onPressed: () {},
                          splashColor: Colors.blue,
                          child: new Text('Done'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
