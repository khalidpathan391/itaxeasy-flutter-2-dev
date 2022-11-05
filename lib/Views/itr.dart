import 'dart:typed_data';
import 'package:animate_do/animate_do.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gst_app/Views/itrfiles.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:io';
import 'Calculator/ifsc_calcii/theme.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

import 'Components/constants.dart';
import 'OCR.dart';
import 'file_upload.dart';

class ITR extends StatefulWidget {
  const ITR({Key key}) : super(key: key);

  @override
  _ITRState createState() => _ITRState();
}

class _ITRState extends State<ITR> {
  File file;
  ImagePicker image = ImagePicker();

  getImagecam() async {
    var img = await image.pickImage(source: ImageSource.camera);

    setState(() {
      file = File(img.path);
    });
  }

  Future<Uint8List> _generatePdf(PdfPageFormat format, file) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();

    final showimage = pw.MemoryImage(file.readAsBytesSync());

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Center(
            child: pw.Image(showimage, fit: pw.BoxFit.contain),
          );
        },
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    final popUp = PopupMenuButton<int>(
      icon: Icon(Icons.more_vert, color: Colors.blue.shade900),
      color: Colors.white,
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
          value: 0,
          child: Text("Upload Photo"),
        ),
        const PopupMenuItem<int>(value: 1, child: Text("Click Photo")),
        const PopupMenuItem<int>(value: 1, child: Text("Upload PDF")),
        // PopupMenuDivider(),
        // PopupMenuItem<int>(
        //     value: 2,
        //     child: Row(
        //       children: [
        //         Icon(
        //           Icons.logout,
        //           color: Colors.red,
        //         ),
        //         const SizedBox(
        //           width: 7,
        //         ),
        //         Text("Logout")
        //       ],
        //     )),
      ],
      onSelected: (item) => SelectedItem(context, item),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Row(
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
                              'ITR',
                              style: heading2.copyWith(color: textBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "(Income Tax Return)",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 13.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
                ),
                const SizedBox(
                  height: 20,
                ),
// BODY CONTENT
//                 FadeInRight(
//                   delay: const Duration(milliseconds: 500),
//                   duration: const Duration(milliseconds: 500),
//                   child: GestureDetector(
//                     onTap: getImagecam,
//                     child: Card(
//                       elevation: 5,
//                       child: Container(
//                         padding: const EdgeInsets.all(defaultPadding),
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   padding: const EdgeInsets.all(8),
//                                   decoration: BoxDecoration(
//                                     color:
//                                         const Color(0xFF007EE5).withOpacity(0.1),
//                                     borderRadius: const BorderRadius.all(
//                                         Radius.circular(10)),
//                                   ),
//                                   child: SvgPicture.asset(
//                                     "assets/icons/Documents.svg",
//                                     color: primaryColor,
//                                   ),
//                                 ),
//                                 const Text(
//                                   "Generate Form16",
//                                   style: TextStyle(
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 1.5,
//                                     fontSize: 17.5,
//                                   ),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 Icon(Icons.more_vert,
//                                     color: Colors.lightBlueAccent[700])
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
                const SizedBox(height: 10),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: () async {
                //       final result = await FilePicker.platform
                //           .pickFiles(allowMultiple: true);
                //       if (result == null) return;
                //
                //       openFiles(result.files);
                //
                //       final file = result.files.first;
                //       openFile(file);
                //       print("Name: ${file.name}");
                //       print("Bytes: ${file.bytes}");
                //       print("Size:${file.size}");
                //       print("path:${file.path}");
                //
                //       final newFile = await saveFilePermanently(file);
                //       print("From Path : ${file.path}");
                //       print("To Path: ${newFile.path}");
                //     },
                //     child: Card(
                //       elevation: 5,
                //       child: Container(
                //         padding: const EdgeInsets.all(defaultPadding),
                //         decoration: const BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //         ),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Container(
                //                   padding: const EdgeInsets.all(8),
                //                   decoration: BoxDecoration(
                //                     color:
                //                         const Colors.blue.shade900.withOpacity(0.1),
                //                     borderRadius: const BorderRadius.all(
                //                         Radius.circular(10)),
                //                   ),
                //                   child: SvgPicture.asset(
                //                     "assets/icons/Documents.svg",
                //                     color: const Colors.blue.shade900,
                //                   ),
                //                 ),
                //                 const Text(
                //                   "Upload Form16",
                //                   style: TextStyle(
                //                     fontFamily: "Poppins",
                //                     fontWeight: FontWeight.w500,
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
                FadeInLeft(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FileUpload()));
                    },
                    child: Card(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icons/Documents.svg",
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                const Text(
                                  "Upload Form16",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                popUp,
                                // Stack(
                                //   children: [
                                //     const Icon(
                                //              Icons.more_vert,
                                //              color: Colors.blue.shade900),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // const SizedBox(
                //   height: 10,
                // ),
                // FadeInRight(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Card(
                //     elevation: 5,
                //     child: Container(
                //       padding: const EdgeInsets.all(defaultPadding),
                //       decoration: const BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.all(Radius.circular(10)),
                //       ),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Container(
                //                 padding: const EdgeInsets.all(8),
                //                 decoration: BoxDecoration(
                //                   color: const Color(0xFF007EE5).withOpacity(0.1),
                //                   borderRadius:
                //                       const BorderRadius.all(Radius.circular(10)),
                //                 ),
                //                 child: SvgPicture.asset(
                //                   "assets/icons/Documents.svg",
                //                   color: primaryColor,
                //                 ),
                //               ),
                //               const Text(
                //                 "Generate 26AS",
                //                 style: TextStyle(
                //                   fontFamily: "Poppins",
                //                   fontWeight: FontWeight.w500,
                //                   letterSpacing: 1.5,
                //                   fontSize: 17.5,
                //                 ),
                //                 overflow: TextOverflow.ellipsis,
                //               ),
                //               Icon(Icons.more_vert,
                //                   color: Colors.lightBlueAccent[700])
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 10),
                FadeInLeft(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FileUpload()));
                    },
                    child: Card(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icons/Documents.svg",
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                const Text(
                                  "Upload 26AS",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Icon(Icons.more_vert,
                                    color: Colors.blue.shade900)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FadeInLeft(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FileUpload()));
                    },
                    child: Card(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icons/Documents.svg",
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                const Text(
                                  "Upload TIS",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Icon(Icons.more_vert,
                                    color: Colors.blue.shade900)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FadeInLeft(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FileUpload()));
                    },
                    child: Card(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icons/Documents.svg",
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                const Text(
                                  "Upload AIS",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Icon(Icons.more_vert,
                                    color: Colors.blue.shade900)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: file == null
                      ? Container()
                      : PdfPreview(
                          build: (format) => _generatePdf(format, file),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<File> saveFilePermanently(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');
    return File(file.path).copy(newFile.path);
  }

  void openFiles(List<PlatformFile> files) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              FilesPage(files: files, onOpenedFile: openFile)));

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}

void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (context) => VerifyReturn()));
      break;
    case 1:
      print("Privacy Clicked");
      break;
    case 2:
      print("User Logged out");
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => LoginPage()),
      //         (route) => false);
      break;
  }
}
