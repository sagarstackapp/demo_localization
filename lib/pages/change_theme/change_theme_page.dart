import 'package:demo_localization/common/widget/widget.dart';
import 'package:demo_localization/generated/l10n.dart';
import 'package:demo_localization/main.dart';
import 'package:flutter/material.dart';

class Themes extends StatefulWidget {

  @override
  _ThemesState createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topMenuBar(context, '${S.of(context).theme}'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: elevatedButton('Dark', () {
                theme.add(false);
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: elevatedButton('Light', () {
                theme.add(true);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
