

import 'dart:convert';

SearchBanksByPin searchBanksByPinFromJson(String str) => SearchBanksByPin.fromJson(json.decode(str));

String searchBanksByPinToJson(SearchBanksByPin data) => json.encode(data.toJson());

class SearchBanksByPin {
  SearchBanksByPin({
    this.success,
    this.noOfBanks,
    this.banks,
  });

  bool success;
  int noOfBanks;
  List<Bank> banks ;

  factory SearchBanksByPin.fromJson(Map<String, dynamic> json) => SearchBanksByPin(
    success: json["success"],
    noOfBanks: json["No of banks"],
    banks: List<Bank>.from(json["Banks"].map((x) => Bank.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "No of banks": noOfBanks,
    "Banks": List<dynamic>.from(banks.map((x) => x.toJson())),
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
