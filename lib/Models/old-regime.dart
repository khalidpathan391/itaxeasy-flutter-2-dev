

import 'dart:convert';

OldRegime oldRegimeFromJson(String str) => OldRegime.fromJson(json.decode(str));

String oldRegimeResponseToJson(OldRegime data) => json.encode(data.toJson());

class OldRegime {
  OldRegime({
    this.financialYear,
    this.pan,
    this.filingCategory,
    this.residentialStatus,
    this.basicSalary,
    this.hraReceived,
    this.rentPaid,
    this.address,
    this.otherAllowances,
    this.interestPaidOnLetOutHpLoan,
    this.rentReceived,
    this.propertyTaxPaid,
    this.interestPaidOnSelfOccupiedHpLoan,
    this.savingsInterest,
    this.fdInterest,
    this.dividendIncome,
    this.otherIncome,
    this.elss,
    this.nps,
    this.ppf,
    this.licPremium,
  });

  String financialYear;
  String pan;
  String filingCategory;
  String residentialStatus;
  int basicSalary;
  int hraReceived;
  int rentPaid;
  Address2 address;
  int otherAllowances;
  int interestPaidOnLetOutHpLoan;
  int rentReceived;
  int propertyTaxPaid;
  int interestPaidOnSelfOccupiedHpLoan;
  int savingsInterest;
  int fdInterest;
  int dividendIncome;
  int otherIncome;
  int elss;
  int nps;
  int ppf;
  int licPremium;

  factory OldRegime.fromJson(Map<String, dynamic> json) => OldRegime(
    financialYear: json["financial_year"],
    pan: json["pan"],
    filingCategory: json["filing_category"],
    residentialStatus: json["residential_status"],
    basicSalary: json["basic_salary"],
    hraReceived: json["hra_received"],
    rentPaid: json["rent_paid"],
    address: Address2.fromJson(json["address"]),
    otherAllowances: json["other_allowances"],
    interestPaidOnLetOutHpLoan: json["interest_paid_on_let_out_hp_loan"],
    rentReceived: json["rent_received"],
    propertyTaxPaid: json["property_tax_paid"],
    interestPaidOnSelfOccupiedHpLoan: json["interest_paid_on_self_occupied_hp_loan"],
    savingsInterest: json["savings_interest"],
    fdInterest: json["fd_interest"],
    dividendIncome: json["dividend_income"],
    otherIncome: json["other_income"],
    elss: json["elss"],
    nps: json["nps"],
    ppf: json["ppf"],
    licPremium: json["lic_premium"],
  );

  Map<String, dynamic> toJson() => {
    "financial_year": financialYear,
    "pan": pan,
    "filing_category": filingCategory,
    "residential_status": residentialStatus,
    "basic_salary": basicSalary,
    "hra_received": hraReceived,
    "rent_paid": rentPaid,
    "address": address.toJson(),
    "other_allowances": otherAllowances,
    "interest_paid_on_let_out_hp_loan": interestPaidOnLetOutHpLoan,
    "rent_received": rentReceived,
    "property_tax_paid": propertyTaxPaid,
    "interest_paid_on_self_occupied_hp_loan": interestPaidOnSelfOccupiedHpLoan,
    "savings_interest": savingsInterest,
    "fd_interest": fdInterest,
    "dividend_income": dividendIncome,
    "other_income": otherIncome,
    "elss": elss,
    "nps": nps,
    "ppf": ppf,
    "lic_premium": licPremium,
  };
}

class Address2 {
  Address2({
    this.city,
  });

  String city;

  factory Address2.fromJson(Map<String, dynamic> json) => Address2(
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
  };
}

OldRegimeResponse regimeResponseFromJson(String str) => OldRegimeResponse.fromJson(json.decode(str));

class OldRegimeResponse {
  int gross_taxable_income;
  int surcharge;
  int gross_total_income;
  int total_deductions_under_chapter_vi_a;
  int cyla;
  int rebate;
  int cfl;
  int tax_on_total_income;
  int due;
  int total_taxes_paid;
  int total_tax_payable;
  double effective_tax_rate;
  int health_and_education_cess;
  int refund;

  OldRegimeResponse(
      {this.gross_taxable_income,
        this.surcharge,
        this.gross_total_income,
        this.total_deductions_under_chapter_vi_a,
        this.cyla,
        this.rebate,
        this.cfl,
        this.tax_on_total_income,
        this.due,
        this.total_taxes_paid,
        this.total_tax_payable,
        this.effective_tax_rate,
        this.health_and_education_cess,
        this.refund});

  factory OldRegimeResponse.fromJson(Map<String, dynamic> item) {
    return OldRegimeResponse(
      gross_taxable_income: item["gross_taxable_income"],
      surcharge: item["surcharge"],
      gross_total_income: item["gross_total_income"],
      total_deductions_under_chapter_vi_a: item["total_deductions_under_chapter_vi_a"],
      cyla: item["cyla"],
      rebate: item["rebate"],
      cfl: item["cfl"],
      tax_on_total_income: item["tax_on_total_income"],
      due: item["due"],
      total_taxes_paid: item["total_taxes_paid"],
      total_tax_payable: item["total_tax_payable"],
      effective_tax_rate: item["effective_tax_rate"],
      health_and_education_cess: item["health_and_education_cess"],
      refund: item["refund"],
    );
  }
}



