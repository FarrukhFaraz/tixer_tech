import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/Model/login_model.dart';
import 'package:test_project/Servies/navigator_service.dart';
import 'package:test_project/Views/UI/main_screen.dart';

class LoginProvider extends ChangeNotifier {
  final LoginModel _service;

  LoginModel get service => _service;

  LoginProvider(this._service);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  GlobalKey<FormState> get formKey => _formKey;

  bool rememberMe = false;

  void changeCheckBox1() {
    rememberMe = !rememberMe;
    notifyListeners();
  }

  login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      saveValue();
      NavigatorService.navReplace(context, const MainScreen());
    }
  }

  saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      if (rememberMe) {
        prefs.setString('id', '1');
      }
      prefs.setString('email', _emailController.text);
  }
}
