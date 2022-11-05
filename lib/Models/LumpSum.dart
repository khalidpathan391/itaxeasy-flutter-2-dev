import 'dart:convert';

LumpSum lumpSumFromJson(String str) => LumpSum.fromJson(json.decode(str));

String lumpSumToJson(LumpSum data) => json.encode(data.toJson());

class LumpSum {
  LumpSum({
    this.invested,
    this.rate,
    this.year,
  });

  int invested;
  double rate;
  int year;

  factory LumpSum.fromJson(Map<String, dynamic> json) => LumpSum(
    invested: json["invested"],
    rate: json["rate"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "invested": invested,
    "rate": rate,
    "year": year,
  };
}



LumpSumResponse lumpSumResponseFromJson(String str) => LumpSumResponse.fromJson(json.decode(str));

String lumpSumResponseToJson(LumpSumResponse data) => json.encode(data.toJson());

class LumpSumResponse {
  LumpSumResponse({
    this.status,
    this.total,
    this.invested,
    this.gain,
    this.yearlyCalculation,
    this.monthlyCalculation,
  });

  String status;
  int total;
  int invested;
  int gain;
  List<LyCalculation> yearlyCalculation;
  List<LyCalculation> monthlyCalculation;

  factory LumpSumResponse.fromJson(Map<String, dynamic> json) => LumpSumResponse(
    status: json["status"],
    total: json["total"],
    invested: json["invested"],
    gain: json["gain"],
    yearlyCalculation: List<LyCalculation>.from(json["yearlyCalculation"].map((x) => LyCalculation.fromJson(x))),
    monthlyCalculation: List<LyCalculation>.from(json["monthlyCalculation"].map((x) => LyCalculation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "total": total,
    "invested": invested,
    "gain": gain,
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

