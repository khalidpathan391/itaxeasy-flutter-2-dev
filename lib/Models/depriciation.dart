import 'dart:convert';

DepriciationCal depriciationCalFromJson(String str) => DepriciationCal.fromJson(json.decode(str));

String depriciationCalToJson(DepriciationCal data) => json.encode(data.toJson());

class DepriciationCal {
  DepriciationCal({
    this.purchasePrice,
    this.scrapValue,
    this.estimatedUsefulLife,
  });

  int purchasePrice;
  int scrapValue;
  int estimatedUsefulLife;

  factory DepriciationCal.fromJson(Map<String, dynamic> json) => DepriciationCal(
    purchasePrice: json["purchasePrice"],
    scrapValue: json["scrapValue"],
    estimatedUsefulLife: json["estimatedUsefulLife"],
  );

  Map<String, dynamic> toJson() => {
    "purchasePrice": purchasePrice,
    "scrapValue": scrapValue,
    "estimatedUsefulLife": estimatedUsefulLife,
  };
}


class DepriciationCalResponse {
  DepriciationCalResponse({
    this.status,
    this.depreciationPercentage,
    this.costOfAsset,
  });

  String status;
  String depreciationPercentage;
  int costOfAsset;

  factory DepriciationCalResponse.fromJson(Map<String, dynamic> json) => DepriciationCalResponse(
    status: json["status"],
    depreciationPercentage: json["depreciationPercentage"],
    costOfAsset: json["costOfAsset"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "depreciationPercentage": depreciationPercentage,
    "costOfAsset": costOfAsset,
  };
}
