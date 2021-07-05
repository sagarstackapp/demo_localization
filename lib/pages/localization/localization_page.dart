import 'package:demo_localization/common/const/color.dart';
import 'package:demo_localization/common/methods/methods.dart';
import 'package:demo_localization/common/widget/widget.dart';
import 'package:demo_localization/generated/l10n.dart';
import 'package:demo_localization/model/localization_model.dart';
import 'package:demo_localization/pages/home/home_page.dart';
import 'package:demo_localization/service/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Localization extends StatefulWidget {
  const Localization({Key key}) : super(key: key);

  @override
  _LocalizationState createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Center(child: Text('${S.of(context).localization}')),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: ColorResource.White,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ),
        preferredSize: Size(double.infinity, 80),
      ),
      body: localizationList(),
    );
  }

  Widget localizationList() {
    List<LocalizationModel> localizationOption = [
      LocalizationModel(
          languageCode: 'en',
          countryCode: 'Us',
          languageName: '${S.of(context).english}'),
      LocalizationModel(
          languageCode: 'pt',
          countryCode: 'BR',
          languageName: '${S.of(context).portuguese}'),
    ];
    return ListView.builder(
      itemCount: localizationOption.length,
      itemBuilder: (context, index) {
        var data = localizationOption[index];
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: elevatedButton(data.languageName, () {
            setState(() {
              AppLocalization.load(Locale(data.languageCode, data.countryCode));
            });
            Fluttertoast.showToast(
              msg: 'Current Language : ${data.languageName}',
              backgroundColor: Colors.orange,
              textColor: Colors.white,
            );
            print('Current Language : ${data.languageName}');
          }),
        );
      },
    );
  }

  goHome(BuildContext context) {
    goToHome(context);
  }
}
