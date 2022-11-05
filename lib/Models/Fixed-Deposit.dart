
import 'dart:convert';

FixedDeposit fixedDepositFromJson(String str) => FixedDeposit.fromJson(json.decode(str));

String fixedDepositToJson(FixedDeposit data) => json.encode(data.toJson());

class FixedDeposit {
  FixedDeposit({
    this.type,
    this.principle,
    this.rate,
    this.year,
    this.compoundFreqInYear,
  });

  String type;
  int principle;
  int rate;
  int year;
  int compoundFreqInYear;

  factory FixedDeposit.fromJson(Map<String, dynamic> json) => FixedDeposit(
    type: json["type"],
    principle: json["principle"],
    rate: json["rate"],
    year: json["year"],
    compoundFreqInYear: json["compoundFreqInYear"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "principle": principle,
    "rate": rate,
    "year": year,
    "compoundFreqInYear": compoundFreqInYear,
  };
}
// To parse this JSON data, do
//
//     final fixedDepositResponse = fixedDepositResponseFromJson(jsonString);



FixedDepositResponse fixedDepositResponseFromJson(String str) => FixedDepositResponse.fromJson(json.decode(str));

String fixedDepositResponseToJson(FixedDepositResponse data) => json.encode(data.toJson());

class FixedDepositResponse {
  FixedDepositResponse({
    this.status,
    this.principle,
    this.interestEarned,
    this.monthlyCalculation,
  });

  String status;
  int principle;
  int interestEarned;
  MonthlyCalculation monthlyCalculation;

  factory FixedDepositResponse.fromJson(Map<String, dynamic> json) => FixedDepositResponse(
    status: json["status"],
    principle: json["principle"],
    interestEarned: json["interestEarned"],
    monthlyCalculation: MonthlyCalculation.fromJson(json["monthlyCalculation"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "principle": principle,
    "interestEarned": interestEarned,
    "monthlyCalculation": monthlyCalculation.toJson(),
  };
}

class MonthlyCalculation {
  MonthlyCalculation({
    this.yearlyCalculation,
    this.monthlyCalculation,
  });

  List<LyCalculation> yearlyCalculation;
  List<LyCalculation> monthlyCalculation;

  factory MonthlyCalculation.fromJson(Map<String, dynamic> json) => MonthlyCalculation(
    yearlyCalculation: List<LyCalculation>.from(json["yearlyCalculation"].map((x) => LyCalculation.fromJson(x))),
    monthlyCalculation: List<LyCalculation>.from(json["monthlyCalculation"].map((x) => LyCalculation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "yearlyCalculation": List<dynamic>.from(yearlyCalculation.map((x) => x.toJson())),
    "monthlyCalculation": List<dynamic>.from(monthlyCalculation.map((x) => x.toJson())),
  };
}

class LyCalculation {
  LyCalculation({
    this.month,
    this.openingBalance,
    this.interestEarned,
    this.closingBalance,
    this.year,
  });

  int month;
  int openingBalance;
  int interestEarned;
  int closingBalance;
  int year;

  factory LyCalculation.fromJson(Map<String, dynamic> json) => LyCalculation(
    month: json["month"],
    openingBalance: json["opening_balance"],
    interestEarned: json["interest_earned"],
    closingBalance: json["closing_balance"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "month": month,
    "opening_balance": openingBalance,
    "interest_earned": interestEarned,
    "closing_balance": closingBalance,
    "year": year,
  };
}

