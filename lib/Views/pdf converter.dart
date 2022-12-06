import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/ImageToPdf.dart';
import 'package:gst_app/Views/OCR.dart';
import 'package:iconsax/iconsax.dart';

import 'Calculator/ifsc_calcii/Theme.dart';
import 'Components/constants.dart';

class Converter extends StatefulWidget {
  const Converter({Key key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  AnimationController loadingController;

  File _file;
  PlatformFile _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(allowMultiple: true);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
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
                            'PDF Converter',
                            style: heading2.copyWith(color: textBlack),
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImageToPdf()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade700,
                                  blurRadius: 8.0,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset("assets/images/gallery.png",
                                    width: 100, height: 100),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset("assets/images/pdf.png",
                                    width: 100, height: 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Image to pdf',
                    style: heading2.copyWith(color: textBlack),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => OCRSystem()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade700,
                                  blurRadius: 8.0,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset(
                                    "assets/images/Icon-notepad.svg.png",
                                    width: 100,
                                    height: 100),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset("assets/images/pdf.png",
                                    width: 100, height: 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Text  to pdf',
                    style: heading2.copyWith(color: textBlack),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OCRSystem()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade700,
                                  blurRadius: 8.0,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset("assets/images/qr.png",
                                    width: 100, height: 100),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 60,
                                width: 80,
                                child: Image.asset("assets/images/pdf.png",
                                    width: 100, height: 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Scan to pdf',
                    style: heading2.copyWith(color: textBlack),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
