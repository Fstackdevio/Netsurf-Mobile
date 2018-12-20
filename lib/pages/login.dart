import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/wrapper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, lastly;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(curve: Curves.elasticIn, parent: animationController));
    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.5, 1.0, curve: Curves.elasticIn),
        parent: animationController));
    lastly = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.8, 1.0, curve: Curves.elasticIn),
        parent: animationController));
  }

  bool _obsureText = true;

  void _toggle() {
    setState(() {
      _obsureText = !_obsureText;
    });
  }

  TextEditingController ctrlUser = new TextEditingController();
  TextEditingController ctrlPass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return new Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomPadding: false,
            body: SingleChildScrollView(
              child: new Center(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: new Container(
                          child: new Stack(
                            children: <Widget>[
                              new Container(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                                child: new Text('Hello',
                                    style: new TextStyle(
                                        fontSize: 80.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              new SizedBox(width: 10.0),
                              new Container(
                                padding:
                                    EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                                child: new Text('.',
                                    style: new TextStyle(
                                        fontSize: 80.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue)),
                              )
                            ],
                          ),
                        ),
                      ),
                      new Transform(
                        transform: Matrix4.translationValues(
                            delayedAnimation.value * width, 0.0, 0.0),
                        child: new Container(
                          padding: EdgeInsets.only(
                              top: 35.0, left: 20.0, right: 20.0),
                          child: new Column(
                            children: <Widget>[
                              new TextField(
                                controller: ctrlUser,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person_outline),
                                    labelText: 'Username',
                                    labelStyle: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue))),
                              ),
                              new SizedBox(height: 10.0),
                              new TextField(
                                controller: ctrlPass,
                                obscureText: _obsureText,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock_outline),
                                    labelText: 'Password',
                                    suffixIcon: IconButton(
                                        icon: Icon(Icons.visibility),
                                        onPressed: _toggle),
                                    labelStyle: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue))),
                              )
                            ],
                          ),
                        ),
                      ),
                      new SizedBox(height: 40.0),
                      new Transform(
                        transform: Matrix4.translationValues(
                            lastly.value * width, 0.0, 0.0),
                        child: new Container(
                            height: 40.0,
                            color: Colors.transparent,
                            child: new Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.blueAccent,
                              color: Colors.blue,
                              elevation: 5.0,
                              child: new InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          WrapperScreen()));
                                },
                                child: new Center(
                                  child: new Text('Login',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
