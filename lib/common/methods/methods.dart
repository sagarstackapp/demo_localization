import 'package:demo_localization/pages/change_theme/change_theme_page.dart';
import 'package:demo_localization/pages/home/home_page.dart';
import 'package:demo_localization/pages/localization/localization_page.dart';
import 'package:demo_localization/pages/users/users_page.dart';
import 'package:flutter/material.dart';

goToHome(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
}

goToLocalization(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => Localization()));
}

goToThemes(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Themes()));
}

goToUsers(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Users()));
}
