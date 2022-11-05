import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Generators.dart';
import 'OCR.dart';
import 'PinCodeInfo.dart';
import 'Theme/colors.dart';

class DashService extends StatefulWidget {
  const DashService({Key key}) : super(key: key);

  @override
  State<DashService> createState() => _DashServiceState();
}

class _DashServiceState extends State<DashService> {
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Icon(
                              Icons.chevron_left_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Easy Gadgets",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 19 / 5,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade800,
                                  Colors.blue.shade900
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "CLOUD",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade800,
                                  Colors.blue.shade900
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "DMS",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade800,
                                  Colors.blue.shade900
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Library",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade800,
                                  Colors.blue.shade900
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "ERP",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(30.0),
                      //   ),
                      //   shadowColor: KColors.icon,
                      //   elevation: 2,
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(30),
                      //         gradient: LinearGradient(
                      //           begin: Alignment.topCenter,
                      //           end: Alignment.bottomCenter,
                      //           colors: [
                      //             Colors.blue.shade800,
                      //             Colors.blue.shade900
                      //           ],
                      //         )),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: const [
                      //         Icon(
                      //           Icons.description_outlined,
                      //           color: KColors.icon,
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Text(
                      //           "OCR",
                      //           style: TextStyle(
                      //               fontFamily: "Poppins",
                      //               fontWeight: FontWeight.bold,
                      //               letterSpacing: 1.5,
                      //               fontSize: 20.5,
                      //               color: Colors.white),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
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
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.filter_drama_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CLOUD",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Here you can store your files in the cloud",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.storage_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DMS",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Providing a secure and easy way to store your data",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.local_library_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LIBRARY",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Here you can get taxation and other important documents",
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.webhook_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ERP",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Our ERP system is a powerful system that can be used to manage your business",
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 25,),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Generators()));
              //   },
              //   child: Row(
              //     children: [
              //       Container(
              //         height: 72,
              //         width: 83,
              //         decoration: BoxDecoration(
              //             boxShadow: const [
              //               BoxShadow(
              //                   color: Colors.grey,
              //                   blurRadius: 6
              //               ),
              //             ],
              //             border: Border.all(
              //               width: 1.5,
              //               color: const Color(0xffE3E9ED),
              //             ),
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(15.0)),
              //         child: Center(
              //           child: Container(
              //             height: 45,
              //             width: 45,
              //             decoration: BoxDecoration(
              //               color: const Color(0xffE3E9ED),
              //               borderRadius: BorderRadius.circular(15.0),
              //             ),
              //             child: const Icon(
              //               Icons.sync_lock_rounded,
              //               color: KColors.icon,
              //               size: 30,
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Expanded(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Generators",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 25,
              //                 letterSpacing: 2,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.headline,
              //               ),
              //             ),
              //             Text(
              //               "We got different types of generators that can be used to generate PDFs,Merge PDFs and other types of files",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.subtitles,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 25,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => OCRSystem()));
              //   },
              //   child: Row(
              //     children: [
              //       Container(
              //         height: 72,
              //         width: 83,
              //         decoration: BoxDecoration(
              //             boxShadow: const [
              //               BoxShadow(color: Colors.grey, blurRadius: 6),
              //             ],
              //             border: Border.all(
              //               width: 1.5,
              //               color: const Color(0xffE3E9ED),
              //             ),
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(15.0)),
              //         child: Center(
              //           child: Container(
              //             height: 45,
              //             width: 45,
              //             decoration: BoxDecoration(
              //               color: const Color(0xffE3E9ED),
              //               borderRadius: BorderRadius.circular(15.0),
              //             ),
              //             child: const Icon(
              //               Icons.document_scanner_rounded,
              //               color: KColors.icon,
              //               size: 30,
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Expanded(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "OCR",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 25,
              //                 letterSpacing: 2,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.headline,
              //               ),
              //             ),
              //             Text(
              //               "OCR(Optical Character Recognition) is a system that can be used to read text from images",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.subtitles,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 25,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => PincodeInfoUi()));
              //   },
              //   child: Row(
              //     children: [
              //       Container(
              //         height: 72,
              //         width: 83,
              //         decoration: BoxDecoration(
              //             boxShadow: const [
              //               BoxShadow(color: Colors.grey, blurRadius: 6),
              //             ],
              //             border: Border.all(
              //               width: 1.5,
              //               color: const Color(0xffE3E9ED),
              //             ),
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(15.0)),
              //         child: Center(
              //           child: Container(
              //             height: 45,
              //             width: 45,
              //             decoration: BoxDecoration(
              //               color: const Color(0xffE3E9ED),
              //               borderRadius: BorderRadius.circular(15.0),
              //             ),
              //             child: const Icon(
              //               Icons.pin_rounded,
              //               color: KColors.icon,
              //               size: 30,
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Expanded(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Info by PINCODE",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 25,
              //                 letterSpacing: 2,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.headline,
              //               ),
              //             ),
              //             Text(
              //               "We can get information about any PINCODE from this system",
              //               style: GoogleFonts.dmSans(
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.normal,
              //                 color: KColors.subtitles,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
