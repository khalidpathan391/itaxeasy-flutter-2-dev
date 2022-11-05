// To parse this JSON data, do
//
//     final tds = tdsFromJson(jsonString);

import 'dart:convert';

Tds tdsFromJson(String str) => Tds.fromJson(json.decode(str));

String tdsToJson(Tds data) => json.encode(data.toJson());

class Tds {
  Tds({
    this.status,
    this.deducteeType,
    this.isPanAvailable,
    this.residentialStatus,
    this.section,
    this.creditAmount,
    this.creditDate,
    this.tdsRate,
    this.thresholdAmount,
    this.dueDate,
    this.tdsAmount,
  });

  String status;
  String deducteeType;
  String isPanAvailable;
  String residentialStatus;
  String section;
  int creditAmount;
  DateTime creditDate;
  double tdsRate;
  int thresholdAmount;
  String dueDate;
  int tdsAmount;

  factory Tds.fromJson(Map<String, dynamic> json) => Tds(
    status: json["status"],
    deducteeType: json["deductee_type"],
    isPanAvailable: json["is_pan_available"],
    residentialStatus: json["residential_status"],
    section: json["section"],
    creditAmount: json["credit_amount"],
    creditDate: DateTime.parse(json["credit_date"]),
    tdsRate: json["tds_rate"],
    thresholdAmount: json["threshold_amount"],
    dueDate: json["due_date"],
    tdsAmount: json["tds_amount"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "deductee_type": deducteeType,
    "is_pan_available": isPanAvailable,
    "residential_status": residentialStatus,
    "section": section,
    "credit_amount": creditAmount,
    "credit_date": "${creditDate.day.toString().padLeft(2, '0')}/${creditDate.month.toString().padLeft(2, '0')}/${creditDate.year.toString().padLeft(4, '0')}",
    "tds_rate": tdsRate,
    "threshold_amount": thresholdAmount,
    "due_date": dueDate,
    "tds_amount": tdsAmount,
  };
}
