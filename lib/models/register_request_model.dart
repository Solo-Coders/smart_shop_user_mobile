class RegisterRequestModel {
  RegisterRequestModel({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.number,
    required this.address,
  });
  late final String email;
  late final String password;
  late final String firstName;
  late final String lastName;
  late final String number;
  late final String address;

  RegisterRequestModel.fromJson(Map<String, dynamic> json){
    email = json['email'];
    password = json['password'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    number = json['number'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['password'] = password;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['number'] = number;
    _data['address'] = address;
    return _data;
  }
}

class Address {
  Address({
    required this.lineOne,
    required this.lineTwo,
  });
  late final String lineOne;
  late final String lineTwo;

  Address.fromJson(Map<String, dynamic> json){
    lineOne = json['line_one'];
    lineTwo = json['line_two'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['line_one'] = lineOne;
    _data['line_two'] = lineTwo;
    return _data;
  }
}