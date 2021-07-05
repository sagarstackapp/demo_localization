import 'package:demo_localization/common/methods/methods.dart';
import 'package:demo_localization/common/widget/widget.dart';
import 'package:demo_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topMenuBar(context, '${S.of(context).appTitle}'),
      body: homeView(),
    );
  }

  Widget homeView() {
    List homeOption = [
      S.of(context).users,
      S.of(context).localizations,
      S.of(context).theme,
    ];
    return ListView.builder(
      itemCount: homeOption.length,
      itemBuilder: (context, index) {
        var data = homeOption[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 6,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                if (data == '${S.of(context).users}') {
                  goUsers(context);
                } else if (data == '${S.of(context).localizations}') {
                  goLocalization(context);
                } else {
                  goThemes(context);
                }

                Fluttertoast.showToast(
                  msg: data,
                  backgroundColor: Colors.orange,
                  textColor: Colors.white,
                );
                print(data);
              },
              child: Card(
                child: Center(
                  child: Text(
                    data,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  goUsers(BuildContext context) {
    goToUsers(context);
  }

  goLocalization(BuildContext context) {
    goToLocalization(context);
  }

  goThemes(BuildContext context) {
    goToThemes(context);
  }
}
