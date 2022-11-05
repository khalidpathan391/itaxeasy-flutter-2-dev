// To parse this JSON data, do
//
//     final searchGstNumber = searchGstNumberFromJson(jsonString);

import 'dart:convert';

SearchGstNumber searchGstNumberFromJson(String str) => SearchGstNumber.fromJson(json.decode(str));

String searchGstNumberToJson(SearchGstNumber data) => json.encode(data.toJson());

class SearchGstNumber {
  SearchGstNumber({
    this.success,
    this.results,
  });

  bool success;
  Results results;

  factory SearchGstNumber.fromJson(Map<String, dynamic> json) => SearchGstNumber(
    success: json["success"],
    results: Results.fromJson(json["results"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "results": results.toJson(),
  };
}

class Results {
  Results({
    this.transactionId,
    this.code,
    this.data,
    this.timestamp,
  });

  String transactionId;
  int code;
  Data data;
  int timestamp;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
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
