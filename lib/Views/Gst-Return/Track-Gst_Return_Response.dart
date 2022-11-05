import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Models/gst-return.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:gst_app/Views/Theme/colors.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../Models/track-gst-return.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Tables/widget/scrollable_widget.dart';

class ListTry extends StatefulWidget {
  ListTry({Key key, this.apiResponse2}) : super(key: key);
  ApiResponse<TrackGstReturn> apiResponse2;
  @override
  _ListTryState createState() => _ListTryState();
}

class _ListTryState extends State<ListTry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: buildSpeedDial(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
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
                            'GST Return',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          width: 99,
                          height: 4,
                          color: KColors.icon,
                        ),
                      ],
                    ),
                  ],
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
                                label: Text('Application Reference Number',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('RETPRD',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('MOF',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('DOF',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Status',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('REDPRD',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Valid',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                          ],
                          rows:
                              widget.apiResponse2.data.data.eFiledlist.map((e) {
                            return DataRow(cells: [
                              DataCell(Text(e.arn)),
                              DataCell(Text(e.retPrd)),
                              DataCell(Text(e.mof.name)),
                              DataCell(Text(e.dof)),
                              DataCell(Text(e.status.name)),
                              DataCell(Text(e.rtntype.name)),
                              DataCell(Text(e.valid.toString())),
                            ]);
                          }).toList()),
                    ]),
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
        pageFormat: PdfPageFormat.a3,
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    child: pw.Text('Application Reference Number',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.SizedBox(width: 20),
                  pw.Expanded(
                    child: pw.Text('RETPRD',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('MOF',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('DOF',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Status',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('REDPRD',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                  pw.Expanded(
                    child: pw.Text('Valid',
                        style: pw.TextStyle(
                            fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ),
                ]),
            pw.Column(
                children: widget.apiResponse2.data.data.eFiledlist.map((e) {
              return pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Expanded(
                      child: pw.Text(e.arn),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Expanded(
                      child: pw.Text(e.retPrd),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.mof.name),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.dof),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.status.name),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.rtntype.name),
                    ),
                    pw.Expanded(
                      child: pw.Text(e.valid.toString()),
                    ),
                  ]);
            }).toList()),
          ]);
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'GSTReturn.pdf', pdf: pdf);
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.blue.shade100,
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
