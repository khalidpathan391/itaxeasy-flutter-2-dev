// To parse this JSON data, do
//
//     final searchGstByPan = searchGstByPanFromJson(jsonString);

import 'dart:convert';

SearchGstByPan searchGstByPanFromJson(String str) => SearchGstByPan.fromJson(json.decode(str));

String searchGstByPanToJson(SearchGstByPan data) => json.encode(data.toJson());

class SearchGstByPan {
  SearchGstByPan({
    this.transactionId,
    this.code,
    this.data,
    this.timestamp,
  });

  String transactionId;
  int code;
  List<Datum> data;
  int timestamp;

  factory SearchGstByPan.fromJson(Map<String, dynamic> json) => SearchGstByPan(
    transactionId: json["transaction_id"],
    code: json["code"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "transaction_id": transactionId,
    "code": code,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "timestamp": timestamp,
  };
}

class Datum {
  Datum({
    this.data,
    this.gstin,
  });

  Data data;
  String gstin;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    data: Data.fromJson(json["data"]),
    gstin: json["gstin"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "gstin": gstin,
  };
}

class Data {
  Data({
    this.stjCd,
    this.lgnm,
    this.stj,
    this.dty,
    this.adadr,
    this.cxdt,
    this.gstin,
    this.nba,
    this.lstupdt,
    this.rgdt,
    this.ctb,
    this.pradr,
    this.tradeNam,
    this.sts,
    this.ctjCd,
    this.ctj,
  });

  String stjCd;
  String lgnm;
  String stj;
  String dty;
  List<dynamic> adadr;
  String cxdt;
  String gstin;
  List<String> nba;
  String lstupdt;
  String rgdt;
  String ctb;
  Pradr pradr;
  String tradeNam;
  String sts;
  String ctjCd;
  String ctj;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    stjCd: json["stjCd"],
    lgnm: json["lgnm"],
    stj: json["stj"],
    dty: json["dty"],
    adadr: List<dynamic>.from(json["adadr"].map((x) => x)),
    cxdt: json["cxdt"],
    gstin: json["gstin"],
    nba: List<String>.from(json["nba"].map((x) => x)),
    lstupdt: json["lstupdt"],
    rgdt: json["rgdt"],
    ctb: json["ctb"],
    pradr: Pradr.fromJson(json["pradr"]),
    tradeNam: json["tradeNam"],
    sts: json["sts"],
    ctjCd: json["ctjCd"],
    ctj: json["ctj"],
  );

  Map<String, dynamic> toJson() => {
    "stjCd": stjCd,
    "lgnm": lgnm,
    "stj": stj,
    "dty": dty,
    "adadr": List<dynamic>.from(adadr.map((x) => x)),
    "cxdt": cxdt,
    "gstin": gstin,
    "nba": List<dynamic>.from(nba.map((x) => x)),
    "lstupdt": lstupdt,
    "rgdt": rgdt,
    "ctb": ctb,
    "pradr": pradr.toJson(),
    "tradeNam": tradeNam,
    "sts": sts,
    "ctjCd": ctjCd,
    "ctj": ctj,
  };
}

class Pradr {
  Pradr({
    this.addr,
    this.ntr,
  });

  Addr addr;
  String ntr;

  factory Pradr.fromJson(Map<String, dynamic> json) => Pradr(
    addr: Addr.fromJson(json["addr"]),
    ntr: json["ntr"],
  );

  Map<String, dynamic> toJson() => {
    "addr": addr.toJson(),
    "ntr": ntr,
  };
}

class Addr {
  Addr({
    this.bnm,
    this.st,
    this.loc,
    this.bno,
    this.dst,
    this.stcd,
    this.city,
    this.flno,
    this.lt,
    this.pncd,
    this.lg,
  });

  String bnm;
  String st;
  String loc;
  String bno;
  String dst;
  String stcd;
  String city;
  String flno;
  String lt;
  String pncd;
  String lg;

  factory Addr.fromJson(Map<String, dynamic> json) => Addr(
    bnm: json["bnm"],
    st: json["st"],
    loc: json["loc"],
    bno: json["bno"],
    dst: json["dst"],
    stcd: json["stcd"],
    city: json["city"],
    flno: json["flno"],
    lt: json["lt"],
    pncd: json["pncd"],
    lg: json["lg"],
  );

  Map<String, dynamic> toJson() => {
    "bnm": bnm,
    "st": st,
    "loc": loc,
    "bno": bno,
    "dst": dst,
    "stcd": stcd,
    "city": city,
    "flno": flno,
    "lt": lt,
    "pncd": pncd,
    "lg": lg,
  };
}
