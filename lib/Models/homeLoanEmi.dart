
import 'dart:convert';

HomeLoanEmi businessLoanFromJson(String str) => HomeLoanEmi.fromJson(json.decode(str));

String businessLoanToJson(HomeLoanEmi data) => json.encode(data.toJson());

class HomeLoanEmi {
  HomeLoanEmi({
    this.loanAmount,
    this.rate,
    this.loanTenure,
  });

  int loanAmount;
  double rate;
  int loanTenure;

  factory HomeLoanEmi.fromJson(Map<String, dynamic> json) => HomeLoanEmi(
    loanAmount: json["loanAmount"],
    rate: json["rate"],
    loanTenure: json["loanTenure"],
  );

  Map<String, dynamic> toJson() => {
    "loanAmount": loanAmount,
    "rate": rate,
    "loanTenure": loanTenure,
  };
}


HomeLoanResponse homeLoanResponseFromJson(String str) => HomeLoanResponse.fromJson(json.decode(str));

String homeLoanResponseToJson(HomeLoanResponse data) => json.encode(data.toJson());

class HomeLoanResponse {
  HomeLoanResponse({
    this.status,
    this.emi,
    this.loanAmount,
    this.totalInterest,
    this.totalAmount,
    this.monthlyPayment,
  });

  String status;
  int emi;
  int loanAmount;
  int totalInterest;
  int totalAmount;
  List<MonthlyPayment> monthlyPayment;

  factory HomeLoanResponse.fromJson(Map<String, dynamic> json) => HomeLoanResponse(
    status: json["status"],
    emi: json["emi"],
    loanAmount: json["loanAmount"],
    totalInterest: json["totalInterest"],
    totalAmount: json["totalAmount"],
    monthlyPayment: List<MonthlyPayment>.from(json["monthlyPayment"].map((x) => MonthlyPayment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "emi": emi,
    "loanAmount": loanAmount,
    "totalInterest": totalInterest,
    "totalAmount": totalAmount,
    "monthlyPayment": List<dynamic>.from(monthlyPayment.map((x) => x.toJson())),
  };
}

class MonthlyPayment {
  MonthlyPayment({
    this.month,
    this.emi,
    this.towardsLoan,
    this.towardsInterest,
    this.outstandingLoan,
  });

  int month;
  int emi;
  int towardsLoan;
  int towardsInterest;
  int outstandingLoan;

  factory MonthlyPayment.fromJson(Map<String, dynamic> json) => MonthlyPayment(
    month: json["month"],
    emi: json["emi"],
    towardsLoan: json["towards_loan"],
    towardsInterest: json["towards_interest"],
    outstandingLoan: json["outstanding_loan"],
  );

  Map<String, dynamic> toJson() => {
    "month": month,
    "emi": emi,
    "towards_loan": towardsLoan,
    "towards_interest": towardsInterest,
    "outstanding_loan": outstandingLoan,
  };
}

