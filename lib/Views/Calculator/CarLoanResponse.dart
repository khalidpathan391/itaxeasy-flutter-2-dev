import 'package:flutter/material.dart';
import 'package:gst_app/Models/api_response.dart';
import '../../Models/carLoanEmi.dart';
import '../Login_And_Register/Theme.dart';
import '../Tables/widget/scrollable_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Theme/colors.dart';

class CarLoanResponseUi extends StatefulWidget {
  CarLoanResponseUi({Key key, this.apiResponse}) : super(key: key);
  ApiResponse<CarLoanResponse> apiResponse;

  @override
  _CarLoanResponseUiState createState() => _CarLoanResponseUiState();
}

class _CarLoanResponseUiState extends State<CarLoanResponseUi> {
  bool isLoading = false;

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
                                  'Car Loan EMI',
                                  style: heading2.copyWith(color: textBlack),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "(Details you get as per your request)",
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
                              Image.asset('assets/images/accent.png',
                                  width: 99,
                                  height: 4,
                                  color: Colors.blue.shade900),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: const [
                                              Text(
                                                "EMI",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 17.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Total Interest",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 17.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          widget.apiResponse.data.emi
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(
                                          widget.apiResponse.data.totalInterest
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Loan Amount",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 17.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Total Amount",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 17.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          widget.apiResponse.data.loanAmount
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(
                                          widget.apiResponse.data.totalAmount
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Monthly Payments",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 20.5,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ScrollableWidget(
                            child: Card(
                              shadowColor: KColors.icon,
                              elevation: 10,
                              child: Column(children: [
                                DataTable(
                                    columns: [
                                      DataColumn(
                                          label: Text('Month',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('EMI',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Towards Loan',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Towards Interest',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('OutStanding Loan',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                    rows: widget.apiResponse.data.monthlyPayment
                                        .map((e) {
                                      return DataRow(cells: [
                                        DataCell(Text(e.month.toString())),
                                        DataCell(Text(e.emi.toString())),
                                        DataCell(
                                            Text(e.towardsLoan.toString())),
                                        DataCell(
                                            Text(e.towardsInterest.toString())),
                                        DataCell(
                                            Text(e.outstandingLoan.toString())),
                                      ]);
                                    }).toList()),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(
                      //         bottom: MediaQuery.of(context).viewInsets.bottom)),
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
        pageFormat: PdfPageFormat.a3,
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "EMI",
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "Total Interest",
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Text(
                    widget.apiResponse.data.emi.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(
                    widget.apiResponse.data.totalInterest.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                ]),
            pw.SizedBox(height: 20),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "Loan Amount",
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "Total Amount",
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Text(
                    widget.apiResponse.data.loanAmount.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(
                    widget.apiResponse.data.totalAmount.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                ]),
            pw.SizedBox(height: 20),
            pw.Text(
              "Years",
              style: pw.TextStyle(
                // fontFamily: "Poppins",
                // fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 20.5,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    child: pw.Text('Month',
                        style: pw.TextStyle(
                            fontSize: 15, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.SizedBox(width: 20),
                  pw.Expanded(
                    child: pw.Text('EMI',
                        style: pw.TextStyle(
                            fontSize: 15, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Towards Loan',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Towards Interest',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('OutStanding Loan',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                ]),
            pw.Column(
                children: widget.apiResponse.data.monthlyPayment.map((e) {
              return pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Expanded(
                      child: pw.Text(e.month.toString()),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Expanded(
                      child: pw.Text(e.emi.toString()),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.towardsLoan.toString()),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.towardsInterest.toString()),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.outstandingLoan.toString()),
                    ),
                  ]);
            }).toList()),
          ]);
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'CarLoanEMi.pdf', pdf: pdf);
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.blue.shade700,
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
