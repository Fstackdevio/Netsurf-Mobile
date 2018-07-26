import 'package:flutter/material.dart';

class SwiftNav {
  static void goToSplash(BuildContext context) {
    Navigator.pushNamed(context, "/splash");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToWrapper(BuildContext context) {
    Navigator.pushNamed(context, "/wrapper");
  }

    static void goToAlert(BuildContext context) {
    Navigator.pushNamed(context, "/alert");
  }

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToWallet(BuildContext context) {
    Navigator.pushNamed(context, "/wallet");
  }

  static void goToProfile(BuildContext context) {
    Navigator.pushNamed(context, "/profile");
  }

  static void goToBalance(BuildContext context) {
    Navigator.pushNamed(context, "/balance");
  }

  static void goToBuy(BuildContext context) {
    Navigator.pushNamed(context, "/buy");
  }

  static void goToShare(BuildContext context) {
    Navigator.pushNamed(context, "/share");
  }

  static void goToChange(BuildContext context) {
    Navigator.pushNamed(context, "/change");
  }

  static void goToHistory(BuildContext context) {
    Navigator.pushNamed(context, "/history");
  }

  static void goToNetwork(BuildContext context) {
    Navigator.pushNamed(context, "/network");
  }

  static void goToSettings(BuildContext context) {
    Navigator.pushNamed(context, "/settings");
  }
}