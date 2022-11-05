
import 'dart:convert';

GstReturn gstReturnFromJson(String str) => GstReturn.fromJson(json.decode(str));

String gstReturnToJson(GstReturn data) => json.encode(data.toJson());

class GstReturn {
  GstReturn({
    this.gstin,
    this.financialYear,
  });

  String gstin;
  String financialYear;

  factory GstReturn.fromJson(Map<String, dynamic> json) => GstReturn(
    gstin: json["gstin"],
    financialYear: json["financialYear"],
  );

  Map<String, dynamic> toJson() => {
    "gstin": gstin,
    "financialYear": financialYear,
  };
}
