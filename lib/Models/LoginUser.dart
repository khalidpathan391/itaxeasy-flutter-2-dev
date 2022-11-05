
import 'dart:convert';

LoginUser loginUserFromJson(String str) => LoginUser.fromJson(json.decode(str));

String loginUserToJson(LoginUser data) => json.encode(data.toJson());

class LoginUser {
  LoginUser({
    this.success,
    this.results,
  });

  bool success;
  Results results;

  factory LoginUser.fromJson(Map<String, dynamic> json) => LoginUser(
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
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.phone,
    this.pincode,
    this.socialId,
    this.socialType,
  });

  int id;
  String firstName;
  String lastName;
  String email;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  String phone;
  String pincode;
  dynamic socialId;
  dynamic socialType;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    phone: json["phone"],
    pincode: json["pincode"],
    socialId: json["social_id"],
    socialType: json["social_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "phone": phone,
    "pincode": pincode,
    "social_id": socialId,
    "social_type": socialType,
  };
}
