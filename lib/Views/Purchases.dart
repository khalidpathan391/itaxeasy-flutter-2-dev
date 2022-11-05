import 'dart:typed_data';
import 'package:animate_do/animate_do.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Views/itrfiles.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:io';
import 'Calculator/ifsc_calcii/theme.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

import 'Components/constants.dart';

class Purchases extends StatefulWidget {
  const Purchases({Key key}) : super(key: key);

  @override
  _PurchasesState createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  File file;
  ImagePicker image = ImagePicker();
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
                              'Purchases',
                              style: heading2.copyWith(color: textBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "(Purchses we got)",
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
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
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
                            child: Image.asset("assets/images/rent.png",
                                width: 100, height: 100),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Purchase",
                            style: GoogleFonts.recursive(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
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
                                  child: Image.asset(
                                      "assets/icons/purchasing.png",
                                      width: 50,
                                      height: 50),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Purchase",
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
                                      "assets/icons/return-box.png",
                                      width: 50,
                                      height: 50),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Credit\nPurchase",
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
                                child: Image.asset("assets/icons/creditp.png",
                                    width: 50, height: 50),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Purchase\nReturn",
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
                  "Total Purchase :",
                  style: GoogleFonts.recursive(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // const SizedBox(height: 10),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>const QrCode()));
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
                //                 Container(
                //                   padding: const EdgeInsets.all(8),
                //                   decoration: BoxDecoration(
                //                     color:  Colors.blue.shade900.withOpacity(0.1),
                //                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   ),
                //                   child: Icon(
                //                     Icons.qr_code_scanner_outlined,
                //                     color:Colors.blue.shade900,
                //                   ),
                //                   // SvgPicture.asset(
                //                   //   "assets/icons/Documents.svg",
                //                   //   color:  Colors.blue.shade900,
                //                   // ),
                //                 ),
                //                 const Text(
                //                   "Qr Code Scan",
                //                   style: TextStyle(
                //                     fontFamily: "Poppins",
                //                     fontWeight: FontWeight.w500,
                //                     letterSpacing: 1.5,
                //                     fontSize: 17.5,
                //                   ),
                //                   overflow: TextOverflow.ellipsis,
                //                 ),
                //                 const Icon(
                //                          Icons.more_vert,
                //                          color: Colors.blue.shade900),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                //
                // const SizedBox(height: 10),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>const FileUpload()));
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
                //                 Container(
                //                   padding: const EdgeInsets.all(8),
                //                   decoration: BoxDecoration(
                //                     color:  Colors.blue.shade900.withOpacity(0.1),
                //                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   ),
                //                   child: Icon(
                //                     Icons.document_scanner_outlined,
                //                     color:Colors.blue.shade900,
                //                   ),
                //                 ),
                //                 const Text(
                //                   "Photo Reader",
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
                // const SizedBox(height: 10),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>const FileUpload()));
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
                //                 Container(
                //                   padding: const EdgeInsets.all(8),
                //                   decoration: BoxDecoration(
                //                     color:  Colors.blue.shade900.withOpacity(0.1),
                //                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   ),
                //                   child: Icon(
                //                     Icons.aspect_ratio_outlined,
                //                     color:Colors.blue.shade900
                //                   ),
                //                 ),
                //                 const Text(
                //                   "Word Extractor",
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
                // const SizedBox(height: 10),
                // FadeInLeft(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: GestureDetector(
                //     onTap: (){
                //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>const FileUpload()));
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
                //                 Container(
                //                   padding: const EdgeInsets.all(8),
                //                   decoration: BoxDecoration(
                //                     color:  Colors.blue.shade900.withOpacity(0.1),
                //                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                   ),
                //                   child: Icon(
                //                     Icons.center_focus_weak_outlined,
                //                     color:Colors.blue.shade900
                //                   ),
                //                 ),
                //                 const Text(
                //                   "OCR",
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
                // Container(
                //   child: file == null
                //       ? Container()
                //       : PdfPreview(
                //     build: (format) => _generatePdf(format, file),
                //   ),
                // ),
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
