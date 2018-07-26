import 'package:flutter/material.dart';
import 'package:lumous/utils/lumous.dart';
import 'package:lumous/utils/nav.dart';
import 'package:lumous/widgets/walkthrough.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueAccent),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                Walkthrough(
                  imageIcon: Icons.mood,
                  title: Lumous.wt1,
                  content: Lumous.wc1,
                ),
                Walkthrough(
                  imageIcon: Icons.lock_open,
                  title: Lumous.wt2,
                  content: Lumous.wc2,
                ),
                Walkthrough(
                  imageIcon: Icons.share,
                  title: Lumous.wt3,
                  content: Lumous.wc3,
                ),
                Walkthrough(
                  imageIcon: Icons.verified_user,
                  title: Lumous.wt4,
                  content: Lumous.wc4,
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : Lumous.skip,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null : SwiftNav.goToLogin(context),
                ),
                FlatButton(
                  child: Text(lastPage ? Lumous.gotIt : Lumous.next,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? SwiftNav.goToLogin(context)
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}