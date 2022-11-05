import 'dart:convert';

SipGain sipGainFromJson(String str) => SipGain.fromJson(json.decode(str));

String sipGainToJson(SipGain data) => json.encode(data.toJson());

class SipGain {
  SipGain({
    this.monthlyInvestment,
    this.rate,
    this.year,
  });

  int monthlyInvestment;
  double rate;
  int year;

  factory SipGain.fromJson(Map<String, dynamic> json) => SipGain(
    monthlyInvestment: json["monthlyInvestment"],
    rate: json["rate"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "monthlyInvestment": monthlyInvestment,
    "rate": rate,
    "year": year,
  };
}





SipGainResponse sipGainResponseFromJson(String str) => SipGainResponse.fromJson(json.decode(str));

String sipGainResponseToJson(SipGainResponse data) => json.encode(data.toJson());

class SipGainResponse {
  SipGainResponse({
    this.status,
    this.total,
    this.invested,
    this.gain,
    this.yearlyCalculation,
  });

  String status;
  int total;
  int invested;
  int gain;
  List<YearlyCalculation> yearlyCalculation;

  factory SipGainResponse.fromJson(Map<String, dynamic> json) => SipGainResponse(
    status: json["status"],
    total: json["total"],
    invested: json["invested"],
    gain: json["gain"],
    yearlyCalculation: List<YearlyCalculation>.from(json["yearlyCalculation"].map((x) => YearlyCalculation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "total": total,
    "invested": invested,
    "gain": gain,
    "yearlyCalculation": List<dynamic>.from(yearlyCalculation.map((x) => x.toJson())),
  };
}

class YearlyCalculation {
  YearlyCalculation({
    this.year,
    this.investmentAmount,
    this.interestEarned,
    this.maturityAmount,
  });

  int year;
  int investmentAmount;
  int interestEarned;
  int maturityAmount;

  factory YearlyCalculation.fromJson(Map<String, dynamic> json) => YearlyCalculation(
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

