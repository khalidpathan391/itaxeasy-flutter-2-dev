import 'dart:convert';

NewRegime newRegimeFromJson(String str) => NewRegime.fromJson(json.decode(str));

String newRegimeToJson(NewRegime data) => json.encode(data.toJson());

class NewRegime {
  NewRegime({
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
  });

  String financialYear;
  String pan;
  String filingCategory;
  String residentialStatus;
  int basicSalary;
  int hraReceived;
  int rentPaid;
  Address address;
  int otherAllowances;
  int interestPaidOnLetOutHpLoan;
  int rentReceived;
  int propertyTaxPaid;
  int interestPaidOnSelfOccupiedHpLoan;
  int savingsInterest;
  int fdInterest;
  int dividendIncome;
  int otherIncome;

  factory NewRegime.fromJson(Map<String, dynamic> json) => NewRegime(
        financialYear: json["financial_year"],
        pan: json["pan"],
        filingCategory: json["filing_category"],
        residentialStatus: json["residential_status"],
        basicSalary: json["basic_salary"],
        hraReceived: json["hra_received"],
        rentPaid: json["rent_paid"],
        address: Address.fromJson(json["address"]),
        otherAllowances: json["other_allowances"],
        interestPaidOnLetOutHpLoan: json["interest_paid_on_let_out_hp_loan"],
        rentReceived: json["rent_received"],
        propertyTaxPaid: json["property_tax_paid"],
        interestPaidOnSelfOccupiedHpLoan:
            json["interest_paid_on_self_occupied_hp_loan"],
        savingsInterest: json["savings_interest"],
        fdInterest: json["fd_interest"],
        dividendIncome: json["dividend_income"],
        otherIncome: json["other_income"],
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
        "interest_paid_on_self_occupied_hp_loan":
            interestPaidOnSelfOccupiedHpLoan,
        "savings_interest": savingsInterest,
        "fd_interest": fdInterest,
        "dividend_income": dividendIncome,
        "other_income": otherIncome,
      };
}

class Address {
  Address({
    this.city,
  });

  String city;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
      };
}
RegimeResponse regimeResponseFromJson(String str) => RegimeResponse.fromJson(json.decode(str));

class RegimeResponse {
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
  int effective_tax_rate;
  int health_and_education_cess;
  int refund;

  RegimeResponse(
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

  factory RegimeResponse.fromJson(Map<String, dynamic> item) {
    return RegimeResponse(
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
