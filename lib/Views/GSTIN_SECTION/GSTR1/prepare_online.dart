import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import 'AddRecordDetails/B2B/B2B Invoice.dart';
import 'AddRecordDetails/B2C/B2CInvoice.dart';

class PrepareOnline extends StatefulWidget {
  const PrepareOnline({Key key}) : super(key: key);

  @override
  _PrepareOnlineState createState() => _PrepareOnlineState();
}

class _PrepareOnlineState extends State<PrepareOnline> {
  bool isVisible = false;
  bool isVisible2 = false;
  bool isVisible3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                          'GSTR-1/IFF',
                          style: heading2.copyWith(color: textBlack),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                height: 20,
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "GSTR-1 - Details of outward supplies\nof goods or services",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 16.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     FadeInRight(
                      //       delay: const Duration(milliseconds: 500),
                      //       duration: const Duration(milliseconds: 500),
                      //       child: GFButton(
                      //           padding: const EdgeInsets.all(10),
                      //           shape: GFButtonShape.pills,
                      //           onPressed: () {
                      //             // Navigator.push(context, MaterialPageRoute(builder: (context)=>PrepareOnline()));
                      //           },
                      //           text: "E-INVOICE ADVISORY"),
                      //     ),
                      //     FadeInRight(
                      //       delay: const Duration(milliseconds: 500),
                      //       duration: const Duration(milliseconds: 500),
                      //       child: GFButton(
                      //           padding: const EdgeInsets.all(10),
                      //           shape: GFButtonShape.pills,
                      //           onPressed: () {
                      //             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      //           },
                      //           text: "HELP"),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "GSTIN - 23ABLPP8305K1ZE",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 13.5,
                            ),
                          ),
                          Text(
                            "FY - 2021-22",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 13.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Legal Name - PRAMOD KUMAR PAHAWA",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 13.5,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Trade Name - M/S DURGA AUTO ELECTRICALS",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 13.5,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Status - Not Filed",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 13.5,
                            ),
                          ),
                          Text(
                            "Due Date - 11/01/2022",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 13.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.blue.withOpacity(0.5),
              //   ),
              //   padding: const EdgeInsets.all(10),
              //   child: const Text(
              //            " The summary has been generated on 18/12/2021 20:24:40 and no changes have been made thereafter. Please click on Preview (summary PDF) to verify details and proceed to submit/file.",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontFamily: "Poppins",
              //       fontWeight: FontWeight.w500,
              //       letterSpacing: 1.5,
              //       fontSize: 13.5,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "ADD RECORD DETAILS",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        isVisible
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isVisible,
                child: Column(
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 300),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const B2bInvoice()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 10),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "4A, 4B, 6B, 6C - B2B Invoices",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 16.5,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.task_alt,
                                      color: Colors.green.shade200,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 20.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 400),
                      duration: const Duration(milliseconds: 400),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const B2cInvoice()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 10),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "5A - B2C (Large) Invoices",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 16.5,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.task_alt,
                                      color: Colors.green.shade200,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 20.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "6A - Exports Invoices",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "7 - B2C (Others)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 700),
                      duration: const Duration(milliseconds: 700),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "8A, 8B, 8C, 8D - Nil Rated Supplies",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 800),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9B - Credit / Debit Notes (Registered)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 900),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9B - Credit / Debit Notes (Unregistered)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1000),
                      duration: const Duration(milliseconds: 1000),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "11A(1), 11A(2) - Tax Liability (Advances Received)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1100),
                      duration: const Duration(milliseconds: 1100),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "11B(1), 11B(2) - Adjustment of Advances",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1200),
                      duration: const Duration(milliseconds: 1200),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "12 - HSN-wise summary of outward supplies",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1300),
                      duration: const Duration(milliseconds: 1300),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "13 - Documents Issued",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible2 = !isVisible2;
                  });
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "AMEND RECORD DETAILS",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        isVisible2
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isVisible2,
                child: Column(
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 300),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9A - Amended B2B Invoices",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 400),
                      duration: const Duration(milliseconds: 400),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9A - Amended B2C (Large) Invoices",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9A - Amended Exports Invoices",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9C - Amended Credit/Debit Notes (Registered)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 700),
                      duration: const Duration(milliseconds: 700),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "9C - Amended Credit/Debit Notes (Unregistered)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 800),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "10 - Amended B2C(Others)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 900),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "11A - Amended Tax Liability (Advances Received)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1000),
                      duration: const Duration(milliseconds: 1000),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "11B - Amendment of Adjustment of Advances",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 16.5,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_alt,
                                    color: Colors.green.shade200,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.blue.withOpacity(0.5),
              //   ),
              //   padding: const EdgeInsets.all(10),
              //   child: const Text(
              //     " The taxpayers for whom e-invoicing is not applicable may ignore the sections/options related to e-invoice download. The downloaded file would be blank in case taxpayer is not e-invoicing or when e-invoices reported to IRP are yet to be processed by GST system",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontFamily: "Poppins",
              //       fontWeight: FontWeight.w500,
              //       letterSpacing: 1.5,
              //       fontSize: 13.5,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible3 = !isVisible3;
                  });
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "E-INVOICE DOWNLOAD HISTORY",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        isVisible3
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isVisible3,
                child: Column(
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 300),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.withOpacity(0.5),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  "No files available for download",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 13.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
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
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "DOWNLOAD DETAILS FROM E-INVOICE (EXCEL)"),
                ),
              ),
              // FadeInRight(
              //   delay: const Duration(milliseconds: 500),
              //   duration: const Duration(milliseconds: 500),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(14.0),
              //     ),
              //     child: GFButton(
              //         color:Colors.blue.shade900,
              //
              //         onPressed: () {
              //           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
              //         },
              //         text: "RESET"),
              //   ),
              // ),
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
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "PREVIEW"),
                ),
              ),

              // FadeInRight(
              //   delay: const Duration(milliseconds: 500),
              //   duration: const Duration(milliseconds: 500),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(14.0),
              //     ),
              //     child: GFButton(
              //         color:Colors.blue.shade900,
              //
              //         onPressed: () {
              //           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
              //         },
              //         text: "FILE RETURN"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ));
  }
}
