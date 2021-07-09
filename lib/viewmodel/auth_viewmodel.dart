import 'package:flutter/material.dart';
import 'package:virtual_mask/routes/route_name.dart';
import 'package:virtual_mask/viewmodel/base_viewmodel.dart';
import 'package:rxdart/rxdart.dart';

 /// Auth view model
class AuthViewModel extends BaseViewModel {


  final BehaviorSubject<bool> _isLoginSubject = BehaviorSubject<bool>();

  BehaviorSubject<bool> get isLoginSubject => _isLoginSubject;

 /// navigate to login screen
  void navigateToLoginScreen(BuildContext context){
    Navigator.pushNamed(context, RouteName.registerIntroScreen);
  }

  // /// to check whether the user is authorized or not
  // Future<bool> isUserAuth() async {
  //   try {
  //
  //     final value = await SecureStorage().getAccessToken() != null && await SecureStorage().getRefreshToken() != null && await SecureStorage().isAuthenticated() != null;
  //     _isLoginSubject.sink.add(value);
  //     log('isLoggedIn: ${await SecureStorage().getAccessToken()}');
  //     return value;
  //   } catch (e, stacktrace) {
  //     sentryCaptureException(e, stackTrace: stacktrace);
  //     _isLoginSubject.sink.add(false);
  //     return false;
  //     // hideLoadingDialogFS(context);
  //   }
  // }


}
