// To parse this JSON data, do
//
//     final trackGstReturn = trackGstReturnFromJson(jsonString);

import 'dart:convert';

TrackGstReturn trackGstReturnFromJson(String str) => TrackGstReturn.fromJson(json.decode(str));

String trackGstReturnToJson(TrackGstReturn data) => json.encode(data.toJson());

class TrackGstReturn {
  TrackGstReturn({
    this.transactionId,
    this.code,
    this.data,
    this.timestamp,
  });

  String transactionId;
  int code;
  Data data;
  int timestamp;

  factory TrackGstReturn.fromJson(Map<String, dynamic> json) => TrackGstReturn(
    transactionId: json["transaction_id"],
    code: json["code"],
    data: Data.fromJson(json["data"]),
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "transaction_id": transactionId,
    "code": code,
    "data": data.toJson(),
    "timestamp": timestamp,
  };
}

class Data {
  Data({
    this.eFiledlist,
  });

  List<EFiledlist> eFiledlist;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    eFiledlist: List<EFiledlist>.from(json["EFiledlist"].map((x) => EFiledlist.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "EFiledlist": List<dynamic>.from(eFiledlist.map((x) => x.toJson())),
  };
}

class EFiledlist {
  EFiledlist({
    this.valid,
    this.mof,
    this.dof,
    this.rtntype,
    this.retPrd,
    this.arn,
    this.status,
  });

  Valid valid;
  Mof mof;
  String dof;
  Rtntype rtntype;
  String retPrd;
  String arn;
  Status status;

  factory EFiledlist.fromJson(Map<String, dynamic> json) => EFiledlist(
    valid: json["valid"] == null ? null : validValues.map[json["valid"]],
    mof: mofValues.map[json["mof"]],
    dof: json["dof"],
    rtntype: rtntypeValues.map[json["rtntype"]],
    retPrd: json["ret_prd"],
    arn: json["arn"],
    status: statusValues.map[json["status"]],
  );

  Map<String, dynamic> toJson() => {
    "valid": valid == null ? null : validValues.reverse[valid],
    "mof": mofValues.reverse[mof],
    "dof": dof,
    "rtntype": rtntypeValues.reverse[rtntype],
    "ret_prd": retPrd,
    "arn": arn,
    "status": statusValues.reverse[status],
  };
}

enum Mof { ONLINE }

final mofValues = EnumValues({
  "ONLINE": Mof.ONLINE
});

enum Rtntype { GSTR3_B, GSTR1, GSTR9_C, GSTR9 }

final rtntypeValues = EnumValues({
  "GSTR1": Rtntype.GSTR1,
  "GSTR3B": Rtntype.GSTR3_B,
  "GSTR9": Rtntype.GSTR9,
  "GSTR9C": Rtntype.GSTR9_C
});

enum Status { FILED }

final statusValues = EnumValues({
  "Filed": Status.FILED
});

enum Valid { Y }

final validValues = EnumValues({
  "Y": Valid.Y
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
