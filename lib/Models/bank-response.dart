// To parse this JSON data, do
//
//     final bankResponse = bankResponseFromJson(jsonString);

import 'dart:convert';

BankResponse bankResponseFromJson(String str) => BankResponse.fromJson(json.decode(str));

String bankResponseToJson(BankResponse data) => json.encode(data.toJson());

class BankResponse {
  BankResponse({
    this.status,
    this.bankResponse,
  });

  String status;
  BankResponseClass bankResponse;

  factory BankResponse.fromJson(Map<String, dynamic> json) => BankResponse(
    status: json["status"],
    bankResponse: BankResponseClass.fromJson(json["bankResponse"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "bankResponse": bankResponse.toJson(),
  };
}

class BankResponseClass {
  BankResponseClass({
    this.message,
    this.accountExists,
    this.nameAtBank,
    this.amountDeposited,
    this.referenceId,
  });

  String message;
  bool accountExists;
  String nameAtBank;
  int amountDeposited;
  String referenceId;

  factory BankResponseClass.fromJson(Map<String, dynamic> json) => BankResponseClass(
    message: json["message"],
    accountExists: json["account_exists"],
    nameAtBank: json["name_at_bank"],
    amountDeposited: json["amount_deposited"],
    referenceId: json["reference_id"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "account_exists": accountExists,
    "name_at_bank": nameAtBank,
    "amount_deposited": amountDeposited,
    "reference_id": referenceId,
  };
}
