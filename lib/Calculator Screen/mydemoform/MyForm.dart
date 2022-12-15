import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/Components/constants.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_api.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_invoice_api.dart';
import 'package:gst_app/Views/Invoice-Generator/model/customer.dart';
import 'package:gst_app/Views/Invoice-Generator/model/invoice.dart';
import 'package:gst_app/Views/Invoice-Generator/model/supplier.dart';
import 'package:gst_app/Views/Login_And_Register/theme.dart';

class MyForm extends StatelessWidget {
  TextEditingController selfoccupied = TextEditingController();
  TextEditingController housingloan = TextEditingController();
  TextEditingController Annual = TextEditingController();
  TextEditingController less = TextEditingController();
  TextEditingController less_uni = TextEditingController();
  TextEditingController netAnnual = TextEditingController();
  TextEditingController standerd = TextEditingController();
  TextEditingController intresthousing = TextEditingController();
  TextEditingController incomefromlet = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Wrap(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "a. Income from Self-occupied Property intrest Paid/Payable on Housing Loan ",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "1 . Intrest on Housing Loan",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: housingloan,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Income from self-occupied house property",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: selfoccupied,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "b . Income from Let-out Property ",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " 1 . Annual Letable Value/Rent Received or Receivable",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: Annual,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " 2 .Less: Municiple Taxes Paid During The Year",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: less,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  // bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " 3 . Less Unrealized Rent",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: less_uni,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Income from self-occupied house property",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: selfoccupied,
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    hintStyle: heading6.copyWith(color: textGrey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Income from self-occupied house property",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      fontSize: 10.5,
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
                  controller: selfoccupied,
                  decoration: InputDecoration(
                    //hintText: 'Name',
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
      ]),
    );
  }
}
