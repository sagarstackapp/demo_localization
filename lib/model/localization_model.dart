import 'package:flutter/cupertino.dart';

class LocalizationModel {
  String languageCode;
  String countryCode;
  String languageName;

  LocalizationModel({
    @required this.languageCode,
    @required this.countryCode,
    this.languageName,
  });
}
