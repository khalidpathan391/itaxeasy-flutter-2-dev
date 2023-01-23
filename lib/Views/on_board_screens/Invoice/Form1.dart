import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:gst_app/Views/Invoice-Generator/api/pdf_api.dart';
import 'package:gst_app/views/login_and_register/theme.dart';

import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class InvoiceGen extends StatefulWidget {
  const InvoiceGen({Key key}) : super(key: key);

  @override
  State<InvoiceGen> createState() => _InvoiceGenState();
}

class _InvoiceGenState extends State<InvoiceGen> {
  final pdf = pw.Document();

  @override
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
  TextEditingController Datectrl = new TextEditingController();
  TextEditingController GSTctrl = new TextEditingController();
  TextEditingController Invoicectrl = new TextEditingController();
  TextEditingController Refctrl = new TextEditingController();
  TextEditingController amountctrl = new TextEditingController();
  TextEditingController addressctrl = new TextEditingController();
  TextEditingController totalctrl = new TextEditingController();
  TextEditingController panctrl = new TextEditingController();
  TextEditingController bankdetailsctrl = new TextEditingController();
  TextEditingController accountctrl = new TextEditingController();
  TextEditingController branchsctrl = new TextEditingController();
  TextEditingController ifscctrl = new TextEditingController();
  TextEditingController amountwordsctrl = new TextEditingController();
  void initState() {
    Datectrl.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {
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
                                  controller: GSTctrl,
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
                                  controller: Datectrl,
                                  readOnly: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.calendar_today),
                                    hintText: ' Enter Date:',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  onTap: () async {
                                    DateTime pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                            2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      print(
                                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      print(
                                          formattedDate); //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement

                                      setState(() {
                                        Datectrl.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
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
                                  controller: Invoicectrl,
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
                                    "Ref No",
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
                                  controller: Refctrl,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Ref No:',
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
                        controller: amountctrl,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Amount in Words",
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
                        controller: amountwordsctrl,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          hintText: 'Amount in words::',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Address:",
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
                        controller: addressctrl,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          hintText: 'Address:',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Bank Details",
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
                        controller: bankdetailsctrl,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Description:',
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
                                    controller: totalctrl,
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
                                    "PAN NO.",
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
                                    controller: panctrl,
                                    //  maxLength: 10,
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    decoration: InputDecoration(
                                      hintText: 'PAN NO:',
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
                                    "Account No.",
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
                                    controller: accountctrl,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Account NO:',
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
                                    " IFSC ",
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
                                    controller: ifscctrl,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    decoration: InputDecoration(
                                      hintText: 'IFSC NO:',
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
                                    "Branch",
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
                                    controller: branchsctrl,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    decoration: InputDecoration(
                                      hintText: 'Branch:',
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
                                    // controller: amountwordsctrl,
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
                    final pdfFile = await generatePDF();
                    PdfApi.openFile(pdfFile);
                    // final date = DateTime.now();
                    // final dueDate = date.add(const Duration(days: 7));

                    // final invoice = Invoice(
                    //     supplier: Supplier(
                    //       // name: nameCont.text,
                    //       address: 'Sarah Street 9, Beijing, China',
                    //       paymentInfo: 'https://paypal.me/sarahfieldzz',
                    //     ),
                    //     customer: Customer(
                    //       // name: NameCont.text,
                    //       address: 'Apple Street, Cupertino, CA 95014',
                    //     ),
                    //     info: InvoiceInfo(
                    //       date: date,
                    //       dueDate: dueDate,
                    //       description: 'My description...',
                    //       number: '${DateTime.now().year}-9999',
                    //     ),
                    //     items: [
                    //       InvoiceItem(
                    //         // description: descripCount.text,
                    //         date: DateTime.now(),
                    //         // quantity: int.parse(quantity.text),
                    //         //vat: double.parse(vat.text),
                    //         //unitPrice: double.parse(unit.text),
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Water',
                    //         date: DateTime.now(),
                    //         quantity: 8,
                    //         vat: 0.19,
                    //         unitPrice: 0.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Orange',
                    //         date: DateTime.now(),
                    //         quantity: 3,
                    //         vat: 0.19,
                    //         unitPrice: 2.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Apple',
                    //         date: DateTime.now(),
                    //         quantity: 8,
                    //         vat: 0.19,
                    //         unitPrice: 3.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Mango',
                    //         date: DateTime.now(),
                    //         quantity: 1,
                    //         vat: 0.19,
                    //         unitPrice: 1.59,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Blue Berries',
                    //         date: DateTime.now(),
                    //         quantity: 5,
                    //         vat: 0.19,
                    //         unitPrice: 0.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Lemon',
                    //         date: DateTime.now(),
                    //         quantity: 4,
                    //         vat: 0.19,
                    //         unitPrice: 1.29,
                    //       ),
                    //     ]);

                    // final pdfFile = await PdfInvoiceApi.generate(invoice);

                    // PdfApi.openFile(pdfFile);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<File> generatePDF() async {
    final pdf = pw.Document();

    final iconImage = (await rootBundle.load(
      'assets/images/accent.png',
    ))
        .buffer
        .asUint8List();

    final tableHeaders = [
      'SR NO.',
      'DESCRIPTION',
      'AMOUNT',
    ];

    final tableData = [
      [
        '1',
        bankdetailsctrl.text,
        amountctrl.text,
      ],
    ];

    pdf.addPage(
      pw.MultiPage(
        // header: (context) {
        //   return pw.Text(
        //     'Flutter Approach',
        //     style: pw.TextStyle(
        //       fontWeight: pw.FontWeight.bold,
        //       fontSize: 15.0,
        //     ),
        //   );
        // },
        build: (context) {
          return [
            pw.Row(
              children: [
                pw.Image(
                  pw.MemoryImage(iconImage),
                  height: 72,
                  width: 72,
                ),
                pw.SizedBox(width: 1 * PdfPageFormat.mm),
                pw.Column(
                  mainAxisSize: pw.MainAxisSize.min,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'ITaxEasy',
                      style: pw.TextStyle(
                        fontSize: 25.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      'Govt. Contractor & \nGeneral Order Suppliers',
                      style: const pw.TextStyle(
                        fontSize: 15.0,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ],
                ),
                pw.Spacer(),
                pw.Column(
                  mainAxisSize: pw.MainAxisSize.min,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Name-  Khalid Pathan",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      'Email-  kk7355570@gmail.com',
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Row(children: [
                      pw.Text(
                        "GST NO:",
                        style: pw.TextStyle(
                          fontSize: 15.5,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        GSTctrl.text,
                        style: pw.TextStyle(
                          fontSize: 15.5,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Divider(),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Row(
              // mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  " Ref No:",
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  Refctrl.text,
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(width: 80 * PdfPageFormat.mm),
                pw.Text(
                  "Date:",
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(width: 2 * PdfPageFormat.mm),
                // pw.Divider(),
                pw.Text(Datectrl.text),
                //  pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Spacer(),
              ],
            ),
            pw.Divider(),
            //  pw.SizedBox(height: 5 * PdfPageFormat.mm),
            pw.Center(
              child: pw.Text(
                'Tax Invoive',
                style: pw.TextStyle(
                  fontSize: 15.5,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.justify,
              ),
            ),
            pw.Divider(),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(children: [
                  pw.Text(
                    "To:",
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    addressctrl.text,
                  ),
                  pw.Text(
                    "MR: 10 JUNCTION ",
                  ),
                  pw.Text(
                    "INDORE:(M.P.)-452016",
                  ),
                ]),
                // pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Divider(),
                pw.Column(children: [
                  pw.Row(children: [
                    pw.Text(
                      "Invoice NO:",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      Invoicectrl.text,
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ]),
                  pw.SizedBox(height: 5 * PdfPageFormat.mm),
                  pw.Row(children: [
                    pw.Text(
                      "Date",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(width: 3 * PdfPageFormat.mm),
                    pw.Text(Datectrl.text),
                  ]),
                ]),
                //  pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Spacer(),
              ],
            ),

            ///
            /// PDF Table Create
            ///
            pw.Table.fromTextArray(
              headers: tableHeaders,
              data: tableData,
              border: null,
              headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              headerDecoration:
                  const pw.BoxDecoration(color: PdfColors.grey300),
              cellHeight: 30.0,
              cellAlignments: {
                0: pw.Alignment.centerLeft,
                1: pw.Alignment.centerRight,
                2: pw.Alignment.centerRight,
              },
            ),
            pw.Divider(),
            pw.Container(
              alignment: pw.Alignment.centerRight,
              child: pw.Row(
                children: [
                  pw.Spacer(flex: 6),
                  pw.Expanded(
                    flex: 4,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'CGST @9%',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 464',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'SGST @9%',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 90.48',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'ROUND OFF',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 0.12%',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'Total amount due',
                                style: pw.TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              totalctrl.text,
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.SizedBox(height: 2 * PdfPageFormat.mm),
                        pw.Container(height: 1, color: PdfColors.grey400),
                        pw.SizedBox(height: 0.5 * PdfPageFormat.mm),
                        pw.Container(height: 1, color: PdfColors.grey400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            pw.Divider(),
            //  pw.SizedBox(height: 5 * PdfPageFormat.mm),
            pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                pw.SizedBox(height: 2 * PdfPageFormat.mm),
                pw.Row(children: [
                  pw.Text(
                    "Amount in Words  :-",
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(
                    width: 20,
                  ),
                  pw.Text(
                    amountwordsctrl.text,
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ]),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.Column(children: [
                      pw.Row(children: [
                        pw.Text(
                          "GST No:",
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          width: 5,
                        ),
                        pw.Text(
                          GSTctrl.text,
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ]),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Row(children: [
                        pw.Text(
                          "PAN No:",
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          width: 5,
                        ),
                        pw.Text(
                          panctrl.text,
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ]),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Column(children: [
                            pw.Row(children: [
                              pw.Text(
                                "Bank Details:",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                bankdetailsctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "Account No:",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                accountctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "IFSc",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                ifscctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "Branch",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                branchsctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                          ]),
                        ],
                      ),
                    ]),
                  ],
                ),
                pw.SizedBox(height: 1 * PdfPageFormat.mm),
              ],
            ),

            pw.SizedBox(height: 1 * PdfPageFormat.mm),
          ];
        },
        footer: (context) {
          return pw.Column(
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              pw.Divider(),
              pw.SizedBox(height: 2 * PdfPageFormat.mm),
              pw.Text(
                'ITaxEasy pvt.Lmt',
                style: pw.TextStyle(
                  fontSize: 15.5,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 1 * PdfPageFormat.mm),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text(
                    'Address: ',
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    'Noida sector 243',
                  ),
                ],
              ),
              pw.SizedBox(height: 1 * PdfPageFormat.mm),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text(
                    'Email: ',
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    'kk7355570@gmail.com',
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    return PdfApi.saveDocument(name: 'GSTCalculator.pdf', pdf: pdf);
  }

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
