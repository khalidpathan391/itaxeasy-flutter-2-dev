

import 'dart:convert';

GstCalcu gstCalcuFromJson(String str) => GstCalcu.fromJson(json.decode(str));

String gstCalcuToJson(GstCalcu data) => json.encode(data.toJson());

class GstCalcu {
  GstCalcu({
    this.amount,
    this.gstRate,
    this.type,
  });

  int amount;
  int gstRate;
  String type;

  factory GstCalcu.fromJson(Map<String, dynamic> json) => GstCalcu(
    amount: json["amount"],
    gstRate: json["gstRate"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "gstRate": gstRate,
    "type": type,
  };
}




GstCalcuResponse gstCalcuResponseFromJson(String str) => GstCalcuResponse.fromJson(json.decode(str));

String gstCalcuResponseToJson(GstCalcuResponse data) => json.encode(data.toJson());

class GstCalcuResponse {
  GstCalcuResponse({
    this.status,
    this.finalAmount,
    this.gstAmount,
    this.amount,
    this.gstType,
    this.gstRate,
  });

  String status;
  String finalAmount;
  String gstAmount;
  String amount;
  String gstType;
  String gstRate;

  factory GstCalcuResponse.fromJson(Map<String, dynamic> json) => GstCalcuResponse(
    status: json["status"],
    finalAmount: json["finalAmount"],
    gstAmount: json["gstAmount"],
    amount: json["amount"],
    gstType: json["gstType"],
    gstRate: json["gstRate"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "finalAmount": finalAmount,
    "gstAmount": gstAmount,
    "amount": amount,
    "gstType": gstType,
    "gstRate": gstRate,
  };
}
