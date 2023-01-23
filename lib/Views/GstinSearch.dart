import 'package:flutter/material.dart';
import 'package:gst_app/AdhaarLinks.dart';
import 'package:gst_app/Models/track-gst-return.dart';
import 'package:gst_app/Views/Gst-Return/Track-Gst-Return.dart';
import 'package:gst_app/Views/ItrLinks.dart';
import 'package:gst_app/Views/Search-Gst-Pan-UI.dart';
import 'package:gst_app/Views/e-pay-tax.dart';
import 'package:gst_app/Views/e_verify_return.dart';
import 'package:gst_app/Views/know_your_ao.dart';
import 'package:gst_app/Views/know_your_tan.dart';
import 'package:gst_app/Views/link_aadhaar_status.dart';
import 'package:gst_app/Views/search-by-gstin.dart';
import 'package:gst_app/Views/verify_your_pan.dart';

class GstinSearchUi extends StatefulWidget {
  const GstinSearchUi({Key key}) : super(key: key);

  @override
  State<GstinSearchUi> createState() => _GstinSearchUiState();
}

class _GstinSearchUiState extends State<GstinSearchUi> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade900,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Easy GST Search",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GST()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.search_outlined,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Search By GSTIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GSTByPan()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.link_rounded,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Search By PAN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrackGST()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.paypal,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Track GST Return",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => TrackGST()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.insert_comment_sharp,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Compliance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ]),
        ));
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:gst_app/Views/search-by-gstin.dart';

// import 'Gst-Return/Track-Gst-Return.dart';
// import 'Search-Gst-Pan-UI.dart';
// import 'Theme/colors.dart';

// class GstinSearchUi extends StatefulWidget {
//   const GstinSearchUi({Key key}) : super(key: key);

//   @override
//   State<GstinSearchUi> createState() => _GstinSearchUiState();
// }

// class _GstinSearchUiState extends State<GstinSearchUi> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               height: 230,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Colors.blue.shade900,
//                   Colors.blue.shade800,
//                 ],
//               )),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 20),
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Icon(
//                         Icons.chevron_left_rounded,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//                       // child: Container(
//                       //   height: 45,
//                       //   width: 45,
//                       //   decoration: const BoxDecoration(
//                       //     color: Colors.white,
//                       //     borderRadius: BorderRadius.all(Radius.circular(20)),
//                       //   ),
//                       //   child: const Icon(
//                       //     Icons.chevron_left_rounded,
//                       //     color: KColors.icon,
//                       //     size: 35,
//                       //   ),
//                       // ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 70, left: 20),
//                       child: Text(
//                         "Easy GSTIN Search",
//                         overflow: TextOverflow.ellipsis,
//                         style: GoogleFonts.dmSans(
//                           fontSize: 40,
//                           letterSpacing: 3,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             sectionCard(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget sectionCard(BuildContext context) {
//     return Expanded(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context) => GST()));
//                 },
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 80,
//                       width: 110,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         // color: Colors.blue,
//                       ),
//                       child: Container(
//                         width: 80,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white70,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 8.0,
//                                 offset: Offset(3, 3))
//                           ],
//                           border: Border.all(
//                             color: Colors.grey,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Center(
//                             child: Card(
//                           color: Color.fromARGB(255, 210, 189, 214),
//                           elevation: 20,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.white60,
//                                       blurRadius: 8.0,
//                                       offset: Offset(5, 5))
//                                 ]),
//                             height: 80,
//                             width: 110,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.search_rounded,
//                                   color: Colors.blue.shade900,
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text("GST")
//                               ],
//                             ),
//                           ),
//                         )),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Search by GSTIN",
//                             overflow: TextOverflow.clip,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 25,
//                               letterSpacing: 2,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.headline,
//                             ),
//                           ),
//                           Text(
//                             "Search taxpayer by GSTIN",
//                             overflow: TextOverflow.ellipsis,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 15,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.subtitles,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => GSTByPan()));
//                 },
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 80,
//                       width: 110,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         // color: Colors.blue,
//                       ),
//                       child: Container(
//                         width: 80,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white70,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 8.0,
//                                 offset: Offset(3, 3))
//                           ],
//                           border: Border.all(
//                             color: Colors.grey,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Center(
//                             child: Card(
//                           color: Color.fromARGB(255, 210, 189, 214),
//                           elevation: 20,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.white60,
//                                       blurRadius: 8.0,
//                                       offset: Offset(5, 5))
//                                 ]),
//                             height: 80,
//                             width: 110,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.money,
//                                   color: Colors.blue.shade900,
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text("PAN")
//                               ],
//                             ),
//                           ),
//                         )),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Search by PAN",
//                             overflow: TextOverflow.clip,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 25,
//                               letterSpacing: 2,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.headline,
//                             ),
//                           ),
//                           Text(
//                             "Search taxpayer by PAN",
//                             overflow: TextOverflow.ellipsis,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 15,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.subtitles,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => TrackGST()));
//                 },
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 80,
//                       width: 110,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         // color: Colors.blue,
//                       ),
//                       child: Container(
//                         width: 80,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white70,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 8.0,
//                                 offset: Offset(3, 3))
//                           ],
//                           border: Border.all(
//                             color: Colors.grey,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Center(
//                             child: Card(
//                           color: Color.fromARGB(255, 210, 189, 214),
//                           elevation: 20,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.white60,
//                                       blurRadius: 8.0,
//                                       offset: Offset(5, 5))
//                                 ]),
//                             height: 80,
//                             width: 110,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.map_outlined,
//                                   color: Colors.blue.shade900,
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text("Track GSt")
//                               ],
//                             ),
//                           ),
//                         )),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Track GST Return",
//                             overflow: TextOverflow.clip,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 25,
//                               letterSpacing: 2,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.headline,
//                             ),
//                           ),
//                           Text(
//                             "Get all your GST returns",
//                             overflow: TextOverflow.ellipsis,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 15,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.subtitles,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   // Navigator.push(
//                   //     context, MaterialPageRoute(builder: (context) => GST()));
//                 },
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 80,
//                       width: 110,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         // color: Colors.blue,
//                       ),
//                       child: Container(
//                         width: 80,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white70,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 8.0,
//                                 offset: Offset(3, 3))
//                           ],
//                           border: Border.all(
//                             color: Colors.grey,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Center(
//                             child: Card(
//                           color: Color.fromARGB(255, 210, 189, 214),
//                           elevation: 20,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.white60,
//                                       blurRadius: 8.0,
//                                       offset: Offset(5, 5))
//                                 ]),
//                             height: 80,
//                             width: 110,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.search_rounded,
//                                   color: Colors.blue.shade900,
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text("Compliance")
//                               ],
//                             ),
//                           ),
//                         )),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Compliance",
//                             overflow: TextOverflow.clip,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 25,
//                               letterSpacing: 2,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.headline,
//                             ),
//                           ),
//                           Text(
//                             "Compliance",
//                             overflow: TextOverflow.ellipsis,
//                             style: GoogleFonts.dmSans(
//                               fontSize: 15,
//                               fontWeight: FontWeight.normal,
//                               color: KColors.subtitles,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),/               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
