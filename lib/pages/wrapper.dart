import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/buydata.dart';
import 'package:netsurf_pro/pages/home.dart';
import 'package:netsurf_pro/pages/sharedata.dart';
import 'package:netsurf_pro/pages/loginhistory.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => new _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      BuyData(),
      ShareData(),
      LoginHistory()
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.lightBlue,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Buy Data'), icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              title: Text('Share Data'), icon: Icon(Icons.card_giftcard)),
          BottomNavigationBarItem(
              title: Text('Login History'), icon: Icon(Icons.timer))
        ],
      ),
    );
  }
}
