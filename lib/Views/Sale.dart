import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/OCR.dart';
import 'package:iconsax/iconsax.dart';

import 'Calculator/ifsc_calcii/Theme.dart';
import 'Components/constants.dart';

class SaleUi extends StatefulWidget {
  const SaleUi({Key key}) : super(key: key);

  @override
  State<SaleUi> createState() => _SaleUiState();
}

class _SaleUiState extends State<SaleUi> {
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
                            'Sale',
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
                  padding: const EdgeInsets.only(left: 80, right: 80),
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
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset("assets/images/coupon.png",
                                  width: 100, height: 100),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Sale:Click to Scan your docx by OCR",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.recursive(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 130,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/icons/saless.png",
                                      width: 50, height: 50),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Sales",
                                  style: GoogleFonts.recursive(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 130,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset(
                                      "assets/icons/salesreturn.png",
                                      width: 50,
                                      height: 50),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Credit\nSales",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.recursive(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset("assets/icons/credit.png",
                                    width: 50, height: 50),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sales\nReturn",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.recursive(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: selectFile,
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          dashPattern: const [10, 4],
                          strokeCap: StrokeCap.round,
                          color: Colors.blue.shade900,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50.withOpacity(.3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Iconsax.folder_open,
                                  color: Colors.blue.shade900,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Select your file',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Total Sale :",
                  style: GoogleFonts.recursive(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=> B2bInvoice()));
                //     },
                //     child: Card(
                //       elevation: 5,
                //       child: Container(
                //         padding: const EdgeInsets.all(defaultPadding),
                //         decoration: const BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.all(Radius.circular(10),),
                //         ),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 SizedBox(        height: 42,
                //                   width: 43,
                //
                //                   // padding: const EdgeInsets.all(8),
                //                   // decoration: BoxDecoration(
                //                   //   color: Colors.blue.shade900.withOpacity(0.1),
                //                   //   borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   // ),
                //                   child: Image.asset(
                //                     "assets/images/conversation.png",
                //                     // color:  Colors.blue.shade900,
                //                   ),
                //                 ),
                //                 const Text(
                //                   "B2B",
                //                   style: TextStyle(
                //                     fontFamily: "Poppins",
                //                     fontWeight: FontWeight.bold,
                //                     letterSpacing: 1.5,
                //                     fontSize: 17.5,
                //                   ),
                //                   overflow: TextOverflow.ellipsis,
                //                 ),
                //                 const Icon(Icons.more_vert,
                //                     color: Colors.blue.shade900)
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //     height:10
                // ),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=> B2cInvoice()));
                //     },
                //     child: Card(
                //       elevation: 5,
                //       child: Container(
                //         padding: const EdgeInsets.all(defaultPadding),
                //         decoration: const BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.all(Radius.circular(10),),
                //         ),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 SizedBox(
                //                   height: 42,
                //                   width: 43,
                //                   // padding: const EdgeInsets.all(8),
                //                   // decoration: BoxDecoration(
                //                   //   color: Colors.blue.shade900.withOpacity(0.1),
                //                   //   borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   // ),
                //                   child: Image.asset(
                //                     "assets/images/interview.png",
                //                     // color:  Colors.blue.shade900,
                //                   ),
                //                 ),
                //                 const Text(
                //                   "B2C",
                //                   style: TextStyle(
                //                     fontFamily: "Poppins",
                //                     fontWeight: FontWeight.bold,
                //                     letterSpacing: 1.5,
                //                     fontSize: 17.5,
                //                   ),
                //                   overflow: TextOverflow.ellipsis,
                //                 ),
                //                 const Icon(Icons.more_vert,
                //                     color: Colors.blue.shade900)
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
