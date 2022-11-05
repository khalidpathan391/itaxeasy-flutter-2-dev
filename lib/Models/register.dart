// To parse this JSON data, do
//
//     final register = registerFromJson(jsonString);

import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
  Register({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.pincode,
  });

  String firstName;
  String lastName;
  String email;
  String password;
  String phone;
  String pincode;

  factory Register.fromJson(Map<String, dynamic> json) => Register(
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
    pincode: json["pincode"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "password": password,
    "phone": phone,
    "pincode": pincode,
  };
}
