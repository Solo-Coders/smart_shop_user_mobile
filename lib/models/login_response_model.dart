import 'dart:convert';
LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.token,
    required this.customerId,
  });
  late final String message;
  late final String token;
  late final String customerId;

  LoginResponseModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    token = json['token'];
    customerId = json['customerId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['token'] = token;
    _data['customerId'] = customerId;
    return _data;
  }
}

