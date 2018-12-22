import 'package:flutter/material.dart';
import 'package:netsurf_pro/tools/custom_shape.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => new _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController ctrlWallet = new TextEditingController();
  TextEditingController ctrlUser = new TextEditingController();
  TextEditingController ctrlAmt = new TextEditingController();
  TextEditingController ctrlPin = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(
      child: Stack(children: <Widget>[
        new ClipPath(
          clipper: new CustomShape(),
          child: new Container(
            height: 300.0,
            width: double.infinity,
            color: Colors.blue,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(
                  Icons.shopping_basket,
                  size: 50.0,
                  color: Colors.white,
                ),
                new Text(
                  'Fill in the form below to buy data',
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        // Column(
        //   children: <Widget>[
        //     SizedBox(
        //       height: 250.0,
        //     ),
        //     new Container(
        //       height: 200.0,
        //       padding: EdgeInsets.all(16.0),
        //       decoration: BoxDecoration(
        //         color: Colors.lime,
        //       ),
        //       child: Row(
        //         mainAxisSize: MainAxisSize.max,
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: <Widget>[
        //           Column(
        //             children: <Widget>[
        //               TextFormField(
        //                   controller: ctrlWallet,
        //                   decoration: InputDecoration(
        //                     prefixIcon: Icon(Icons.person_outline),
        //                     suffixIcon: Icon(Icons.edit),
        //                     hintText: 'E-wallet Account Number',
        //                     hintStyle: new TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.grey),
        //                   )),
        //               SizedBox(
        //                 height: 20.0,
        //               ),
        //               TextFormField(
        //                   controller: ctrlUser,
        //                   decoration: InputDecoration(
        //                     prefixIcon: Icon(Icons.person_add),
        //                     hintText: 'Username',
        //                     hintStyle: new TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.grey),
        //                   )),
        //               SizedBox(
        //                 height: 20.0,
        //               ),
        //               TextFormField(
        //                   controller: ctrlUser,
        //                   decoration: InputDecoration(
        //                     prefixIcon: Icon(Icons.lock_open),
        //                     hintText: 'Secret Pin or E-wallet Pin',
        //                     hintStyle: new TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.grey),
        //                   )),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20.0,
        //     )
        //   ],
        // ),
      ]),
    ));
  }
}
