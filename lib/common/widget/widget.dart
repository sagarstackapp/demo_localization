import 'package:demo_localization/common/const/color.dart';
import 'package:flutter/material.dart';

import 'elevated_btn.dart';

Widget topMenuBar(BuildContext context, String title) {
  return PreferredSize(
    child: AppBar(
      title: Center(child: Text(title)),
    ),
    preferredSize: Size(double.infinity, 80),
  );
}

Widget elevatedButton(String text, VoidCallback onPressed) {
  return CommonElevatedButton(
    text: text,
    textColor: ColorResource.White,
    buttonColor: ColorResource.Blue,
    onPressed: onPressed,
  );
}