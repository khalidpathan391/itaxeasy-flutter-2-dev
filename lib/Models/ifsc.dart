// To parse this JSON data, do
//
//     final ifsc = ifscFromJson(jsonString);

import 'dart:convert';

Ifsc ifscFromJson(String str) => Ifsc.fromJson(json.decode(str));

String ifscToJson(Ifsc data) => json.encode(data.toJson());

class Ifsc {
  Ifsc({
    this.status,
    this.bank,
  });

  String status;
  Bank bank;

  factory Ifsc.fromJson(Map<String, dynamic> json) => Ifsc(
    status: json["status"],
    bank: Bank.fromJson(json["bank"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "bank": bank.toJson(),
  };
}

class Bank {
  Bank({
    this.micr,
    this.branch,
    this.address,
    this.state,
    this.contact,
    this.upi,
    this.rtgs,
    this.city,
    this.centre,
    this.district,
    this.neft,
    this.imps,
    this.swift,
    this.bank,
    this.bankcode,
    this.ifsc,
  });

  String micr;
  String branch;
  String address;
  String state;
  String contact;
  bool upi;
  bool rtgs;
  String city;
  String centre;
  String district;
  bool neft;
  bool imps;
  String swift;
  String bank;
  String bankcode;
  String ifsc;

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    micr: json["MICR"],
    branch: json["BRANCH"],
    address: json["ADDRESS"],
    state: json["STATE"],
    contact: json["CONTACT"],
    upi: json["UPI"],
    rtgs: json["RTGS"],
    city: json["CITY"],
    centre: json["CENTRE"],
    district: json["DISTRICT"],
    neft: json["NEFT"],
    imps: json["IMPS"],
    swift: json["SWIFT"],
    bank: json["BANK"],
    bankcode: json["BANKCODE"],
    ifsc: json["IFSC"],
  );

  Map<String, dynamic> toJson() => {
    "MICR": micr,
    "BRANCH": branch,
    "ADDRESS": address,
    "STATE": state,
    "CONTACT": contact,
    "UPI": upi,
    "RTGS": rtgs,
    "CITY": city,
    "CENTRE": centre,
    "DISTRICT": district,
    "NEFT": neft,
    "IMPS": imps,
    "SWIFT": swift,
    "BANK": bank,
    "BANKCODE": bankcode,
    "IFSC": ifsc,
  };
}
