import 'package:flutter/material.dart';

class SelectedNationality with ChangeNotifier {
  String? _value;

  String? get value => _value;

  set value(String? newValue) {
    _value = newValue;
    notifyListeners();
  }
}
