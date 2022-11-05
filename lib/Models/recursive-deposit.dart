import 'dart:convert';

RecursiveDeposit recursiveDepositFromJson(String str) => RecursiveDeposit.fromJson(json.decode(str));

String recursiveDepositToJson(RecursiveDeposit data) => json.encode(data.toJson());

class RecursiveDeposit {
  RecursiveDeposit({
    this.principle,
    this.rate,
    this.months,
  });

  int principle;
  double rate;
  int months;

  factory RecursiveDeposit.fromJson(Map<String, dynamic> json) => RecursiveDeposit(
    principle: json["principle"],
    rate: json["rate"].toDouble(),
    months: json["months"],
  );

  Map<String, dynamic> toJson() => {
    "principle": principle,
    "rate": rate,
    "months": months,
  };
}


RecursiveDepositResponse recursiveDepositResponseFromJson(String str) => RecursiveDepositResponse.fromJson(json.decode(str));

String recursiveDepositResponseToJson(RecursiveDepositResponse data) => json.encode(data.toJson());

class RecursiveDepositResponse {
  RecursiveDepositResponse({
    this.status,
    this.invested,
    this.interestEarned,
    this.amount,
  });

  String status;
  int invested;
  int interestEarned;
  int amount;

  factory RecursiveDepositResponse.fromJson(Map<String, dynamic> json) => RecursiveDepositResponse(
    status: json["status"],
    invested: json["invested"],
    interestEarned: json["interestEarned"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "invested": invested,
    "interestEarned": interestEarned,
    "amount": amount,
  };
}


