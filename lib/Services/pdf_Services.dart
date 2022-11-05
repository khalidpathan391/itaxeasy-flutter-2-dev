import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';

class PdfBillGen {
  static Future<File> generatepdf(
     String carNo, String totalCost) async {
    final headers = ["I", "A"];
    final pdf = pw.Document();
    DateTime billTime = DateTime.now();
    pdf.addPage(pw.Page(
        // textDirection: pw.TextDirection.rtl,
        theme: pw.ThemeData.withFont(
            base: pw.Font.ttf(
              await rootBundle.load("assets/fonts/Lato-Regular.ttf"),
            )), // pw.Font.ttf // pw.ThemeData.withFont
        pageFormat: PdfPageFormat.roll80,
        build: (context) {
          return pw.Column(children: [
            pw.Text(""),
            pw.Text(""),
            pw.Text("iTaxEasy"),
            pw.Text(""),
            pw.Row(children: [
              pw.Text(carNo),
            ]), // pw.Raw
            // pw.Table.fromTextArray(
            //     headers: headers, data: data), // pw. Table.fromTextArray
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
              pw.Text(totalCost.toString()),
              pw.Text(""),
            ]),
          ]); // pw.Column
        })); // pw
    return savePdf(
        fileName:
        "bill${billTime.year}${billTime.month}${billTime.day}${billTime
            .millisecond}.pdf",
        pdf: pdf);
  }
    static Future<File> savePdf ({ pw.Document pdf, String fileName}) async {
      final bytes = await pdf.save();
      final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/Sf1leName");
    await file.writeAsBytes (bytes);
    return file;
    }
  static Future<File> openFile(File file) async {
    final url =file.path;
    await OpenFile.open(url);
  }
} // .Page
