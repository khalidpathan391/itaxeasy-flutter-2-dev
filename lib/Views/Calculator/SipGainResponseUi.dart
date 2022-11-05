import 'package:flutter/material.dart';
import 'package:gst_app/Models/api_response.dart';
import '../../Models/sip-gain.dart';
import '../Login_And_Register/Theme.dart';

import '../Tables/widget/scrollable_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Theme/colors.dart';

class SipGainResponseUi extends StatefulWidget {
  SipGainResponseUi({Key key, this.apiResponse}) : super(key: key);

  ApiResponse<SipGainResponse> apiResponse;

  @override
  _SipGainResponseUiState createState() => _SipGainResponseUiState();
}

class _SipGainResponseUiState extends State<SipGainResponseUi> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            floatingActionButton: buildSpeedDial(),
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
                                  'Sip Gain',
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
                                                "Total",
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
                                                "Invested",
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
                                          widget.apiResponse.data.total
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(
                                          widget.apiResponse.data.invested
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                      ]),
                                  const Text(
                                    "Gain",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                  Text(
                                    widget.apiResponse.data.gain.toString(),
                                    style: const TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Years",
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
                              child: Column(children: [
                                DataTable(
                                    columns: [
                                      DataColumn(
                                          label: Text('Year',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Investment Amount',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Interest Earned',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Maturity Amount',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                    rows: widget
                                        .apiResponse.data.yearlyCalculation
                                        .map((e) {
                                      return DataRow(cells: [
                                        DataCell(Text(e.year.toString())),
                                        DataCell(Text(
                                            e.investmentAmount.toString())),
                                        DataCell(
                                            Text(e.interestEarned.toString())),
                                        DataCell(
                                            Text(e.maturityAmount.toString())),
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
                          "Total",
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
                          "Invested",
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
                    widget.apiResponse.data.total.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(
                    widget.apiResponse.data.invested.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Text(
                    "Gain",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(
                    widget.apiResponse.data.gain.toString(),
                    style: pw.TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                ]),
            pw.Text(
              "Years",
              style: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 20.5,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    child: pw.Text('Year',
                        style: pw.TextStyle(
                            fontSize: 15, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.SizedBox(width: 20),
                  pw.Expanded(
                    child: pw.Text('Investment Amount',
                        style: pw.TextStyle(
                            fontSize: 15, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Interest Earned',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Maturity Amount',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                ]),
            pw.Column(
                children: widget.apiResponse.data.yearlyCalculation.map((e) {
              return pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Expanded(
                      child: pw.Text(e.year.toString()),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Expanded(
                      child: pw.Text(e.investmentAmount.toString()),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.interestEarned.toString()),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.maturityAmount.toString()),
                    ),
                  ]);
            }).toList()),
          ]);
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'SIPGain.pdf', pdf: pdf);
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
