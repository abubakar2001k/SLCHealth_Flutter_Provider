import 'dart:convert';

class LoginModel {
  final String? userName;
  final String? password;

  LoginModel({this.password, this.userName});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
    userName: json['username'],
  password: json['password'],
    );
  }
  Map<String, dynamic> toJson() {
  return {
    'username': userName,
  'password' : password,
  };

  }
}
