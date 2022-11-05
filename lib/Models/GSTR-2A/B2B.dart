

import 'dart:convert';

B2B b2BFromJson(String str) => B2B.fromJson(json.decode(str));

String b2BToJson(B2B data) => json.encode(data.toJson());

class B2B {
  B2B({
    this.status,
    this.message,
  });

  String status;
  Message message;

  factory B2B.fromJson(Map<String, dynamic> json) => B2B(
    status: json["status"],
    message: Message.fromJson(json["message"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message.toJson(),
  };
}

class Message {
  Message({
    this.b2B,
  });

  List<B2BElement> b2B;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    b2B: List<B2BElement>.from(json["b2b"].map((x) => B2BElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "b2b": List<dynamic>.from(b2B.map((x) => x.toJson())),
  };
}

class B2BElement {
  B2BElement({
    this.inv,
    this.cfs,
    this.ctin,
    this.fldtr1,
    this.cfs3B,
    this.flprdr1,
  });

  List<Inv> inv;
  Cfs cfs;
  String ctin;
  String fldtr1;
  Cfs cfs3B;
  Flprdr1 flprdr1;

  factory B2BElement.fromJson(Map<String, dynamic> json) => B2BElement(
    inv: List<Inv>.from(json["inv"].map((x) => Inv.fromJson(x))),
    cfs: cfsValues.map[json["cfs"]],
    ctin: json["ctin"],
    fldtr1: json["fldtr1"],
    cfs3B: cfsValues.map[json["cfs3b"]],
    flprdr1: flprdr1Values.map[json["flprdr1"]],
  );

  Map<String, dynamic> toJson() => {
    "inv": List<dynamic>.from(inv.map((x) => x.toJson())),
    "cfs": cfsValues.reverse[cfs],
    "ctin": ctin,
    "fldtr1": fldtr1,
    "cfs3b": cfsValues.reverse[cfs3B],
    "flprdr1": flprdr1Values.reverse[flprdr1],
  };
}

enum Cfs { Y }

final cfsValues = EnumValues({
  "Y": Cfs.Y
});

enum Flprdr1 { JAN_20 }

final flprdr1Values = EnumValues({
  "Jan-20": Flprdr1.JAN_20
});

class Inv {
  Inv({
    this.itms,
    this.val,
    this.invTyp,
    this.pos,
    this.idt,
    this.rchrg,
    this.inum,
    this.chksum,
  });

  List<Itm> itms;
  double val;
  InvTyp invTyp;
  String pos;
  String idt;
  Rchrg rchrg;
  String inum;
  String chksum;

  factory Inv.fromJson(Map<String, dynamic> json) => Inv(
    itms: List<Itm>.from(json["itms"].map((x) => Itm.fromJson(x))),
    val: json["val"].toDouble(),
    invTyp: invTypValues.map[json["inv_typ"]],
    pos: json["pos"],
    idt: json["idt"],
    rchrg: rchrgValues.map[json["rchrg"]],
    inum: json["inum"],
    chksum: json["chksum"],
  );

  Map<String, dynamic> toJson() => {
    "itms": List<dynamic>.from(itms.map((x) => x.toJson())),
    "val": val,
    "inv_typ": invTypValues.reverse[invTyp],
    "pos": pos,
    "idt": idt,
    "rchrg": rchrgValues.reverse[rchrg],
    "inum": inum,
    "chksum": chksum,
  };
}

enum InvTyp { R }

final invTypValues = EnumValues({
  "R": InvTyp.R
});

class Itm {
  Itm({
    this.num,
    this.itmDet,
  });

  int num;
  ItmDet itmDet;

  factory Itm.fromJson(Map<String, dynamic> json) => Itm(
    num: json["num"],
    itmDet: ItmDet.fromJson(json["itm_det"]),
  );

  Map<String, dynamic> toJson() => {
    "num": num,
    "itm_det": itmDet.toJson(),
  };
}

class ItmDet {
  ItmDet({
    this.csamt,
    this.samt,
    this.rt,
    this.txval,
    this.camt,
    this.iamt,
  });

  int csamt;
  double samt;
  int rt;
  double txval;
  double camt;
  double iamt;

  factory ItmDet.fromJson(Map<String, dynamic> json) => ItmDet(
    csamt: json["csamt"],
    samt: json["samt"] == null ? null : json["samt"].toDouble(),
    rt: json["rt"],
    txval: json["txval"].toDouble(),
    camt: json["camt"] == null ? null : json["camt"].toDouble(),
    iamt: json["iamt"] == null ? null : json["iamt"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "csamt": csamt,
    "samt": samt,
    "rt": rt,
    "txval": txval,
    "camt": camt,
    "iamt": iamt,
  };
}

enum Rchrg { N }

final rchrgValues = EnumValues({
  "N": Rchrg.N
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
