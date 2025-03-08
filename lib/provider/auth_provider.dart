import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isPasswordVisible = false;
  bool _isTermsAccepted = false;

  bool isTermsAccepted() => _isTermsAccepted;
  void onTermsCheckBoxClick() {
    _isTermsAccepted = !_isTermsAccepted;
    notifyListeners();
  }
}
