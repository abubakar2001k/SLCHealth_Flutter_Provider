import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slc_health/presentation/login-screen/models/login_model.dart';

import '../../core/utils/app_routes.dart';
import '../../network/api_services/custtom_api_services.dart';

class LogInVm extends ChangeNotifier {
  bool _isObscure = true;

  bool get isObscure => _isObscure;

  Future<void> visibalty() async {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final LoginModel loginModel = LoginModel();

  Future<String> loginFunction(
      // String username, String userPassword,
      BuildContext context
      ) async {
    final userName = userNameController.text.trim();
    final password = passwordController.text.trim();

    LoginModel loginModel = LoginModel(
      userName: userName,
      password: password,
    );
    CustomApiServices apiService = CustomApiServices(baseUrl: "https://fakestoreapi.com/");
    try {
      if (userName.isEmpty || password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please fill in all fields")),
        );
      }
      final response = await apiService.post(
        'auth/login',
        loginModel.toJson(),
      );
      // Save the user's email and UID in SharedPreferences if login is successful
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('username', userName);
      await sharedPreferences.setString('userId', response['userId'] ?? '');
      await sharedPreferences.setBool('isLoggedIn', true);


      Navigator.pushReplacementNamed(context, AppRoutes.home_screen);
      userNameController.clear();
      passwordController.clear();
      notifyListeners();
      return response.toString();
    } catch (e) {
      debugPrint('Login failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: $e')),
      );
      return 'Login failed: $e';
    }
  }
}
