import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_api.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_invoice_api.dart';
import 'package:gst_app/Views/Invoice-Generator/model/customer.dart';
import 'package:gst_app/Views/Invoice-Generator/model/invoice.dart';
import 'package:gst_app/Views/Invoice-Generator/model/supplier.dart';
import 'package:gst_app/Views/Login_And_Register/theme.dart';

class Domestic extends StatefulWidget {
  const Domestic({Key key}) : super(key: key);

  @override
  _DomesticState createState() => _DomesticState();
}

class _DomesticState extends State<Domestic> {
  Invoice invoice = const Invoice();
  TextEditingController incometax = TextEditingController();
  TextEditingController surcharg = TextEditingController();
  TextEditingController edu = TextEditingController();
  // TextEditingController secondry = TextEditingController();
  TextEditingController totaltax = TextEditingController();
  TextEditingController relief = TextEditingController();
  TextEditingController tds = TextEditingController();
  TextEditingController assessed = TextEditingController();
  bool agree = false;
  List payerList = [
    "Select",
    "Individual",
    "HUF",
    "AOP/BOI",
    "Domestic Company",
    "Firms",
    "LLP",
    "Co-operative Society"
  ];
  List taxList = ["Select", "Yes", "No"];
  int groupValue = 0;
  String payer;
  String taxaction;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                            'Domestic',
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
                SizedBox(
                  height: 20,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       "Tax Payer:",
                //       style: TextStyle(
                //         fontFamily: "Poppins",
                //         fontWeight: FontWeight.w500,
                //         letterSpacing: 1.5,
                //         fontSize: 12.5,
                //       ),
                //     ),
                //     SizedBox(width: 20),
                //     Text(
                //       "________________",
                //       style: TextStyle(
                //         fontFamily: "Poppins",
                //         fontWeight: FontWeight.w500,
                //         letterSpacing: 1.5,
                //         fontSize: 12.5,
                //       ),
                //     ),
                //   ],
                // ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Tax Payer",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 65,
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
                  child: DropdownButton(
                      onChanged: (value) {
                        setState(() {
                          payer = value as String;
                        });
                      },
                      hint: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Select",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      underline: Text(""),
                      isExpanded: true,
                      value: payer,
                      items: payerList.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem<String>(
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 20),
                          ),
                          value: e,
                        );
                      }).toList()),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Tick if total turnover or gross receipt of the company in the previous year 2017-18 does not exceed 400 crore rupees",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Tick if company opted any quality for section 115BAC",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Tick if company opted and quality for section 115BAA",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Tick if company opted and quality for section 115BAB",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Net Taxable Income",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: incometax,
                      decoration: InputDecoration(
                        //hintText: 'Name',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Income Tax",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: incometax,
                      decoration: InputDecoration(
                        //hintText: 'Name',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Surcharge",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: surcharg,
                      decoration: InputDecoration(
                        // hintText: 'Address',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Health and Education Cess ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: edu,
                      decoration: InputDecoration(
                        // hintText: 'GSTIN No of the party',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Total Tax Liablity",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: totaltax,
                      decoration: InputDecoration(
                        // hintText: 'Quantity',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Relief",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: relief,
                      decoration: InputDecoration(
                        // hintText: 'Price',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "TDS/TCS/MAT/ (AMT) Credit Utilized",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: tds,
                      decoration: InputDecoration(
                        // hintText: 'Quantity',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Assessed Tax",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                      controller: assessed,
                      decoration: InputDecoration(
                        // hintText: 'Quantity',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: 250,
                        child: Center(
                            child: Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: 250,
                        child: Center(
                            child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                  ),
                ]),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
