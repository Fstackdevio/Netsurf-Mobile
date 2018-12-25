import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => new _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController ctrlUser = new TextEditingController();
  TextEditingController ctrlOldPwd = new TextEditingController();
  TextEditingController ctrlNewPwd = new TextEditingController();
  TextEditingController ctrlConfirmPwd = new TextEditingController();
  TextEditingController ctrlPin = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent),
        title: Text(
          'Change Password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: new SingleChildScrollView(
        child: new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new SizedBox(
                  height: 30.0,
                ),
                new Row(children: <Widget>[
                  Center(
                    child: new Text(
                      'Please fill the form below to change your password',
                      style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
                SizedBox(height: 30.0),
                new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.black12),
                            borderRadius: new BorderRadius.circular(4.0)),
                        child: new Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: new TextField(
                                controller: ctrlUser,
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'john.doe',
                                ))))),
                new SizedBox(height: 10.0),
                new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Old Password',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.black12),
                            borderRadius: new BorderRadius.circular(4.0)),
                        child: new Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: new TextField(
                                controller: ctrlOldPwd,
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '.....',
                                ))))),
                new SizedBox(height: 10.0),
                new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'New Password',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.black12),
                            borderRadius: new BorderRadius.circular(4.0)),
                        child: new Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: new TextField(
                                controller: ctrlNewPwd,
                                keyboardType: TextInputType.number,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '.....',
                                ))))),
                new SizedBox(height: 10.0),
                new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Confirm New Password',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.black12),
                            borderRadius: new BorderRadius.circular(4.0)),
                        child: new Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: new TextField(
                                controller: ctrlConfirmPwd,
                                keyboardType: TextInputType.url,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '.....',
                                ))))),
                new SizedBox(height: 10.0),
                new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Secret Pin',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.black12),
                            borderRadius: new BorderRadius.circular(4.0)),
                        child: new Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: new TextField(
                                controller: ctrlPin,
                                keyboardType: TextInputType.url,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '....',
                                ))))),
                SizedBox(height: 20.0),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(150.0),
                            child: InkWell(
                                onTap: () {},
                                child: new Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  width: 30.0,
                                  decoration: new BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Text(
                                          'Update',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                ))))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
