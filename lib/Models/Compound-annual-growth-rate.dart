import 'dart:convert';

Cagr cagrFromJson(String str) => Cagr.fromJson(json.decode(str));

String cagrToJson(Cagr data) => json.encode(data.toJson());

class Cagr {
  Cagr({
    this.totalInvestment,
    this.matuarityValue,
    this.years,
  });

  int totalInvestment;
  int matuarityValue;
  int years;

  factory Cagr.fromJson(Map<String, dynamic> json) => Cagr(
    totalInvestment: json["totalInvestment"],
    matuarityValue: json["matuarityValue"],
    years: json["years"],
  );

  Map<String, dynamic> toJson() => {
    "totalInvestment": totalInvestment,
    "matuarityValue": matuarityValue,
    "years": years,
  };
}

CagrResponse cagrResponseFromJson(String str) => CagrResponse.fromJson(json.decode(str));

String cagrResponseToJson(CagrResponse data) => json.encode(data.toJson());

class CagrResponse {
  CagrResponse({
    this.status,
    this.cagr,
  });

  String status;
  String cagr;

  factory CagrResponse.fromJson(Map<String, dynamic> json) => CagrResponse(
    status: json["status"],
    cagr: json["cagr"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "cagr": cagr,
  };
}
