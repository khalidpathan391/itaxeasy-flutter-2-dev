import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

import 'Invoice-Generator/api/pdf_api.dart';
import 'Theme/colors.dart';

class OCRSystem extends StatefulWidget {
  const OCRSystem({Key key}) : super(key: key);

  @override
  State<OCRSystem> createState() => _OCRSystemState();
}

class _OCRSystemState extends State<OCRSystem> {
  String result = "";
  File _image;

  // File file = File( _image.path );
  Future getImagefromcamera() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
        performImageLabling();
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }

  Future getImagefromGallery() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
        performImageLabling();
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }

  performImageLabling() async {
    final FirebaseVisionImage firebaseVisionImage =
        FirebaseVisionImage.fromFile(_image);
    final TextRecognizer recognizer = FirebaseVision.instance.textRecognizer();
    VisionText visionText = await recognizer.processImage(firebaseVisionImage);

    result = "";
    setState(() {
      for (TextBlock block in visionText.blocks) {
        final String txt = block.text;

        for (TextLine line in block.lines) {
          for (TextElement element in line.elements) {
            result += element.text + " ";
          }
        }
        result += "\n\n";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: buildSpeedDial(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: SizedBox(
                  // height: 280,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Center(
                      child: result != ""
                          ? Card(
                              child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    result,
                                    textAlign: TextAlign.justify,
                                  )),
                            ))
                          : const Card(
                              child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: SizedBox(
                                  height: 100,
                                  width: double.infinity,
                                  child: Center(
                                      child:
                                          Text("Your Text Will appear here"))),
                            )),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  getImagefromGallery();
                },
                child: Container(
                  child: _image != null
                      ? Image.file(_image, width: 200, height: 200)
                      : const Icon(
                          Icons.camera,
                          size: 50,
                        ),
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

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Text(
              result,
            ),
          ]);
        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'OCR.pdf', pdf: pdf);
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
              print(result);
              print(result);
              print(result);
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
