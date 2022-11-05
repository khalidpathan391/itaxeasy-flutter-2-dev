// To parse this JSON data, do
//
//     final panAdhaarStatus = panAdhaarStatusFromJson(jsonString);

import 'dart:convert';

PanAdhaarStatus panAdhaarStatusFromJson(String str) => PanAdhaarStatus.fromJson(json.decode(str));

String panAdhaarStatusToJson(PanAdhaarStatus data) => json.encode(data.toJson());

class PanAdhaarStatus {
  PanAdhaarStatus({
    this.status,
    this.company,
  });

  String status;
  String company;

  factory PanAdhaarStatus.fromJson(Map<String, dynamic> json) => PanAdhaarStatus(
    status: json["status"],
    company: json["company"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "company": company,
  };
}
