import 'package:flutter/material.dart';
import 'package:app_dev/themes/dark.dart';
import 'package:app_dev/themes/light.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = light;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == dark;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if (_themeData == light){
      themeData = dark;
    }
    else {
      themeData = light;
    }
  }
}