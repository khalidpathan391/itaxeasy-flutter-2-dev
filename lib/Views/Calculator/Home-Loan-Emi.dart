import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../Models/homeLoanEmi.dart';
import '../Login_And_Register/Theme.dart';
import 'HomeLoanResponse.dart';

class HomeLoanEMIUI extends StatefulWidget {
  const HomeLoanEMIUI({Key key}) : super(key: key);

  @override
  _HomeLoanEMIUIState createState() => _HomeLoanEMIUIState();
}

class _HomeLoanEMIUIState extends State<HomeLoanEMIUI> {
  TextEditingController loanAmount = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController loanTenure = TextEditingController();

  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<HomeLoanResponse> _apiResponse;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.grey.shade300,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'Home Loan EMI',
                                  style: heading2.copyWith(color: textBlack),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "(Enter the following details)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 13.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'assets/images/accent.png',
                                color: Colors.blue.shade900,
                                width: 99,
                                height: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Form(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  // border: Border.all(
                                  //     color: Colors.blue.shade900),
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: loanAmount,
                                decoration: InputDecoration(
                                  hintText: 'loanAmount',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  // border: Border.all(
                                  //     color: Colors.blue.shade900),
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: TextFormField(
                                controller: rate,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'rate',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Loan Tenure",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  // border: Border.all(
                                  //     color: Colors.blue.shade900),
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: TextFormField(
                                controller: loanTenure,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'loanTenure',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: GFButton(
                              color: Colors.blue.shade900,
                              onPressed: () async {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                if (loanAmount.text.isEmpty ||
                                    rate.text.isEmpty ||
                                    loanTenure.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please Fill The Given Field"),
                                  ));
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  final insert = HomeLoanEmi(
                                      loanAmount: int.parse(loanAmount.text),
                                      rate: double.parse(rate.text),
                                      loanTenure: int.parse(loanTenure.text));
                                  _apiResponse =
                                      await apiServices.homeLoanEmi(insert);

                                  if (_apiResponse.resposeCode == 200) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeLoanResponseUi(
                                                  apiResponse: _apiResponse,
                                                )));
                                    print(
                                        "------------------SUCCESS-----------------");
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Something Went Wrong"),
                                    ));
                                    print(
                                        "------------------ERROR-----------------");
                                  }
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                              text: "Calculate"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
