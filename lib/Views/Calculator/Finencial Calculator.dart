import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/Emi.dart';
import 'package:gst_app/Models/HRA.dart';
import 'package:gst_app/Models/compound-interest.dart';
import 'package:gst_app/Views/Calculator/Emi-Cal.dart';
import 'package:gst_app/Views/Calculator/compound-interest.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:gst_app/Views/Calculator/recursiveDeposit.dart';
import 'package:gst_app/Views/Calculator/simple-interest.dart';
import 'package:gst_app/Views/Calculator/sip-gain.dart';
import 'package:gst_app/Views/Theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Bottom_Nav_Bar/MainPage.dart';
import 'BusinessLoan.dart';
import 'Cagr.dart';
import 'CapitalGain.dart';
import 'CarLoanEmi.dart';
import 'DepriciationCal.dart';
import 'Gst-Calculator.dart';
import 'Home-Loan-Emi.dart';
import 'Lump-Sum.dart';
import 'Mis.dart';
import 'Nps-Ui.dart';
import 'PersonalLoanEmi.dart';
import 'fixed-deposit.dart';
import 'hra.dart';

class FiCalculator extends StatefulWidget {
  const FiCalculator({Key key}) : super(key: key);

  @override
  _FiCalculatorState createState() => _FiCalculatorState();
}

class _FiCalculatorState extends State<FiCalculator> {
  bool isVisible = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: buildSpeedDial(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          ' Financial Calculator',
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
              SizedBox(
                height: 25,
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
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
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Bank Calculators",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        isVisible
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: isVisible,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SimpleInterestUi()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Simple Intrest Calculator",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompoundInterestUi()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Compound Intrest Cal",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ]),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible2 = !isVisible2;
                  });
                },
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // color: Color.fromARGB(255, 210, 189, 214),
                  child: Container(
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
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Income Tax Calculators",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        isVisible2
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: isVisible2,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HraUI()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "HRA Calculator",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CapitalGainUi()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Capital Gain",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //       GestureDetector(
                          //         onTap: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) => FixedDepositUi()));
                          //         },
                          //         child: Center(
                          //             child: Card(
                          //           shape: RoundedRectangleBorder(
                          //               borderRadius: BorderRadius.circular(15)),
                          //           color: Color.fromARGB(255, 210, 189, 214),
                          //           elevation: 20,
                          //           child: Container(
                          //             decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(15),
                          //                 boxShadow: [
                          //                   BoxShadow(
                          //                       color: Colors.grey.shade700,
                          //                       blurRadius: 5.0,
                          //                       offset: Offset(5, 3))
                          //                 ],
                          //                 // border: Border.all(
                          //                 //     color: Colors.blue.shade900),
                          //                 shape: BoxShape.rectangle,
                          //                 gradient: LinearGradient(
                          //                   begin: Alignment.bottomRight,
                          //                   end: Alignment.centerLeft,
                          //                   colors: [
                          //                     Colors.grey.shade100,
                          //                     Colors.white,
                          //                   ],
                          //                 )),
                          //             height: 50,
                          //             width: 150,
                          //             child: Align(
                          //               alignment: Alignment.center,
                          //               child: Text(
                          //                 "Fixed Deposit",
                          //                 style: GoogleFonts.dmSans(
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.bold,
                          //                   color: const Color(0xFF000000),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         )),
                          //       ),
                          //       GestureDetector(
                          //         onTap: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       RecursiveDepositeUI()));
                          //         },
                          //         child: Center(
                          //             child: Card(
                          //           shape: RoundedRectangleBorder(
                          //               borderRadius: BorderRadius.circular(15)),
                          //           color: Color.fromARGB(255, 210, 189, 214),
                          //           elevation: 20,
                          //           child: Container(
                          //             decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(15),
                          //                 boxShadow: [
                          //                   BoxShadow(
                          //                       color: Colors.grey.shade700,
                          //                       blurRadius: 5.0,
                          //                       offset: Offset(5, 3))
                          //                 ],
                          //                 // border: Border.all(
                          //                 //     color: Colors.blue.shade900),
                          //                 shape: BoxShape.rectangle,
                          //                 gradient: LinearGradient(
                          //                   begin: Alignment.bottomRight,
                          //                   end: Alignment.centerLeft,
                          //                   colors: [
                          //                     Colors.grey.shade100,
                          //                     Colors.white,
                          //                   ],
                          //                 )),
                          //             height: 50,
                          //             width: 150,
                          //             child: Align(
                          //               alignment: Alignment.center,
                          //               child: Text(
                          //                 "Recursive Deposite",
                          //                 style: GoogleFonts.dmSans(
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.bold,
                          //                   color: const Color(0xFF000000),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         )),
                          //       ),
                          //     ]),
                          // Row(children: [
                          //   GestureDetector(
                          //     onTap: () {
                          //       Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => DepricationUi()));
                          //     },
                          //     child: Center(
                          //         child: Card(
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(15)),
                          //       color: Color.fromARGB(255, 210, 189, 214),
                          //       elevation: 20,
                          //       child: Container(
                          //         decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(15),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.grey.shade700,
                          //                   blurRadius: 5.0,
                          //                   offset: Offset(5, 3))
                          //             ],
                          //             // border: Border.all(
                          //             //     color: Colors.blue.shade900),
                          //             shape: BoxShape.rectangle,
                          //             gradient: LinearGradient(
                          //               begin: Alignment.bottomRight,
                          //               end: Alignment.centerLeft,
                          //               colors: [
                          //                 Colors.red.shade100,
                          //                 Colors.grey.shade100,
                          //               ],
                          //             )),
                          //         height: 50,
                          //         width: 150,
                          //         child: Align(
                          //           alignment: Alignment.center,
                          //           child: Text(
                          //             "DepricationUi Calcularor",
                          //             style: GoogleFonts.dmSans(
                          //               fontSize: 12,
                          //               fontWeight: FontWeight.bold,
                          //               color: const Color(0xFF000000),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     )),
                          //   ),
                        ]),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible3 = !isVisible3;
                  });
                },
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  child: Container(
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
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: const Text(
                            "GST Calculators",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                        isVisible3
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: isVisible3,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GstUi()));
                      },
                      child: Center(
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
                          height: 50,
                          width: 150,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "GST Calculator",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),

              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       isVisible4 = !isVisible4;
              //     });
              //   },
              //   child: Card(
              //     elevation: 20,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10)),
              //     color: Color.fromARGB(255, 210, 189, 214),
              //     child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           boxShadow: [
              //             BoxShadow(
              //                 color: Colors.grey.shade700,
              //                 blurRadius: 5.0,
              //                 offset: Offset(5, 3))
              //           ],
              //           // border: Border.all(
              //           //     color: Colors.blue.shade900),
              //           shape: BoxShape.rectangle,
              //           gradient: LinearGradient(
              //             begin: Alignment.bottomCenter,
              //             end: Alignment.topCenter,
              //             colors: [
              //               Colors.grey.shade100,
              //               Colors.white,
              //             ],
              //           )),
              //       padding: const EdgeInsets.only(
              //           top: 10, bottom: 10, left: 5, right: 5),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Expanded(
              //             child: const Text(
              //               "Investment Calculators",
              //               style: TextStyle(
              //                 fontFamily: "Poppins",
              //                 fontWeight: FontWeight.bold,
              //                 letterSpacing: 1.5,
              //                 fontSize: 17.5,
              //               ),
              //             ),
              //           ),
              //           isVisible4
              //               ? const Icon(
              //                   Icons.expand_less,
              //                 )
              //               : const Icon(
              //                   Icons.expand_more,
              //                 ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Visibility(
              //   visible: isVisible4,
              //   child: Column(
              //     children: [
              //       Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => MisUi()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       // "Post Office MIS",
              //                       "Monthly Income Scheme",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => CagrUi()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "Cagr Calculator",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //           ]),
              //       Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             GestureDetector(
              //               onTap: () {
              //                 // Navigator.push(
              //                 //     context,
              //                 //     MaterialPageRoute(
              //                 //         builder: (context) => HraUI()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "RD Calculator",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 // Navigator.push(
              //                 //     context,
              //                 //     MaterialPageRoute(
              //                 //         builder: (context) => CapitalGainUi()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "FDR Calculator",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //           ]),
              //       Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => LumpSumUI()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "Lump Calculator",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => SipGainUI()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "SIP Calculator",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //           ]),
              //       Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => EmiUI()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "EMI",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 // Navigator.push(
              //                 //     context,
              //                 //     MaterialPageRoute(
              //                 //         builder: (context) => MisUi()));
              //               },
              //               child: Center(
              //                   child: Card(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(15)),
              //                 color: Color.fromARGB(255, 210, 189, 214),
              //                 elevation: 20,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(15),
              //                       boxShadow: [
              //                         BoxShadow(
              //                             color: Colors.grey.shade700,
              //                             blurRadius: 5.0,
              //                             offset: Offset(5, 3))
              //                       ],
              //                       // border: Border.all(
              //                       //     color: Colors.blue.shade900),
              //                       shape: BoxShape.rectangle,
              //                       gradient: LinearGradient(
              //                         begin: Alignment.bottomRight,
              //                         end: Alignment.centerLeft,
              //                         colors: [
              //                           Colors.grey.shade100,
              //                           Colors.white,
              //                         ],
              //                       )),
              //                   height: 50,
              //                   width: 150,
              //                   child: Align(
              //                     alignment: Alignment.center,
              //                     child: Text(
              //                       "Post Office MIS",
              //                       style: GoogleFonts.dmSans(
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.bold,
              //                         color: const Color(0xFF000000),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )),
              //             ),
              //           ]),
              //     ],
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible5 = !isVisible5;
                  });
                },
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  child: Container(
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
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: const Text(
                            "Loan Calculators",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                        isVisible5
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: isVisible5,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BusinessLoanUI()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Business Loan Cal",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CarLoanUI()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Car Loan Cal",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HraUI()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Loan Against property",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeLoanEMIUI()));
                            },
                            child: Center(
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
                                height: 50,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Home Loan Cal",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ]),
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonalLoanUI()));
                        },
                        child: Center(
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
                            height: 50,
                            width: 150,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Personal Loan Cal",
                                style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        )),
                      ),
                    ]),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible6 = !isVisible6;
                  });
                },
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 210, 189, 214),
                  child: Container(
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
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: const Text(
                            "Insurance Calculators",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                        isVisible6
                            ? const Icon(
                                Icons.expand_less,
                              )
                            : const Icon(
                                Icons.expand_more,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: isVisible6,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NpsUi()));
                      },
                      child: Center(
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
                          height: 50,
                          width: 150,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "NPS",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FadeInRight(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: GFButton(
                      color: Colors.blue.shade900,
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "DOWNLOAD DETAILS CALCULATOR (FDF)"),
                ),
              ),

              FadeInRight(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: GFButton(
                      color: Colors.blue.shade900,
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "PREVIEW"),
                ),
              ),

              // FadeInRight(
              //   delay: const Duration(milliseconds: 500),
              //   duration: const Duration(milliseconds: 500),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(14.0),
              //     ),
              //     child: GFButton(
              //         color:Colors.blue.shade900,
              //
              //         onPressed: () {
              //           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
              //         },
              //         text: "FILE RETURN"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.grey.shade100,
        backgroundColor: Colors.blue.shade900,
        spacing: 12,
        // childrenButtonSize: 60,
        spaceBetweenChildren: 8,
        // animatedIcon: AnimatedIcons.menu_close,
        icon: Icons.share,
        children: [
          SpeedDialChild(
              onTap: () async {
                const url =
                    "https://www.facebook.com/pg/sonaliitax/posts/?ref=page_internal";
                openUrl(url: url, inApp: true);
              },
              child: const Icon(
                FontAwesomeIcons.facebook,
                size: 30,
                color: Colors.indigo,
              )),
          SpeedDialChild(
              onTap: () async {
                const url = "http://itaxeasy.com/";
                openUrl(url: url, inApp: true);
              },
              child: Icon(
                FontAwesomeIcons.twitter,
                size: 30,
                color: Colors.blue.shade900,
              )),
          SpeedDialChild(
              onTap: () async {
                const url =
                    "https://www.linkedin.com/company/itaxeasy-pvt-limited/";
                openUrl(url: url, inApp: true);
              },
              child: Icon(
                FontAwesomeIcons.linkedin,
                size: 30,
                color: Colors.blue.shade900,
              )),
          SpeedDialChild(
            onTap: () async {
              const phoneNumber = "8770877270";
              const url = 'tel:$phoneNumber';

              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            child: const Icon(FontAwesomeIcons.phone,
                size: 30, color: KColors.primary),
          ),
          SpeedDialChild(
            onTap: () async {
              const url =
                  "https://www.youtube.com/channel/UCY5M7I3ZaL6HW1-QjJglLbw";
              openUrl(url: url, inApp: true);
            },
            child: const Icon(
              FontAwesomeIcons.youtube,
              size: 30,
              color: Colors.red,
            ),
          ),
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
              // final pdfFile = await generatePDF();
              //PdfApi.openFile(pdfFile);
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
