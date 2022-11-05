// To parse this JSON data, do
//
//     final registerUser = registerUserFromJson(jsonString);

import 'dart:convert';

RegisterUser registerUserFromJson(String str) => RegisterUser.fromJson(json.decode(str));

String registerUserToJson(RegisterUser data) => json.encode(data.toJson());

class RegisterUser {
  RegisterUser({
    this.success,
    this.results,
  });

  bool success;
  Results results;

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
    success: json["success"],
    results: Results.fromJson(json["results"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "results": results.toJson(),
  };
}

class Results {
  Results({
    this.status,
    this.message,
    this.data,
    this.token,
  });

  int status;
  String message;
  Data data;
  String token;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
    "token": token,
  };
}

class Data {
  Data({
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.pincode,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String email;
  String firstName;
  String lastName;
  String phone;
  String pincode;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phone: json["phone"],
    pincode: json["pincode"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "phone": phone,
    "pincode": pincode,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
