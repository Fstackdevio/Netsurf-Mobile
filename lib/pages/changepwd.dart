import 'package:flutter/material.dart';
import 'package:netsurf_pro/tools/ensure_visible.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => new _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  FocusNode _focusUser = new FocusNode();
  FocusNode _focusOldPwd = new FocusNode();
  FocusNode _focusNewPwd = new FocusNode();
  FocusNode _focusConfirmPwd = new FocusNode();
  FocusNode _focusPin = new FocusNode();
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
                            child: EnsureVisible(
                              focusNode: _focusUser,
                              child: new TextField(
                                  controller: ctrlUser,
                                  focusNode: _focusUser,
                                  keyboardType: TextInputType.text,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'john.doe',
                                  )),
                            )))),
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
                            child: EnsureVisible(
                              focusNode: _focusOldPwd,
                              child: new TextField(
                                  controller: ctrlOldPwd,
                                  focusNode: _focusOldPwd,
                                  keyboardType: TextInputType.text,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '.....',
                                  )),
                            )))),
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
                            child: EnsureVisible(
                              focusNode: _focusNewPwd,
                              child: new TextField(
                                  controller: ctrlNewPwd,
                                  focusNode: _focusNewPwd,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '.....',
                                  )),
                            )))),
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
                            child: EnsureVisible(
                              focusNode: _focusConfirmPwd,
                              child: new TextField(
                                  controller: ctrlConfirmPwd,
                                  focusNode: _focusConfirmPwd,
                                  keyboardType: TextInputType.url,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '.....',
                                  )),
                            )))),
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
                            child: EnsureVisible(
                              focusNode: _focusPin,
                              child: new TextField(
                                  controller: ctrlPin,
                                  focusNode: _focusPin,
                                  keyboardType: TextInputType.url,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '....',
                                  )),
                            )))),
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
