import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/changepwd.dart';

class SettingsScreen extends StatefulWidget {
  final choice;
  final wish;
  final userImage;
  final userName;
  final userId;
  final appId;

  SettingsScreen(this.choice, this.userId, this.appId, this.userImage,
      this.userName, this.wish);
  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool choice = false;
  bool wish = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                  image: NetworkImage('url'), fit: BoxFit.cover),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: new Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new SizedBox(
                  height: 20.0,
                ),
                new Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: new Text(
                      'Account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0),
                    child: new Text(
                      'kalango.michael',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'User Identity',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0),
                    child: new Text(
                      '1500455',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'App Identity',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0),
                    child: new Text(
                      'NS-00021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '..........',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChangePassword()));
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'eWallet Pin',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0, bottom: 30.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '....',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Security',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Linked eWallet',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 20.0, bottom: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Two-Factor Authentication',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Notifications',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Push Notifications',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Switch(
                          value: choice ? true : false,
                          onChanged: (nofiyChoice) {
                            setState(() {
                              choice = nofiyChoice;
                              print(choice);
                            });
                          },
                        )
                      ],
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'App Alert',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            new Text(
                              'Eg. Sound and vibrations',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Switch(
                          value: wish ? true : false,
                          onChanged: (alertChoice) {
                            setState(() {
                              wish = alertChoice;
                              print(choice);
                            });
                          },
                        )
                      ],
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Support',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Help Center',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 20.0, bottom: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Report a Problem',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'About',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Privacy Policy',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 20.0, bottom: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Terms of Use',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Data Usage Stats',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0, bottom: 30.0),
                    child: new Slider(
                      value: 50,
                      min: 0.0,
                      max: 100.0,
                      activeColor: Colors.blueAccent,
                      inactiveColor: Colors.grey,
                      onChanged: null,
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: new Divider(
                    height: 1.0,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      'Auth',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Logout of kalango.michael',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 20.0, bottom: 50.0),
                    child: InkWell(
                      onTap: () {},
                      child: new Text(
                        'Global logout',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
