// To parse this JSON data, do
//
//     final searchGstByPan = searchGstByPanFromJson(jsonString);

import 'dart:convert';

SearchGstByPan searchGstByPanFromJson(String str) => SearchGstByPan.fromJson(json.decode(str));

String searchGstByPanToJson(SearchGstByPan data) => json.encode(data.toJson());

class SearchGstByPan {
  SearchGstByPan({
    this.status,
    this.company,
  });

  String status;
  List<Company> company;

  factory SearchGstByPan.fromJson(Map<String, dynamic> json) => SearchGstByPan(
    status: json["status"],
    company: List<Company>.from(json["company"].map((x) => Company.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "company": List<dynamic>.from(company.map((x) => x.toJson())),
  };
}

class Company {
  Company({
    this.data,
    this.gstin,
  });

  Data data;
  String gstin;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
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
  List<Adr> adadr;
  String cxdt;
  String gstin;
  List<Nba> nba;
  String lstupdt;
  String rgdt;
  String ctb;
  Adr pradr;
  String tradeNam;
  String sts;
  String ctjCd;
  String ctj;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    stjCd: json["stjCd"],
    lgnm: json["lgnm"],
    stj: json["stj"],
    dty: json["dty"],
    adadr: List<Adr>.from(json["adadr"].map((x) => Adr.fromJson(x))),
    cxdt: json["cxdt"],
    gstin: json["gstin"],
    nba: List<Nba>.from(json["nba"].map((x) => nbaValues.map[x])),
    lstupdt: json["lstupdt"],
    rgdt: json["rgdt"],
    ctb: json["ctb"],
    pradr: Adr.fromJson(json["pradr"]),
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
    "adadr": List<dynamic>.from(adadr.map((x) => x.toJson())),
    "cxdt": cxdt,
    "gstin": gstin,
    "nba": List<dynamic>.from(nba.map((x) => nbaValues.reverse[x])),
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

class Adr {
  Adr({
    this.addr,
    this.ntr,
  });

  Addr addr;
  Nba ntr;

  factory Adr.fromJson(Map<String, dynamic> json) => Adr(
    addr: Addr.fromJson(json["addr"]),
    ntr: nbaValues.map[json["ntr"]],
  );

  Map<String, dynamic> toJson() => {
    "addr": addr.toJson(),
    "ntr": nbaValues.reverse[ntr],
  };
}

class Addr {
  Addr({
    this.bnm,
    this.st,
    this.loc,
    this.bno,
    this.stcd,
    this.dst,
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
  Stcd stcd;
  String dst;
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
    stcd: stcdValues.map[json["stcd"]],
    dst: json["dst"],
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
    "stcd": stcdValues.reverse[stcd],
    "dst": dst,
    "city": city,
    "flno": flno,
    "lt": lt,
    "pncd": pncd,
    "lg": lg,
  };
}

enum Stcd { DELHI }

final stcdValues = EnumValues({
  "Delhi": Stcd.DELHI
});

enum Nba { OFFICE_SALE_OFFICE, RETAIL_BUSINESS }

final nbaValues = EnumValues({
  "Office / Sale Office": Nba.OFFICE_SALE_OFFICE,
  "Retail Business": Nba.RETAIL_BUSINESS
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
