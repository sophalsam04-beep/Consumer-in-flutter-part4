import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:self_learning2/models/counter_provider.dart';
import 'package:self_learning2/pages/home_page.dart';
import 'package:self_learning2/models/theme_provider.dart';
import 'package:self_learning2/models/counter_provider.dart';
import 'package:self_learning2/pages/home_page.dart';


class ThemeProvider extends ChangeNotifier{
      bool _isDark = false;

      bool get isDark => _isDark;

      void isToggle(){
          _isDark = !_isDark;
          notifyListeners();
      }
}