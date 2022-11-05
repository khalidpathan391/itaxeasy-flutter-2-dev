import 'package:flutter/material.dart';

import '../../Models/api_response.dart';
import '../../Models/new-regime.dart';
import '../../Services/api_services.dart';
import '../Login_And_Register/Theme.dart';




class NewRegimeRsoo extends StatefulWidget {
   NewRegimeRsoo({Key key,this.financialYear,this.pan,this.filingCategory,this.residentialStatus,this.basicSalary,this.hraReceived,
   this.rentPaid,this.address,this.otherAllowances,this.interestPaidOnLetOutHpLoan,this.rentReceived,this.propertyTaxPaid,
   this.interestPaidOnSelfOccupiedHpLoan,this.savingsInterest,this.fdInterest,this.dividendIncome,this.otherIncome}) : super(key: key);


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
  @override
  _NewRegimeRsooState createState() => _NewRegimeRsooState();
}

class _NewRegimeRsooState extends State<NewRegimeRsoo> {
  var insert;
  @override
  void initState() {
    insert = NewRegime(
      financialYear: widget.financialYear,
      pan: widget.pan,
      filingCategory: widget.filingCategory,
      residentialStatus: widget.residentialStatus,
      basicSalary: widget.basicSalary,
      hraReceived: widget.hraReceived,
      rentPaid: widget.rentPaid,
      address: widget.address,
      otherAllowances: widget.otherAllowances,
      interestPaidOnLetOutHpLoan: widget.interestPaidOnLetOutHpLoan,
      rentReceived: widget.rentReceived,
      propertyTaxPaid: widget.propertyTaxPaid,
      interestPaidOnSelfOccupiedHpLoan: widget.interestPaidOnSelfOccupiedHpLoan,
      savingsInterest: widget.savingsInterest,
      fdInterest: widget.fdInterest,
      dividendIncome: widget.dividendIncome,
      otherIncome: widget.otherIncome,
    );
    getDetails();
    super.initState();
  }
  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<RegimeResponse> apiResponse;
// Map<String,dynamic> obj;

  getDetails() async{
    setState(() {
      isLoading = true;
    });
    print(insert);
    apiResponse = await apiServices.gstNewRegime(insert);

    // obj = apiResponse.data;
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading? const Center(child: CircularProgressIndicator(),) : SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                     const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'New Regime',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                       const SizedBox(
                         height: 10,
                       ),
                        Image.asset(
                          'assets/images/accent.png',
                          width: 99,
                          height: 4,
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: StreamBuilder<Object>(
                      stream: null,
                      builder: (context, snapshot) {
                        return Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom:10 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Gross Taxable Income",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.gross_taxable_income.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Surcharge",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.surcharge.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Gross Total Income",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.gross_total_income.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Total Deductions Under Chapter vi a",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.total_deductions_under_chapter_vi_a.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Cyla",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.cyla.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Rebate",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Text(apiResponse.data.rebate.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("CFL",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.cfl.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Due",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),
                                const SizedBox(height: 5,),
                                Wrap(
                                    children:[
                                      Text(apiResponse.data.due.toString(),
                                        style: const TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 15.5,
                                        ),),
                                    ]
                                ),
                                const SizedBox(height: 10,),
                                const Text("Total Taxes Paid",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.total_taxes_paid.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Total Tax Payable",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.total_tax_payable.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Effective Tax Rate",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.effective_tax_rate.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Health and Education Cess",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.health_and_education_cess.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                                const SizedBox(height: 10,),
                                const Text("Refund",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),),

                                const SizedBox(height: 5,),
                                Text(apiResponse.data.refund.toString(),
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 15.5,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

