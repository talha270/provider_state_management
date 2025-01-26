import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ThemeChangerProvider with ChangeNotifier{

  ThemeMode _themedata=ThemeMode.system;
  ThemeMode get thememode =>_themedata;

  void changetheme(ThemeMode theme){
    _themedata=theme;
    notifyListeners();
  }
}
