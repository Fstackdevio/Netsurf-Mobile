import 'package:flutter/material.dart';
import 'package:netsurf_pro/pages/home.dart';
import 'package:netsurf_pro/pages/buydata.dart';

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
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text("Adeniyi Mayokun"),
          )          
        ],

      ),
    );
    List<Widget> _screens = [
      HomeScreen(),
      BuyData(),
      Center(
        child: new Text('Share Data'),
      ),
      Center(
        child: new Text('Login History'),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: new Icon(Icons.flight),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
