// To parse this JSON data, do
//
//     final bankDetails = bankDetailsFromJson(jsonString);

import 'dart:convert';

Bankdetails bankDetailsFromJson(String str) => Bankdetails.fromJson(json.decode(str));

String bankDetailsToJson(Bankdetails data) => json.encode(data.toJson());

class Bankdetails {
  Bankdetails({
    this.accountNumber,
    this.ifsc,
    this.name,
    this.mobile,
  });

  String accountNumber;
  String ifsc;
  String name;
  String mobile;

  factory Bankdetails.fromJson(Map<String, dynamic> json) => Bankdetails(
    accountNumber: json["accountNumber"],
    ifsc: json["ifsc"],
    name: json["name"],
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "accountNumber": accountNumber,
    "ifsc": ifsc,
    "name": name,
    "mobile": mobile,
  };
}
