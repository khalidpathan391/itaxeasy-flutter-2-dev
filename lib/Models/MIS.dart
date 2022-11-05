import 'dart:convert';

MisCal misCalFromJson(String str) => MisCal.fromJson(json.decode(str));

String misCalToJson(MisCal data) => json.encode(data.toJson());

class MisCal {
  MisCal({
    this.investmentAmount,
    this.interestRate,
  });

  int investmentAmount;
  double interestRate;

  factory MisCal.fromJson(Map<String, dynamic> json) => MisCal(
    investmentAmount: json["investmentAmount"],
    interestRate: json["interestRate"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "investmentAmount": investmentAmount,
    "interestRate": interestRate,
  };
}


class MisCalResponse {
  MisCalResponse({
    this.status,
    this.monthlyIncome,
  });

  String status;
  double monthlyIncome;

  factory MisCalResponse.fromJson(Map<String, dynamic> json) => MisCalResponse(
    status: json["status"],
    monthlyIncome: json["monthlyIncome"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "monthlyIncome": monthlyIncome,
  };
}