import 'dart:convert';

SimpleInterest simpleInterestFromJson(String str) => SimpleInterest.fromJson(json.decode(str));

String simpleInterestToJson(SimpleInterest data) => json.encode(data.toJson());

class SimpleInterest {
  SimpleInterest({
    this.principle,
    this.rate,
    this.year,
  });

  double principle;
  double rate;
  double year;

  factory SimpleInterest.fromJson(Map<String, dynamic> json) => SimpleInterest(
    principle: json["principle"],
    rate: json["rate"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "principle": principle,
    "rate": rate,
    "year": year,
  };
}




SimpleInterestResponse simpleInterestResponseFromJson(String str) => SimpleInterestResponse.fromJson(json.decode(str));

String simpleInterestResponseToJson(SimpleInterestResponse data) => json.encode(data.toJson());

class SimpleInterestResponse {
  SimpleInterestResponse({
    this.status,
    this.principle,
    this.interestEarned,
    this.yearlyCalculation,
    this.monthlyCalculation,
  });

  String status;
  int principle;
  int interestEarned;
  List<LyCalculation> yearlyCalculation;
  List<LyCalculation> monthlyCalculation;

  factory SimpleInterestResponse.fromJson(Map<String, dynamic> json) => SimpleInterestResponse(
    status: json["status"],
    principle: json["principle"],
    interestEarned: json["interestEarned"],
    yearlyCalculation: List<LyCalculation>.from(json["yearlyCalculation"].map((x) => LyCalculation.fromJson(x))),
    monthlyCalculation: List<LyCalculation>.from(json["monthlyCalculation"].map((x) => LyCalculation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "principle": principle,
    "interestEarned": interestEarned,
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
