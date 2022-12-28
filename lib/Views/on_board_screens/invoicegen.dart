import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../Calculator/ifsc_calcii/Theme.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Invoice-Generator/api/pdf_invoice_api.dart';
import '../Invoice-Generator/model/customer.dart';
import '../Invoice-Generator/model/invoice.dart';
import '../Invoice-Generator/model/supplier.dart';

class InvoiceGen extends StatefulWidget {
  const InvoiceGen({Key key}) : super(key: key);

  @override
  State<InvoiceGen> createState() => _InvoiceGenState();
}

class _InvoiceGenState extends State<InvoiceGen> {
  final pdf = pw.Document();

  @override
  Widget build(BuildContext context) {
    List payerList = [
      "Select",
      "Select",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List taxList = [
      "No tax",
      "12% GST",
      "2% TULSI",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List discList = [
      "Select",
      "Amount",
      "Percentage",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List payList = [
      "Select",
      "DUE",
      "CASH",
      "BANK ACCOUNT",
      "STRIPE",
      "PAYPAL",
      "OTHERS INCOME",
      "OTHERS EXPENSE",
      "PNB",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List serviceList = [
      "Select",
      "Select service",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List wareList = [
      "Main Branch",
      "Bhagwati Warehouse",
      "JHGC",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    List productList = [
      "Select",
      "Select",
      //   "Individual",
      //   "HUF",
      //   "AOP/BOI",
      //   "Domestic Company",
      //   "Firms",
      //   "LLP",
      //   "Co-operative Society"
    ];
    String payer;
    String ware;
    String product;
    String service;
    String discount;
    String payment;
    String tax;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Invoice "),
        actions: [
          IconButton(
              icon: const Icon(Icons.picture_as_pdf),
              onPressed: () {
                //createPDF();
                savePDF();
              })
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue.shade900,
      //   child: Icon(Icons.add, color: Colors.white),
      //   onPressed: getImageFromGallery,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
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
                          'Invoice',
                          style: heading2.copyWith(color: textBlack),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "(Here is your Invoice form)",
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "GST No",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'GST No:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Date",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Date:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Invoice No",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Invoice No:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "PO No",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'PO No:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select Customer",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                          "Select Warehouse or branch",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                                ware = value as String;
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
                            value: ware,
                            items: wareList.map<DropdownMenuItem<String>>((e) {
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
                          "Select Product",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                                product = value as String;
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
                            value: product,
                            items:
                                productList.map<DropdownMenuItem<String>>((e) {
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
                          "Select Service",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                                service = value as String;
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
                            value: service,
                            items:
                                serviceList.map<DropdownMenuItem<String>>((e) {
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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Shipping name(Optional)",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Shipping Name:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 30, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Discount",
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
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Discount:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Discount type",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                                discount = value as String;
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
                            value: discount,
                            items: discList.map<DropdownMenuItem<String>>((e) {
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
                          "Payment Method",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 20,
                      child: Container(
                        height: 55,
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
                                payment = value as String;
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
                            value: payment,
                            items: payList.map<DropdownMenuItem<String>>((e) {
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
                          "Amount",
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
                        // controller: contactCont,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Amount:',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total Quantity",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Total Quantity:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Sub Total",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Sub Total:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    " Grand Total ",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Grand Total:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Order Tax",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 20,
                                  child: Container(
                                    height: 55,
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
                                            tax = value as String;
                                          });
                                        },
                                        hint: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        underline: Text(""),
                                        isExpanded: true,
                                        value: tax,
                                        items: taxList
                                            .map<DropdownMenuItem<String>>((e) {
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Shipping Charge",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Shipping Charge:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Other Charge",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Other Charge:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Payable Amount",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Payable Mount:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: GFButton(
                  color: Colors.blue.shade900,
                  text: 'Invoice PDF',
                  onPressed: () async {
                    final date = DateTime.now();
                    final dueDate = date.add(const Duration(days: 7));

                    final invoice = Invoice(
                        supplier: Supplier(
                          // name: nameCont.text,
                          address: 'Sarah Street 9, Beijing, China',
                          paymentInfo: 'https://paypal.me/sarahfieldzz',
                        ),
                        customer: Customer(
                          // name: NameCont.text,
                          address: 'Apple Street, Cupertino, CA 95014',
                        ),
                        info: InvoiceInfo(
                          date: date,
                          dueDate: dueDate,
                          description: 'My description...',
                          number: '${DateTime.now().year}-9999',
                        ),
                        items: [
                          InvoiceItem(
                            // description: descripCount.text,
                            date: DateTime.now(),
                            // quantity: int.parse(quantity.text),
                            //vat: double.parse(vat.text),
                            //unitPrice: double.parse(unit.text),
                          ),
                          InvoiceItem(
                            description: 'Water',
                            date: DateTime.now(),
                            quantity: 8,
                            vat: 0.19,
                            unitPrice: 0.99,
                          ),
                          InvoiceItem(
                            description: 'Orange',
                            date: DateTime.now(),
                            quantity: 3,
                            vat: 0.19,
                            unitPrice: 2.99,
                          ),
                          InvoiceItem(
                            description: 'Apple',
                            date: DateTime.now(),
                            quantity: 8,
                            vat: 0.19,
                            unitPrice: 3.99,
                          ),
                          InvoiceItem(
                            description: 'Mango',
                            date: DateTime.now(),
                            quantity: 1,
                            vat: 0.19,
                            unitPrice: 1.59,
                          ),
                          InvoiceItem(
                            description: 'Blue Berries',
                            date: DateTime.now(),
                            quantity: 5,
                            vat: 0.19,
                            unitPrice: 0.99,
                          ),
                          InvoiceItem(
                            description: 'Lemon',
                            date: DateTime.now(),
                            quantity: 4,
                            vat: 0.19,
                            unitPrice: 1.29,
                          ),
                        ]);

                    final pdfFile = await PdfInvoiceApi.generate(invoice);

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // createPDF() async {
  //   for (var img in _image) {
  //     final image = pw.MemoryImage(img.readAsBytesSync());

  //     pdf.addPage(pw.Page(
  //         pageFormat: PdfPageFormat.a4,
  //         build: (pw.Context contex) {
  //           return pw.Center(child: pw.Image(image));
  //         }));
  //   }
  // }

  savePDF() async {
    try {
      final dir = await getExternalStorageDirectory();
      final file = File('${dir.path}/filename.pdf');
      await file.writeAsBytes(await pdf.save());
      showPrintedMessage('success', 'saved to documents');
      print(file.path);
      OpenFile.open(file.path);
    } catch (e) {
      showPrintedMessage('error', e.toString());
    }
  }

  showPrintedMessage(String title, String msg) {
    // Flushbar(
    //   title: title,
    //   message: msg,
    //   duration: Duration(seconds: 3),
    //   icon: Icon(
    //     Icons.info,
    //     color: Colors.blue,
    //   ),
    // )..show(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title + msg),
    ));
  }
}
