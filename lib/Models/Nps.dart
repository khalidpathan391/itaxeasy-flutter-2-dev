// To parse this JSON data, do
//
//     final nps = npsFromJson(jsonString);

import 'dart:convert';

Nps npsFromJson(String str) => Nps.fromJson(json.decode(str));

String npsToJson(Nps data) => json.encode(data.toJson());

class Nps {
  Nps({
    this.monthlyInvestment,
    this.rate,
    this.currentAge,
  });

  int monthlyInvestment;
  double rate;
  int currentAge;

  factory Nps.fromJson(Map<String, dynamic> json) => Nps(
    monthlyInvestment: json["monthlyInvestment"],
    rate: json["rate"],
    currentAge: json["currentAge"],
  );

  Map<String, dynamic> toJson() => {
    "monthlyInvestment": monthlyInvestment,
    "rate": rate,
    "currentAge": currentAge,
  };
}






NpsResponse npsResponseFromJson(String str) => NpsResponse.fromJson(json.decode(str));

String npsResponseToJson(NpsResponse data) => json.encode(data.toJson());

class NpsResponse {
  NpsResponse({
    this.status,
    this.total,
    this.invested,
    this.gain,
    this.yearlyGain,
  });

  String status;
  int total;
  int invested;
  int gain;
  List<YearlyGain> yearlyGain;

  factory NpsResponse.fromJson(Map<String, dynamic> json) => NpsResponse(
    status: json["status"],
    total: json["total"],
    invested: json["invested"],
    gain: json["gain"],
    yearlyGain: List<YearlyGain>.from(json["yearlyGain"].map((x) => YearlyGain.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "total": total,
    "invested": invested,
    "gain": gain,
    "yearlyGain": List<dynamic>.from(yearlyGain.map((x) => x.toJson())),
  };
}

class YearlyGain {
  YearlyGain({
    this.year,
    this.investmentAmount,
    this.interestEarned,
    this.maturityAmount,
  });

  int year;
  int investmentAmount;
  int interestEarned;
  int maturityAmount;

  factory YearlyGain.fromJson(Map<String, dynamic> json) => YearlyGain(
    year: json["year"],
    investmentAmount: json["investment_amount"],
    interestEarned: json["interest_earned"],
    maturityAmount: json["maturity_amount"],
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "investment_amount": investmentAmount,
    "interest_earned": interestEarned,
    "maturity_amount": maturityAmount,
  };
}

