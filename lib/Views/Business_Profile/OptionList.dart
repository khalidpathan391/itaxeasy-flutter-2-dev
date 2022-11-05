import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../Calculator/ifsc_calcii/Theme.dart';
import 'package:getwidget/getwidget.dart';

class OptionList extends StatefulWidget {
  const OptionList({Key key}) : super(key: key);

  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(children: [
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'LISTT',
                          style: heading2.copyWith(color: textBlack),
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "Date"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "Period"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "Print"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.blue.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Voucher",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.redAccent.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Sale",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.purpleAccent.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Purchase",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.yellow.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Expenses",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.purple.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Bank",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.blueAccent.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Trading",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.lightGreen.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "P & L Account",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  color: Colors.grey.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Balance Sheet",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 20.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "Pramotar"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "After 2 Chargable"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: const GFButton(
                            color: Colors.purple,
                            // onPressed: () async {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   final insert = Bankdetails(
                            //       accountNumber: accountCont.text,
                            //       name: nameCont.text,
                            //       ifsc: ifscCont.text,
                            //       mobile: contactCont.text);
                            //   final result =
                            //   await apiServices.bankVerify(insert);
                            //   setState(() {
                            //     isLoading = false;
                            //   });
                            //   if (result.data != null) {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 BankVerifyResponse(
                            //                   name: nameCont.text,
                            //                   account: accountCont.text,
                            //                   ifsc: ifscCont.text,
                            //                   contact: contactCont.text,
                            //                 )));
                            //     print(
                            //         "-------------------SUCCESS--------------------");
                            //   } else {
                            //     print(
                            //         "-------------------ERROR--------------------");
                            //   }
                            // },
                            text: "Gate Way"),
                      ),
                    ),
                  ),
                ],
              ),
              FadeInRight(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: const GFButton(
                      color: Colors.purple,
                      // onPressed: () async {
                      //   setState(() {
                      //     isLoading = true;
                      //   });
                      //   final insert = Bankdetails(
                      //       accountNumber: accountCont.text,
                      //       name: nameCont.text,
                      //       ifsc: ifscCont.text,
                      //       mobile: contactCont.text);
                      //   final result =
                      //   await apiServices.bankVerify(insert);
                      //   setState(() {
                      //     isLoading = false;
                      //   });
                      //   if (result.data != null) {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) =>
                      //                 BankVerifyResponse(
                      //                   name: nameCont.text,
                      //                   account: accountCont.text,
                      //                   ifsc: ifscCont.text,
                      //                   contact: contactCont.text,
                      //                 )));
                      //     print(
                      //         "-------------------SUCCESS--------------------");
                      //   } else {
                      //     print(
                      //         "-------------------ERROR--------------------");
                      //   }
                      // },
                      text: "Invoice File"),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
