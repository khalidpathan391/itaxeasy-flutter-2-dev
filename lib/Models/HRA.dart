import 'dart:convert';

HraCal hraCalFromJson(String str) => HraCal.fromJson(json.decode(str));

String hraCalToJson(HraCal data) => json.encode(data.toJson());

class HraCal {
  HraCal({
    this.basic,
    this.hra,
    this.rentPaid,
    this.allowances,
    this.metroCity,
  });

  int basic;
  int hra;
  int rentPaid;
  int allowances;
  bool metroCity;

  factory HraCal.fromJson(Map<String, dynamic> json) => HraCal(
    basic: json["basic"],
    hra: json["hra"],
    rentPaid: json["rentPaid"],
    allowances: json["allowances"],
    metroCity: json["metroCity"],
  );

  Map<String, dynamic> toJson() => {
    "basic": basic,
    "hra": hra,
    "rentPaid": rentPaid,
    "allowances": allowances,
    "metroCity": metroCity,
  };
}



HraCalResponse hraCalResponseFromJson(String str) => HraCalResponse.fromJson(json.decode(str));

String hraCalResponseToJson(HraCalResponse data) => json.encode(data.toJson());

class HraCalResponse {
  HraCalResponse({
    this.status,
    this.hraExempted,
  });

  String status;
  int hraExempted;

  factory HraCalResponse.fromJson(Map<String, dynamic> json) => HraCalResponse(
    status: json["status"],
    hraExempted: json["hraExempted"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "hraExempted": hraExempted,
  };
}

