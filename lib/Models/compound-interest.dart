import 'dart:convert';

CompoundInterest compoundInterestFromJson(String str) => CompoundInterest.fromJson(json.decode(str));

String compoundInterestToJson(CompoundInterest data) => json.encode(data.toJson());

class CompoundInterest {
  CompoundInterest({
    this.principle,
    this.rate,
    this.year,
    this.compoundFreqInYear,
  });

  int principle;
  double rate;
  int year;
  int compoundFreqInYear;

  factory CompoundInterest.fromJson(Map<String, dynamic> json) => CompoundInterest(
    principle: json["principle"],
    rate: json["rate"],
    year: json["year"],
    compoundFreqInYear: json["compoundFreqInYear"],
  );

  Map<String, dynamic> toJson() => {
    "principle": principle,
    "rate": rate,
    "year": year,
    "compoundFreqInYear": compoundFreqInYear,
  };
}



CompoundInterestResponse compoundInterestResponseFromJson(String str) => CompoundInterestResponse.fromJson(json.decode(str));

String compoundInterestResponseToJson(CompoundInterestResponse data) => json.encode(data.toJson());

class CompoundInterestResponse {
  CompoundInterestResponse({
    this.status,
    this.principle,
    this.interestEarned,
    this.yearWiseInterest,
    this.monthlyCalculation,
  });

  String status;
  int principle;
  int interestEarned;
  List<MonthlyCalculation> yearWiseInterest;
  List<MonthlyCalculation> monthlyCalculation;

  factory CompoundInterestResponse.fromJson(Map<String, dynamic> json) => CompoundInterestResponse(
    status: json["status"],
    principle: json["principle"],
    interestEarned: json["interestEarned"],
    yearWiseInterest: List<MonthlyCalculation>.from(json["yearWiseInterest"].map((x) => MonthlyCalculation.fromJson(x))),
    monthlyCalculation: List<MonthlyCalculation>.from(json["monthlyCalculation"].map((x) => MonthlyCalculation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "principle": principle,
    "interestEarned": interestEarned,
    "yearWiseInterest": List<dynamic>.from(yearWiseInterest.map((x) => x.toJson())),
    "monthlyCalculation": List<dynamic>.from(monthlyCalculation.map((x) => x.toJson())),
  };
}

class MonthlyCalculation {
  MonthlyCalculation({
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

  factory MonthlyCalculation.fromJson(Map<String, dynamic> json) => MonthlyCalculation(
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
