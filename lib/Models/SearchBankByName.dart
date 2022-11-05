// To parse this JSON data, do
//
//     final searchBanksByName = searchBanksByNameFromJson(jsonString);

import 'dart:convert';

SearchBanksByName searchBanksByNameFromJson(String str) => SearchBanksByName.fromJson(json.decode(str));

String searchBanksByNameToJson(SearchBanksByName data) => json.encode(data.toJson());

class SearchBanksByName {
  SearchBanksByName({
    this.success,
    this.bank,
  });

  bool success;
  List<Bank> bank;

  factory SearchBanksByName.fromJson(Map<String, dynamic> json) => SearchBanksByName(
    success: json["success"],
    bank: List<Bank>.from(json["Bank"].map((x) => Bank.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "Bank": List<dynamic>.from(bank.map((x) => x.toJson())),
  };
}

class Bank {
  Bank({
    this.id,
    this.bank,
    this.ifsc,
    this.branch,
    this.address,
    this.city1,
    this.city2,
    this.state,
    this.phone,
    this.v,
  });

  String id;
  String bank;
  String ifsc;
  String branch;
  String address;
  String city1;
  String city2;
  String state;
  String phone;
  int v;

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    id: json["_id"],
    bank: json["BANK"],
    ifsc: json["IFSC"],
    branch: json["BRANCH"],
    address: json["ADDRESS"],
    city1: json["CITY1"],
    city2: json["CITY2"],
    state: json["STATE"],
    phone: json["PHONE"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "BANK": bank,
    "IFSC": ifsc,
    "BRANCH": branch,
    "ADDRESS": address,
    "CITY1": city1,
    "CITY2": city2,
    "STATE": state,
    "PHONE": phone,
    "__v": v,
  };
}
