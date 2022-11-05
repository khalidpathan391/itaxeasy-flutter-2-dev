import 'dart:convert';

PinCodeInfo pinCodeInfoFromJson(String str) => PinCodeInfo.fromJson(json.decode(str));

String pinCodeInfoToJson(PinCodeInfo data) => json.encode(data.toJson());

class PinCodeInfo {
  PinCodeInfo({
    this.success,
    this.info,
  });

  bool success;
  List<Info> info;

  factory PinCodeInfo.fromJson(Map<String, dynamic> json) => PinCodeInfo(
    success: json["success"],
    info: List<Info>.from(json["info"].map((x) => Info.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "info": List<dynamic>.from(info.map((x) => x.toJson())),
  };
}

class Info {
  Info({
    this.officeName,
    this.pincode,
    this.taluk,
    this.districtName,
    this.stateName,
  });

  String officeName;
  int pincode;
  String taluk;
  String districtName;
  String stateName;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    officeName: json["officeName"],
    pincode: json["pincode"],
    taluk: json["taluk"],
    districtName: json["districtName"],
    stateName: json["stateName"],
  );

  Map<String, dynamic> toJson() => {
    "officeName": officeName,
    "pincode": pincode,
    "taluk": taluk,
    "districtName": districtName,
    "stateName": stateName,
  };
}
