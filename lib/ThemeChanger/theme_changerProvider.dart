
import 'package:flutter/material.dart';

class ThemeChangerProvider extends ChangeNotifier{
var  _thememode=ThemeMode.light;
ThemeMode get thememode =>_thememode;
void setTheme(thememode){
  _thememode=thememode;
  notifyListeners();
}
}