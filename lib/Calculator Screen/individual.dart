import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_api.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_invoice_api.dart';
import 'package:gst_app/Views/Invoice-Generator/model/customer.dart';
import 'package:gst_app/Views/Invoice-Generator/model/invoice.dart';
import 'package:gst_app/Views/Invoice-Generator/model/supplier.dart';
import 'package:gst_app/Views/Login_And_Register/theme.dart';

import 'mydemoform/MyForm.dart';

class Select extends StatefulWidget {
  const Select({Key key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  Invoice invoice = const Invoice();
  TextEditingController incometax = TextEditingController();
  TextEditingController net = TextEditingController();
  TextEditingController surcharg = TextEditingController();
  TextEditingController edu = TextEditingController();
  TextEditingController secondry = TextEditingController();
  TextEditingController totaltax = TextEditingController();
  TextEditingController relief = TextEditingController();
  TextEditingController tds = TextEditingController();
  TextEditingController assessed = TextEditingController();
  TextEditingController incomeSalery = TextEditingController();
  TextEditingController incomeproperty = TextEditingController();
  TextEditingController capitalgains = TextEditingController();
  TextEditingController agriincome = TextEditingController();
  TextEditingController incomeother = TextEditingController();
  TextEditingController profit = TextEditingController();
  TextEditingController deduction = TextEditingController();
  TextEditingController liable = TextEditingController();
  TextEditingController shortcapital = TextEditingController();
  TextEditingController longcapital = TextEditingController();
  TextEditingController longcapital20 = TextEditingController();
  TextEditingController longcapital10 = TextEditingController();
  TextEditingController winningfrom = TextEditingController();
  TextEditingController afterresult = TextEditingController();

  TextEditingController intrestctrl = TextEditingController();
  TextEditingController comctrl = TextEditingController();
  TextEditingController winctrl = TextEditingController();
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
  List genderList = [
    "Male",
    "Female",
    "Senior Citizen",
    "Super Senior Citizen"
  ];
  List statusList = [
    "Select",
    "Resident",
    "Non_Resident",
    "Not Ordinary Resident"
  ];
  int groupValue = 0;
  String payer;
  String taxaction;
  String gender;
  String status;

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
                            'Individual',
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
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
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
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Whether opting for taxaction under Section 115BAC?",
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
                            taxaction = value as String;
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
                        value: taxaction,
                        items: taxList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 20),
                            ),
                            value: e,
                          );
                        }).toList()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Male / Female / Senior Citizen",
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
                            gender = value as String;
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
                        value: gender,
                        items: genderList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 20),
                            ),
                            value: e,
                          );
                        }).toList()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Residential Status",
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
                            status = value as String;
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
                        value: status,
                        items: statusList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 20),
                            ),
                            value: e,
                          );
                        }).toList()),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Income from Salery (Income from Salery after standerd deductoion of Rs.50000)",
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
                      controller: incomeSalery,
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
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text(
                        "Income From House property",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {}, child: Icon(Icons.circle_notifications))
                    ]),
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
                      controller: incomeproperty,
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
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.white,
                                title: MyForm(),
                              ));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        height: 20,
                        width: 80,
                        child: Center(
                            child: Text(
                          "Show Details",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text(
                        "Capital Gains",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
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
                      controller: capitalgains,
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
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        height: 20,
                        width: 80,
                        child: Center(
                            child: Text(
                          "Show Details",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text(
                        "Income From Other Sources",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
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
                      controller: incomeother,
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
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.white,
                                title: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 10, bottom: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          " Intrest ",
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: Color.fromARGB(255, 210, 189, 214),
                                      elevation: 20,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
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
                                          controller: intrestctrl,
                                          decoration: InputDecoration(
                                            //hintText: 'Name',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, top: 10, bottom: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Commission/Other Income",
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: Color.fromARGB(255, 210, 189, 214),
                                      elevation: 20,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
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
                                          controller: comctrl,
                                          decoration: InputDecoration(
                                            //hintText: 'Name',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
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
                                      padding: EdgeInsets.only(
                                          left: 10, top: 10, bottom: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          " Winning from Lottery, Crossword Puzzles,etc",
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: Color.fromARGB(255, 210, 189, 214),
                                      elevation: 20,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
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
                                          controller: winctrl,
                                          decoration: InputDecoration(
                                            //hintText: 'Name',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [],
                              ));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        height: 20,
                        width: 80,
                        child: Center(
                            child: Text(
                          "Show Details",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Profits and Gains of Business or Profession (enter profit only) ",
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
                      controller: profit,
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
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text(
                        "Agricultural income",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
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
                      controller: agriincome,
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
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text(
                        "Deductions",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
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
                      controller: deduction,
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
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        height: 20,
                        width: 80,
                        child: Center(
                            child: Text(
                          "Show Details",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                ]),
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
                      controller: net,
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
                      "income Liable to Tax at Normal Rate --",
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
                      controller: liable,
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
                      "Short Term Capital Gains (Covered u/s 111A) 15%",
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
                      controller: shortcapital,
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
                      "Long Term Capital Gains (Covered u/s 112A) 10%",
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
                      controller: longcapital,
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
                      "Long Term Capital Gains (Charged to Tax @ 20%) 20%",
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
                      controller: longcapital10,
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
                      "Long Term Capital Gains (Charged to Tax @ 10%) 10%",
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
                      controller: longcapital10,
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
                      "(Winning From Lottery,Crossword,Puzzles,etc) 30%",
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
                      controller: winningfrom,
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
                      "Income Tax Aftre Result u/s 87A",
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
                      controller: afterresult,
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
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Secondary and higher education cess",
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
                      controller: secondry,
                      decoration: InputDecoration(
                        //  hintText: 'Item Name',
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
                      "Relief other than relief u/s 87A",
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
