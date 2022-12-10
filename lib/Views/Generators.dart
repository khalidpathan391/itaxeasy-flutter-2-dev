import 'dart:io';
import 'package:external_path/external_path.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_merger/pdf_merger.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Theme/colors.dart';

class Generators extends StatefulWidget {
  const Generators({Key key}) : super(key: key);

  @override
  State<Generators> createState() => _GeneratorsState();
}

class _GeneratorsState extends State<Generators> with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;

  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;

  List<PlatformFile> files;
  List<String> filesPath;
  String singleFile;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller4 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
    clear();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.deepblue.shade900.shade200,
//           body: Column(children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
//               child: SizedBox(
//                 height:  70,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   color:  Colors.deepblue.shade900,
//                   elevation: 5,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top:10, left: 10,bottom:10),
//                         child: InkWell(
//                           onTap: (){
//                             Navigator.of(context).pop();
//                           },
//                           child: const CircleAvatar(
//                             backgroundColor: Colors.blue.shade900,
//                             radius: 30,
//                             child: Icon(
//                               Icons.arrow_back,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                       Text("Search",style: GoogleFonts.roboto(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),),
//                       const Padding(
//                         padding: EdgeInsets.only(top:10, right: 10,bottom:10),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.blue.shade900,
//                           radius: 30,
//                           child: Icon(
//                             Icons.more_vert,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
// SizedBox(
//   height: 20,
// ),
//          Align(
//            alignment: Alignment.centerLeft,
//            child: InkWell(
//              onTap: (){
//                multipleFilePicker();
//              },
//              child: SizedBox(
//                height: 70,
//                width: 300,
//                child: Card(
//                  color: Colors.blue.shade900,
//                  elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                  child: Center(child: Text("Select File",         style: GoogleFonts.recursive(
//                    fontSize: 25.0,
//                    color: Colors.white,
//                    fontWeight: FontWeight.w700,
//                  ),)),
//
//                ),
//              ),
//            ),
//          ),
//
//
//
//         const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerRight,
//               child: InkWell(
//                 onTap: (){
//                   callMethod(1);
//                 },
//                 child: SizedBox(
//                   height: 70,
//                   width: 300,
//                   child: Card(
//                     color: Colors.blue.shade900,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(child: Text("Merge Multiple PDF",         style: GoogleFonts.recursive(
//                       fontSize: 25.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//
//                   ),
//                 ),
//               ),
//             ),
//
//             // SizedBox(height: 10),
//             // TextButton(
//             //   style: ButtonStyle(overlayColor:
//             //   MaterialStateProperty.resolveWith<Color>(
//             //           (Set<MaterialState> states) {
//             //         if (states.contains(MaterialState.focused))
//             //           return Colors.red;
//             //         if (states.contains(MaterialState.hovered))
//             //           return Colors.green;
//             //         if (states.contains(MaterialState.pressed))
//             //           return Colors.blue;
//             //         return null; // Defer to the widget's default.
//             //       })),
//             //   child: Text(
//             //     "Create PDF From Multiple Image",
//             //     style: TextStyle(fontSize: 14.0),
//             //   ),
//             //   onPressed: () {
//             //     callMethod(2);
//             //   },
//             // ),
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: InkWell(
//                 onTap: (){
//                   singleFilePicker(1);
//                 },
//                 child: SizedBox(
//                   height: 70,
//                   width: 300,
//                   child: Card(
//                     color: Colors.blue.shade900,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(child: Text("Create Image From PDF",         style: GoogleFonts.recursive(
//                       fontSize: 25.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerRight,
//               child: InkWell(
//                 onTap: (){
//                   singleFilePicker(2);
//                 },
//                 child: SizedBox(
//                   height: 70,
//                   width: 300,
//                   child: Card(
//                     color: Colors.blue.shade900,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(child: Text("Get File Size",         style: GoogleFonts.recursive(
//                       fontSize: 25.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: InkWell(
//                 onTap: (){
//                   clear();
//                 },
//                 child: SizedBox(
//                   height: 70,
//                   width: 300,
//                   child: Card(
//                     color: Colors.blue.shade900,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(child: Text("Clear",         style: GoogleFonts.recursive(
//                       fontSize: 25.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerRight,
//               child: InkWell(
//                 onTap: (){
//                   buildInfo();
//                 },
//                 child: SizedBox(
//                   height: 70,
//                   width: 300,
//                   child: Card(
//                     color: Colors.blue.shade900,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(child: Text("Build Info",         style: GoogleFonts.recursive(
//                       fontSize: 25.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//
//                   ),
//                 ),
//               ),
//             ),
//
//           ]),
//         ),
//     );
//   }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade900,
                ],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      // child: Container(
                      //   height: 45,
                      //   width: 45,
                      //   decoration: const BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //   ),
                      //   child: const Icon(
                      //     Icons.chevron_left_rounded,
                      //     color: KColors.icon,
                      //     size: 35,
                      //   ),
                      // ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, left: 20),
                      child: Text(
                        "Convertor",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.dmSans(
                          fontSize: 50,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            sectionCard(context),
          ],
        ),
      ),
    );
  }

  Widget sectionCard(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    double width = MediaQuery.of(context).size.width - 20;
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              GestureDetector(
                onTapDown: _tapDown,
                onTapUp: _tapUp,
                onTap: () {
                  multipleFilePicker();
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 3, bottom: 3),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: _scale,
                        child: Column(
                          children: [
                            Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
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
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.white70,
                                        // border: Border.all(
                                        //     //color: Colors.grey,
                                        //     // width: 2,
                                        //     ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.cloud_circle_outlined,
                                        color: KColors.icon,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Select File",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select File",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                              "Select any  type of file you want\n to convert"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown1,
                onTapUp: _tapUp1,
                onTap: () {
                  callMethod(1);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: _scale1,
                        child: Column(
                          children: [
                            Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
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
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.white70,
                                        // border: Border.all(
                                        //     //color: Colors.grey,
                                        //     // width: 2,
                                        //     ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.merge_outlined,
                                        color: KColors.icon,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Merge PDF",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Merge Multiple PDF",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text("Select file and Merge \nYour PDF's"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown2,
                onTapUp: _tapUp2,
                onTap: () {
                  singleFilePicker(1);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: _scale2,
                        child: Column(
                          children: [
                            Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
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
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.white70,
                                        // border: Border.all(
                                        //     //color: Colors.grey,
                                        //     // width: 2,
                                        //     ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.browse_gallery,
                                        color: KColors.icon,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "PDF to Image",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PDF to Image",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Create Images from PDF"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown3,
                onTapUp: _tapUp3,
                onTap: () {
                  singleFilePicker(2);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: _scale3,
                        child: Column(
                          children: [
                            Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
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
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.white70,
                                        // border: Border.all(
                                        //     //color: Colors.grey,
                                        //     // width: 2,
                                        //     ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.file_open_sharp,
                                        color: KColors.icon,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "File Size",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "File Size",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Get Size of Any File"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown4,
                onTapUp: _tapUp4,
                onTap: () {
                  clear();
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: _scale4,
                        child: Column(
                          children: [
                            Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
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
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.white70,
                                        // border: Border.all(
                                        //     //color: Colors.grey,
                                        //     // width: 2,
                                        //     ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.clear,
                                        color: KColors.icon,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Clear",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Clear",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Clear the build"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  void _tapDown1(TapDownDetails details) {
    _controller1.forward();
  }

  void _tapUp1(TapUpDetails details) {
    _controller1.reverse();
  }

  void _tapDown2(TapDownDetails details) {
    _controller2.forward();
  }

  void _tapUp2(TapUpDetails details) {
    _controller2.reverse();
  }

  void _tapDown3(TapDownDetails details) {
    _controller3.forward();
  }

  void _tapUp3(TapUpDetails details) {
    _controller3.reverse();
  }

  void _tapDown4(TapDownDetails details) {
    _controller4.forward();
  }

  void _tapUp4(TapUpDetails details) {
    _controller4.reverse();
  }

  clear() {
    files = [];
    filesPath = [];
    singleFile = "";
  }

  multipleFilePicker() async {
    bool isGranted = await checkPermission();

    if (isGranted) {
      try {
        FilePickerResult result =
            await FilePicker.platform.pickFiles(allowMultiple: true);

        if (result != null) {
          files.addAll(result.files);

          for (int i = 0; i < result.files.length; i++) {
            filesPath.add(result.files[i].path);
          }
        } else {
          // User canceled the picker
        }
      } on Exception catch (e) {
        print('never reached' + e.toString());
      }
    }
  }

  singleFilePicker(int type) async {
    bool isGranted = GetPlatform.isIOS || GetPlatform.isAndroid
        ? await checkPermission()
        : true;

    if (isGranted) {
      try {
        FilePickerResult result =
            await FilePicker.platform.pickFiles(allowMultiple: false);
        if (result != null) {
          singleFile = result.files[0].path;

          switch (type) {
            case 1:
              callMethod(3);
              break;

            case 2:
              callMethod(4);
              break;
          }
        } else {
          // User canceled the picker
        }
      } on Exception catch (e) {
        print('never reached' + e.toString());
      }
    }
  }

  callMethod(int type) async {
    switch (type) {
      case 1:
        String dirPath = await getFilePath("TestPDFMerger");
        mergeMultiplePDF(dirPath);
        break;

      case 2:
        String dirPath = await getFilePath("TestPDFMerger");
        createPDFWithMultipleImage(dirPath);
        break;

      case 3:
        String dirPath = await getFilePathImage("TestPDFMerger");
        createImageFromPDF(dirPath);
        break;

      case 4:
        sizeForLocalFilePath();
        break;
    }
  }

  Future<void> mergeMultiplePDF(outputDirPath) async {
    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      /// Get response either success or error
      MergeMultiplePDFResponse response = await PdfMerger.mergeMultiplePDF(
          paths: filesPath, outputDirPath: outputDirPath);

      Get.snackbar("Info", response.message);

      if (response.status == "success") {
        OpenFile.open(response.response);
      }

      print(response.status);
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  Future<void> createPDFWithMultipleImage(outputDirPath) async {
    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      /// Get response either success or error
      CreatePDFFromMultipleImageResponse response =
          await PdfMerger.createPDFFromMultipleImage(
              paths: filesPath, outputDirPath: outputDirPath);

      Get.snackbar("Info", response.message);

      if (response.status == "success") {
        OpenFile.open(response.response);
      }

      print(response.status);
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  Future<void> createImageFromPDF(outputDirPath) async {
    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      /// Get response either success or error
      CreateImageFromPDFResponse response = await PdfMerger.createImageFromPDF(
          path: singleFile, outputDirPath: outputDirPath, createOneImage: true);

      Get.snackbar("Info", response.status);

      if (response.status == "success") {
        OpenFile.open(response.response[0]);
      }

      print(response.message);
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  Future<void> sizeForLocalFilePath() async {
    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      /// Get response either success or error
      SizeFormPathResponse response =
          await PdfMerger.sizeFormPath(path: singleFile);

      if (response.status == "success") {
        Get.snackbar("Info", response.response);
      }

      print(response.status);
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  Future<void> buildInfo() async {
    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      /// Get response either success or error
      BuildInfoResponse response = await PdfMerger.buildInfo();

      Get.snackbar(
          "Info",
          "App Name : " +
              response.appName +
              "\n" +
              "Build Number : " +
              response.buildDate +
              "\n" +
              "Build Number with Time : " +
              response.buildDateWithTime +
              "\n" +
              "Package Name : " +
              response.packageName +
              "\n" +
              "Version Number : " +
              response.versionNumber +
              "\n" +
              "Build Number : " +
              response.buildNumber.toString());
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  Future<bool> checkPermission() async {
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    print(permission);
    if (permission == PermissionStatus.neverAskAgain) {
      print("Go to Settings and provide media access");
      return false;
    } else if (permission == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }

  Future<String> getFilePath(String fileStartName) async {
    String path;
    if (GetPlatform.isIOS) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      path = appDocDir.path;
    } else if (GetPlatform.isAndroid) {
      path = await ExternalPath.getExternalStoragePublicDirectory(
          ExternalPath.DIRECTORY_DOWNLOADS);
    }

    return path + "/" + fileStartName + "ABCEFG5" + ".pdf";
  }

  Future<String> getFilePathImage(String fileStartName) async {
    String path;
    if (GetPlatform.isIOS) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      path = appDocDir.path;
    } else if (GetPlatform.isAndroid) {
      path = await ExternalPath.getExternalStoragePublicDirectory(
          ExternalPath.DIRECTORY_DOWNLOADS);
    }

    return path + "/" + fileStartName + "ABCEFG5" + ".png";
  }
}
