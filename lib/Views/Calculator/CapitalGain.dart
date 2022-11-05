import 'package:animate_do/animate_do.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../Models/capital-gain.dart';
import '../Login_And_Register/Theme.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Theme/colors.dart';

class CapitalGainUi extends StatefulWidget {
  const CapitalGainUi({Key key}) : super(key: key);

  @override
  _CapitalGainUiState createState() => _CapitalGainUiState();
}

class _CapitalGainUiState extends State<CapitalGainUi> {
  TextEditingController buyPrice = TextEditingController();
  TextEditingController sellPrice = TextEditingController();

  DateTime buyDate;
  DateTime sellDate;

  bool isLoading = false;
  bool isVisible = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<CapitalGainResponse> _apiResponse;

  String dropdownValue = "stocks";

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: buildSpeedDial(),
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
                                  'Capital Gain',
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
                                  "Assets",
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
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    elevation: 16,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      'equityMutualFunds',
                                      'stocks',
                                      'mutualFunds',
                                      'bonds',
                                      'gold',
                                      'property'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
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
                                  "Buy Date",
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
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 5, right: 5, bottom: 5),
                                child: DateTimeFormField(
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(color: Colors.black45),
                                    errorStyle:
                                        TextStyle(color: Colors.redAccent),
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.event_note),
                                    hintText: 'Buy Date',
                                  ),
                                  mode: DateTimeFieldPickerMode.date,
                                  // autovalidateMode: AutovalidateMode.always,
                                  // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                                  onDateSelected: (DateTime value) {
                                    print(value);
                                    buyDate = value;
                                  },
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Sell Data",
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
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 5, right: 5, bottom: 5),
                                child: DateTimeFormField(
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(color: Colors.black45),
                                    errorStyle:
                                        TextStyle(color: Colors.redAccent),
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.event_note),
                                    hintText: 'Sell Date',
                                  ),
                                  mode: DateTimeFieldPickerMode.date,
                                  // autovalidateMode: AutovalidateMode.always,
                                  // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                                  onDateSelected: (DateTime value) {
                                    print(value);
                                    sellDate = value;
                                  },
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Buy Price",
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
                                controller: buyPrice,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Buy Price',
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
                                  "Sell Price",
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
                                controller: sellPrice,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Sell Price',
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
                      const SizedBox(
                        height: 32,
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
                              color: Colors.purple,
                              onPressed: () async {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                if (buyPrice.text.isEmpty ||
                                    sellPrice.text.isEmpty ||
                                    buyDate == null ||
                                    sellDate == null) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please Fill The Given Field"),
                                  ));
                                } else {
                                  setState(() {
                                    isLoading = true;
                                    isVisible = false;
                                  });
                                  final insert = CapitalGain(
                                      assets: dropdownValue,
                                      buyDate: buyDate,
                                      sellDate: sellDate,
                                      buyPrice: int.parse(buyPrice.text),
                                      sellPrice: int.parse(sellPrice.text));
                                  _apiResponse =
                                      await apiServices.capitalGain(insert);
                                  if (_apiResponse.resposeCode == 200) {
                                    if (_apiResponse.data.message == null) {
                                      setState(() {
                                        isVisible = true;
                                      });
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content:
                                            Text(_apiResponse.data.message),
                                      ));
                                    }
                                    print(
                                        "------------------SUCCESS-----------------");
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Something Went Wrong"),
                                    ));
                                    print(
                                        "------------------ERROR-----------------");
                                  }
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                              text: "Calculate"),
                        ),
                      ),
                      Visibility(
                        visible: isVisible,
                        child: SizedBox(
                          width: double.infinity,
                          child: StreamBuilder<Object>(
                              stream: null,
                              builder: (context, snapshot) {
                                return Card(
                                  elevation: 5,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Profit",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(_apiResponse.data.profit
                                                .toString() ??
                                            ""),
                                        const Text(
                                          "Tax Amount",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(_apiResponse.data.taxAmount ?? ""),
                                        const Text(
                                          "Effective Tax Rate",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(_apiResponse
                                                .data.effectiveTaxRate ??
                                            ""),
                                      ]),
                                );
                              }),
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
                    "Profit",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.profit.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Tax Amount",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.taxAmount.toString()),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Effective Tax Rate",
                    style: pw.TextStyle(
                      // fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),
                  ),
                  pw.Text(_apiResponse.data.effectiveTaxRate.toString()),
                ]),
          );
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'Capitalgain.pdf', pdf: pdf);
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.purple.shade100,
        backgroundColor: Colors.deepPurple,
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
