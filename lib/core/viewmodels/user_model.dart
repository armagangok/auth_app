import 'package:flutter/material.dart';
import '../locator/locator.dart';
import '../repository/user_repository.dart';
import '../services/firebase/auth/models/user_model.dart';
import '../services/firebase/services/auth_base.dart';

enum ViewState { idle, busy }

class UserModel with ChangeNotifier implements AuthBase {
  final UserRepository _userRepository = locator<UserRepository>();

  RenewedUser? _user;
  ViewState _state = ViewState.idle;
  ViewState get state => _state;
  RenewedUser? get user => _user;

  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  UserModel() {
    currentUser();
  }

  @override
  RenewedUser? currentUser() {
    try {
      state = ViewState.busy;
      _user = _userRepository.currentUser();
      return _user;
    } catch (e) {
      debugPrint("Error in viewmodel, at currenUser() method. \n [$e]");
      return null;
    } finally {
      state = ViewState.idle;
    } //finally runs wheter or not an error.
  }

  @override
  Future<bool> signOut() async {
    try {
      state = ViewState.busy;
      bool credential = await _userRepository.signOut();
      _user = null;
      return credential;
    } catch (e) {
      debugPrint("Error in viewmodel, at signOut() method. \n [$e]");
      return false;
    } finally {
      state = ViewState.idle;
    }
  }

  @override
  Future<RenewedUser?> signinAnonim() async {
    try {
      state = ViewState.busy;
      _user = await _userRepository.signinAnonim();
      return _user;
    } catch (e) {
      debugPrint("Error in viewmodel, at signOut() method. \n [$e]");
      return null;
    } finally {
      state = ViewState.idle;
    }
  }
}