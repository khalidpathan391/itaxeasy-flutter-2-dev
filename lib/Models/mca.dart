// To parse this JSON data, do
//
//     final mca = mcaFromJson(jsonString);

import 'dart:convert';

Mca mcaFromJson(String str) => Mca.fromJson(json.decode(str));

String mcaToJson(Mca data) => json.encode(data.toJson());

class Mca {
  Mca({
    this.status,
    this.company,
  });

  String status;
  Company company;

  factory Mca.fromJson(Map<String, dynamic> json) => Mca(
    status: json["status"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "company": company.toJson(),
  };
}

class Company {
  Company({
    this.companyMasterData,
    this.charges,
    this.directorsSignatoryDetails,
  });

  CompanyMasterData companyMasterData;
  List<dynamic> charges;
  List<DirectorsSignatoryDetail> directorsSignatoryDetails;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    companyMasterData: CompanyMasterData.fromJson(json["company_master_data"]),
    charges: List<dynamic>.from(json["charges"].map((x) => x)),
    directorsSignatoryDetails: List<DirectorsSignatoryDetail>.from(json["directors/signatory_details"].map((x) => DirectorsSignatoryDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "company_master_data": companyMasterData.toJson(),
    "charges": List<dynamic>.from(charges.map((x) => x)),
    "directors/signatory_details": List<dynamic>.from(directorsSignatoryDetails.map((x) => x.toJson())),
  };
}

class CompanyMasterData {
  CompanyMasterData({
    this.companyCategory,
    this.emailId,
    this.classOfCompany,
    this.numberOfMembersApplicableInCaseOfCompanyWithoutShareCapital,
    this.addressOtherThanROWhereAllOrAnyBooksOfAccountAndPapersAreMaintained,
    this.dateOfLastAgm,
    this.registeredAddress,
    this.activeCompliance,
    this.registrationNumber,
    this.paidUpCapitalRs,
    this.whetherListedOrNot,
    this.suspendedAtStockExchange,
    this.companySubcategory,
    this.authorisedCapitalRs,
    this.companyStatusForEfiling,
    this.rocCode,
    this.dateOfBalanceSheet,
    this.dateOfIncorporation,
    this.cin,
    this.companyName,
  });

  String companyCategory;
  String emailId;
  String classOfCompany;
  String numberOfMembersApplicableInCaseOfCompanyWithoutShareCapital;
  String addressOtherThanROWhereAllOrAnyBooksOfAccountAndPapersAreMaintained;
  String dateOfLastAgm;
  String registeredAddress;
  String activeCompliance;
  String registrationNumber;
  String paidUpCapitalRs;
  String whetherListedOrNot;
  String suspendedAtStockExchange;
  String companySubcategory;
  String authorisedCapitalRs;
  String companyStatusForEfiling;
  String rocCode;
  String dateOfBalanceSheet;
  String dateOfIncorporation;
  String cin;
  String companyName;

  factory CompanyMasterData.fromJson(Map<String, dynamic> json) => CompanyMasterData(
    companyCategory: json["company_category"],
    emailId: json["email_id"],
    classOfCompany: json["class_of_company"],
    numberOfMembersApplicableInCaseOfCompanyWithoutShareCapital: json["number_of_members(applicable_in_case_of_company_without_share_capital)"],
    addressOtherThanROWhereAllOrAnyBooksOfAccountAndPapersAreMaintained: json["address_other_than_r/o_where_all_or_any_books_of_account_and_papers_are_maintained"],
    dateOfLastAgm: json["date_of_last_agm"],
    registeredAddress: json["registered_address"],
    activeCompliance: json["active_compliance"],
    registrationNumber: json["registration_number"],
    paidUpCapitalRs: json["paid_up_capital(rs)"],
    whetherListedOrNot: json["whether_listed_or_not"],
    suspendedAtStockExchange: json["suspended_at_stock_exchange"],
    companySubcategory: json["company_subcategory"],
    authorisedCapitalRs: json["authorised_capital(rs)"],
    companyStatusForEfiling: json["company_status(for_efiling)"],
    rocCode: json["roc_code"],
    dateOfBalanceSheet: json["date_of_balance_sheet"],
    dateOfIncorporation: json["date_of_incorporation"],
    cin: json["cin "],
    companyName: json["company_name"],
  );

  Map<String, dynamic> toJson() => {
    "company_category": companyCategory,
    "email_id": emailId,
    "class_of_company": classOfCompany,
    "number_of_members(applicable_in_case_of_company_without_share_capital)": numberOfMembersApplicableInCaseOfCompanyWithoutShareCapital,
    "address_other_than_r/o_where_all_or_any_books_of_account_and_papers_are_maintained": addressOtherThanROWhereAllOrAnyBooksOfAccountAndPapersAreMaintained,
    "date_of_last_agm": dateOfLastAgm,
    "registered_address": registeredAddress,
    "active_compliance": activeCompliance,
    "registration_number": registrationNumber,
    "paid_up_capital(rs)": paidUpCapitalRs,
    "whether_listed_or_not": whetherListedOrNot,
    "suspended_at_stock_exchange": suspendedAtStockExchange,
    "company_subcategory": companySubcategory,
    "authorised_capital(rs)": authorisedCapitalRs,
    "company_status(for_efiling)": companyStatusForEfiling,
    "roc_code": rocCode,
    "date_of_balance_sheet": dateOfBalanceSheet,
    "date_of_incorporation": dateOfIncorporation,
    "cin ": cin,
    "company_name": companyName,
  };
}

class DirectorsSignatoryDetail {
  DirectorsSignatoryDetail({
    this.endDate,
    this.surrenderedDin,
    this.dinPan,
    this.beginDate,
    this.name,
  });

  String endDate;
  String surrenderedDin;
  String dinPan;
  String beginDate;
  String name;

  factory DirectorsSignatoryDetail.fromJson(Map<String, dynamic> json) => DirectorsSignatoryDetail(
    endDate: json["end_date"],
    surrenderedDin: json["surrendered_din"],
    dinPan: json["din/pan"],
    beginDate: json["begin_date"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "end_date": endDate,
    "surrendered_din": surrenderedDin,
    "din/pan": dinPan,
    "begin_date": beginDate,
    "name": name,
  };
}
