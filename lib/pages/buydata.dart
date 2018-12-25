import 'package:flutter/material.dart';
import 'package:netsurf_pro/tools/ensure_visible.dart';

class BuyData extends StatefulWidget {
  @override
  _BuyDataState createState() => new _BuyDataState();
}

class _BuyDataState extends State<BuyData> {
  FocusNode _focusPin = new FocusNode();
  TextEditingController ctrlPin = new TextEditingController();

  int selected = 0;
  List<DropdownMenuItem<String>> _listDrop = [];
  String _selectedPlan;
  List<String> dataList = new List();

  void initstate() {
    super.initState();
    dataList = new List.from(quota);
    _listDrop = buildList(dataList);
    _selectedPlan = _listDrop[0].value;
  }

  void changeDataType(String selectedPlan) {
    setState(() {
      _selectedPlan = selectedPlan;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      padding:
                          const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.blue,
                        size: 120.0,
                      ),
                    ),
                    Text('Fill in the form below to buy data',
                        style: new TextStyle(fontWeight: FontWeight.w300)),
                    Spacer(),
                    _dataDropDown(
                      text: 'Data Plan',
                      selectPlan: _selectedPlan,
                      listDrop: _listDrop,
                      changedDropDownPlan: changeDataType,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: EnsureVisible(
                        focusNode: _focusPin,
                        child: new TextField(
                          controller: ctrlPin,
                          focusNode: _focusPin,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fiber_pin),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            contentPadding: const EdgeInsets.only(
                                left: 10.0, right: 10.0),
                            labelText: 'Enter Secret Pin',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: new Center(
                        child: RaisedButton(
                          elevation: 4.0,
                          onPressed: () => null,
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

Widget _dataDropDown(
    {String text,
    String selectPlan,
    List<DropdownMenuItem<String>> listDrop,
    ValueChanged<String> changedDropDownPlan}) {
  return new DropdownButtonHideUnderline(
    child: Container(
      child: Center(
        child: new DropdownButton(
          value: selectPlan,
          items: listDrop,
          onChanged: changedDropDownPlan,
          hint:
              new Text(text, style: new TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
    ),
  );
}

List<DropdownMenuItem<String>> buildList(List data) {
  List<DropdownMenuItem<String>> items = new List();
  for (String data in data) {
    items.add(new DropdownMenuItem(value: data, child: new Text(data)));
  }
  return items;
}

List<String> quota = [
  "50 MB",
  "100 MB",
  "150 MB",
  "200 MB",
  "300 MB",
  "500 MB",
  "1 GB",
  "3 GB",
  "5 GB",
  "10 GB",
  "20 GB",
  "50 GB"
];
