import 'dart:convert';

CapitalGain capitalGainFromJson(String str) => CapitalGain.fromJson(json.decode(str));

String capitalGainToJson(CapitalGain data) => json.encode(data.toJson());

class CapitalGain {
  CapitalGain({
    this.assets,
    this.buyDate,
    this.sellDate,
    this.buyPrice,
    this.sellPrice,
  });

  String assets;
  DateTime buyDate;
  DateTime sellDate;
  int buyPrice;
  int sellPrice;

  factory CapitalGain.fromJson(Map<String, dynamic> json) => CapitalGain(
    assets: json["assets"],
    buyDate: DateTime.parse(json["buyDate"]),
    sellDate: DateTime.parse(json["sellDate"]),
    buyPrice: json["buyPrice"],
    sellPrice: json["sellPrice"],
  );

  Map<String, dynamic> toJson() => {
    "assets": assets,
    "buyDate": "${buyDate.year.toString().padLeft(4, '0')}-${buyDate.month.toString().padLeft(2, '0')}-${buyDate.day.toString().padLeft(2, '0')}",
    "sellDate": "${sellDate.year.toString().padLeft(4, '0')}-${sellDate.month.toString().padLeft(2, '0')}-${sellDate.day.toString().padLeft(2, '0')}",
    "buyPrice": buyPrice,
    "sellPrice": sellPrice,
  };
}





CapitalGainResponse capitalGainResponseFromJson(String str) => CapitalGainResponse.fromJson(json.decode(str));

String capitalGainResponseToJson(CapitalGainResponse data) => json.encode(data.toJson());

class CapitalGainResponse {
  CapitalGainResponse({
    this.status,
    this.profit,
    this.taxAmount,
    this.effectiveTaxRate,
    this.message,
  });

  String status;
  int profit;
  String taxAmount;
  String effectiveTaxRate;
  String message;

  factory CapitalGainResponse.fromJson(Map<String, dynamic> json) => CapitalGainResponse(
    status: json["status"],
    profit: json["profit"],
    taxAmount: json["tax_amount"],
    effectiveTaxRate: json["effective_tax_rate"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "profit": profit,
    "tax_amount": taxAmount,
    "effective_tax_rate": effectiveTaxRate,
    "message": message,
  };
}
