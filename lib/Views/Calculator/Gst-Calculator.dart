import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/Components/button/gf_button.dart';

import '../../Models/GST-Cal.dart';
import '../../Models/api_response.dart';
import '../../Services/api_services.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Login_And_Register/Theme.dart';
import '../Theme/colors.dart';

class GstUi extends StatefulWidget {
  const GstUi({Key key}) : super(key: key);

  @override
  _GstUiState createState() => _GstUiState();
}

class _GstUiState extends State<GstUi> {
  TextEditingController amount = TextEditingController();
  TextEditingController gstRate = TextEditingController();
  TextEditingController type = TextEditingController();

  bool isVisible = false;
  bool isVisible1 = false;
  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  double cgst;
  ApiResponse<GstCalcuResponse> _apiResponse;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            floatingActionButton: buildSpeedDial(),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
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
                                  'GST Calculator',
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
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: amount,
                                decoration: InputDecoration(
                                  hintText: 'Amount',
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
                                  "Gst Rate",
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
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: gstRate,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Rate',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            //   child: Align(
                            //     alignment: Alignment.centerLeft,
                            //     child: Text(
                            //       "Type",
                            //       style: TextStyle(
                            //         fontFamily: "Poppins",
                            //         fontWeight: FontWeight.w500,
                            //         letterSpacing: 1.5,
                            //         fontSize: 17.5,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     color: textWhiteGrey,
                            //     borderRadius: BorderRadius.circular(14.0),
                            //   ),
                            //   child: TextFormField(
                            //     controller: type,
                            //     // keyboardType: TextInputType.phone,
                            //     decoration: InputDecoration(
                            //       hintText: 'type',
                            //       hintStyle: heading6.copyWith(color: textGrey),
                            //       border: const OutlineInputBorder(
                            //         borderSide: BorderSide.none,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: Container(
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    onPressed: () async {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      if (amount.text.isEmpty ||
                                          gstRate.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                              "Please Fill The Given Field"),
                                        ));
                                      } else {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        final insert = GstCalcu(
                                            amount: int.parse(amount.text),
                                            gstRate: int.parse(gstRate.text),
                                            type: "including");
                                        _apiResponse =
                                            await apiServices.gstCal(insert);

                                        if (_apiResponse.resposeCode == 200) {
                                          setState(() {
                                            cgst = double.parse(_apiResponse
                                                    .data.gstAmount) /
                                                2;
                                            isVisible = true;
                                          });
                                          print(
                                              "------------------SUCCESS-----------------");
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content:
                                                Text("Something went wrong"),
                                          ));
                                        }
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }

                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                    },
                                    text: "Including"),
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
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    onPressed: () async {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      if (amount.text.isEmpty ||
                                          gstRate.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                              "Please Fill The Given Field"),
                                        ));
                                      } else {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        final insert = GstCalcu(
                                            amount: int.parse(amount.text),
                                            gstRate: int.parse(gstRate.text),
                                            type: "excluding");
                                        _apiResponse =
                                            await apiServices.gstCal(insert);

                                        if (_apiResponse.resposeCode == 200) {
                                          setState(() {
                                            cgst = double.parse(_apiResponse
                                                    .data.gstAmount) /
                                                2;
                                            isVisible = true;
                                          });
                                          print(
                                              "------------------SUCCESS-----------------");
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content:
                                                Text("Something went wrong"),
                                          ));
                                          print(
                                              "------------------ERROR-----------------");
                                        }
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    },
                                    text: "Excluding"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Visibility(
                        visible: isVisible,
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            elevation: 10,
                            child: StreamBuilder<Object>(
                                stream: null,
                                builder: (context, snapshot) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15, bottom: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "GST Type",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          Text(_apiResponse.data.gstType
                                              .toString()),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "GST Rate",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          Text(_apiResponse.data.gstRate
                                              .toString()),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Amount",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          Text(_apiResponse.data.amount
                                              .toString()),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "GST Amount",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          Text(_apiResponse.data.gstAmount
                                              .toString()),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Final Amount",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          Text(_apiResponse.data.finalAmount
                                              .toString()),
                                          //
                                          // const SizedBox(
                                          //   height: 5,
                                          // ),
                                          // const Text("IGST",
                                          //   style: TextStyle(
                                          //     fontFamily: "Poppins",
                                          //     fontWeight: FontWeight.bold,
                                          //     letterSpacing: 1.5,
                                          //     fontSize: 17.5,
                                          //   ),),
                                          // Text(_apiResponse.data.gstAmount.toString()),
                                          // const SizedBox(
                                          //   height: 5,
                                          // ),
                                          // const SizedBox(
                                          //   height: 5,
                                          // ),
                                          // const Text("CGST",
                                          //   style: TextStyle(
                                          //     fontFamily: "Poppins",
                                          //     fontWeight: FontWeight.bold,
                                          //     letterSpacing: 1.5,
                                          //     fontSize: 17.5,
                                          //   ),),
                                          // Text(cgst.toString()),
                                          // const SizedBox(
                                          //   height: 5,
                                          // ),
                                          // const Text("SGCT/UTGST",
                                          //   style: TextStyle(
                                          //     fontFamily: "Poppins",
                                          //     fontWeight: FontWeight.bold,
                                          //     letterSpacing: 1.5,
                                          //     fontSize: 17.5,
                                          //   ),),
                                          // Text(cgst.toString()),
                                        ]),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }

  Future<File> generatePDF() async {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Text(
                    "GST Type",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.gstType.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "GST Rate",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.gstRate.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Amount",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.amount.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "GST Amount",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.gstAmount.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Final Amount",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.finalAmount.toString()),
                ]),
          );
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'GSTCalculator.pdf', pdf: pdf);
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.blue.shade900,
        backgroundColor: Colors.blue.shade900,
        spacing: 12,
        // childrenButtonSize: 60,
        spaceBetweenChildren: 8,
        // animatedIcon: AnimatedIcons.menu_close,
        icon: Icons.share,
        children: [
          SpeedDialChild(
            onTap: () async {
              // const phoneNumber = "8770877270";
              // const url = 'tel:$phoneNumber';
              //
              // if (await canLaunch(url)) {
              //   await launch(url);
              // }
            },
            child: const Icon(FontAwesomeIcons.print,
                size: 30, color: KColors.primary),
          ),
          SpeedDialChild(
            onTap: () async {
              final pdfFile = await generatePDF();
              PdfApi.openFile(pdfFile);
            },
            child: const Icon(
              FontAwesomeIcons.filePdf,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      );
}
