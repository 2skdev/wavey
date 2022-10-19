import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel _userModel = UserModel();

  UserModel get user => _userModel;

  void fetch() {
    _userModel = UserModel();
    notifyListeners();
  }
}
