import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Calculator%20Screen/Domestic.dart';
import 'package:gst_app/Models/HRA.dart';
import 'package:gst_app/Views/Calculator/simple_calculators.dart';
import 'package:gst_app/Views/Purchases.dart';
import 'package:gst_app/Views/Sale.dart';
import 'package:gst_app/Views/Vouchers.dart';

import '../../Calculator Screen/CalculatorHuf.dart';
import '../../Calculator Screen/individual.dart';
import '../Calculator/CapitalGain.dart';
import '../Calculator/DepriciationCal.dart';
import '../Calculator/TDS.dart';
import '../Calculator/hra.dart';
import '../Calculator/new-regime.dart';
import '../Calculator/old-regime.dart';
import '../Components/constants.dart';
import '../Theme/colors.dart';
import '../tester.dart';

class Calui extends StatefulWidget {
  const Calui({Key key}) : super(key: key);

  @override
  State<Calui> createState() => _CaluiState();
}

class _CaluiState extends State<Calui> with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;
  double _scale5;
  double _scale6;
  double _scale7;
  double _scale8;
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
  AnimationController _controller7;
  AnimationController _controller8;
  // TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    // _tooltipBehavior = TooltipBehavior(enable: true);

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
    _controller5 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller6 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller7 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller8 = AnimationController(
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
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Income Tax Calculator",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            importantLinks(context),
          ],
        ),
      ),
    );
  }

  Widget importantLinks(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    _scale6 = 1 - _controller6.value;
    _scale7 = 1 - _controller7.value;
    _scale8 = 1 - _controller8.value;
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
<<<<<<< HEAD
          // GestureDetector(
          //   onTapDown: _tapDown4,
          //   onTapUp: _tapUp4,
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => HraUI()));
          //   },
          //   child: Transform.scale(
          //     scale: _scale4,
          //     child: Column(
          //       children: [
          //         Center(
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
          //             height: 100,
          //             width: 150,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   height: 55,
          //                   width: 55,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.white70,
          //                     // border: Border.all(
          //                     //     //color: Colors.grey,
          //                     //     // width: 2,
          //                     //     ),
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                   child: const Icon(
          //                     Icons.home_filled,
          //                     color: KColors.icon,
          //                     size: 30,
          //                   ),
          //                 ),
          //                 Text(
          //                   "House Rent \nAllowance",
          //                   style: GoogleFonts.dmSans(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTapDown: _tapDown,
          //   onTapUp: _tapUp,
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => DepricationUi()));
          //   },
          //   child: Transform.scale(
          //     scale: _scale,
          //     child: Column(
          //       children: [
          //         Center(
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
          //             height: 100,
          //             width: 150,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   height: 55,
          //                   width: 55,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.white70,
          //                     // border: Border.all(
          //                     //     //color: Colors.grey,
          //                     //     // width: 2,
          //                     //     ),
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                   child: const Icon(
          //                     Icons.money,
          //                     color: KColors.icon,
          //                     size: 30,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 2,
          //                 ),
          //                 Text(
          //                   "Depreciation \nCalculator",
          //                   style: GoogleFonts.dmSans(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTapDown: _tapDown1,
          //   onTapUp: _tapUp1,
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => CapitalGainUi()));
          //   },
          //   child: Transform.scale(
          //     scale: _scale1,
          //     child: Column(
          //       children: [
          //         Center(
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
          //             height: 100,
          //             width: 150,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   height: 55,
          //                   width: 55,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.white70,
          //                     // border: Border.all(
          //                     //     //color: Colors.grey,
          //                     //     // width: 2,
          //                     //     ),
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                   child: const Icon(
          //                     Icons.payment_outlined,
          //                     color: KColors.icon,
          //                     size: 30,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 2,
          //                 ),
          //                 Text(
          //                   "Capital Gain",
          //                   style: GoogleFonts.dmSans(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
=======
          GestureDetector(
            onTapDown: _tapDown4,
            onTapUp: _tapUp4,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HraUI()));
            },
            child: Transform.scale(
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.home_filled,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          Text(
                            "House Rent \nAllowance",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
          GestureDetector(
            onTapDown: _tapDown,
            onTapUp: _tapUp,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DepricationUi()));
            },
            child: Transform.scale(
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.money,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Depreciation \nCalculator",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
          GestureDetector(
            onTapDown: _tapDown1,
            onTapUp: _tapUp1,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CapitalGainUi()));
            },
            child: Transform.scale(
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.payment_outlined,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Capital Gain",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
          GestureDetector(
            onTapDown: _tapDown2,
            onTapUp: _tapUp2,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TdsUi()));
            },
            child: Transform.scale(
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.business_center,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Tax Deducted at \nSource (TDS)",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
          GestureDetector(
            onTapDown: _tapDown5,
            onTapUp: _tapUp5,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Domestic()));
            },
            child: Transform.scale(
              scale: _scale5,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.satellite_alt_outlined,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Domestic",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
          GestureDetector(
            onTapDown: _tapDown6,
            onTapUp: _tapUp6,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Select()));
            },
            child: Transform.scale(
              scale: _scale6,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.satellite_alt_outlined,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Individual",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
<<<<<<< HEAD
          // GestureDetector(
          //   onTapDown: _tapDown7,
          //   onTapUp: _tapUp7,
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => NewRegimeUi()));
          //   },
          //   child: Transform.scale(
          //     scale: _scale7,
          //     child: Column(
          //       children: [
          //         Center(
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
          //             height: 100,
          //             width: 150,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   height: 55,
          //                   width: 55,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.white70,
          //                     // border: Border.all(
          //                     //     //color: Colors.grey,
          //                     //     // width: 2,
          //                     //     ),
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                   child: const Icon(
          //                     Icons.volunteer_activism_sharp,
          //                     color: KColors.icon,
          //                     size: 30,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 2,
          //                 ),
          //                 Text(
          //                   "Income Tax/\nNew Regime",
          //                   style: GoogleFonts.dmSans(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTapDown: _tapDown8,
          //   onTapUp: _tapUp8,
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => OldRegimeUi()));
          //   },
          //   child: Transform.scale(
          //     scale: _scale8,
          //     child: Column(
          //       children: [
          //         Center(
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
          //             height: 100,
          //             width: 150,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   height: 55,
          //                   width: 55,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.white70,
          //                     // border: Border.all(
          //                     //     //color: Colors.grey,
          //                     //     // width: 2,
          //                     //     ),
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                   child: const Icon(
          //                     Icons.volunteer_activism_sharp,
          //                     color: KColors.icon,
          //                     size: 30,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 2,
          //                 ),
          //                 Text(
          //                   "Income Tax/\nOld Regime",
          //                   style: GoogleFonts.dmSans(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
=======
          GestureDetector(
            onTapDown: _tapDown7,
            onTapUp: _tapUp7,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewRegimeUi()));
            },
            child: Transform.scale(
              scale: _scale7,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.volunteer_activism_sharp,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Income Tax/\nNew Regime",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
          GestureDetector(
            onTapDown: _tapDown8,
            onTapUp: _tapUp8,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OldRegimeUi()));
            },
            child: Transform.scale(
              scale: _scale8,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.volunteer_activism_sharp,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Income Tax/\nOld Regime",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
          GestureDetector(
            onTapDown: _tapDown3,
            onTapUp: _tapUp3,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Calculator()));
            },
            child: Transform.scale(
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Icon(
                              Icons.volunteer_activism_sharp,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Calculator",
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
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
          ),
        ],
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

  void _tapDown5(TapDownDetails details) {
    _controller5.forward();
  }

  void _tapUp5(TapUpDetails details) {
    _controller5.reverse();
  }

  void _tapDown6(TapDownDetails details) {
    _controller6.forward();
  }

  void _tapUp6(TapUpDetails details) {
    _controller6.reverse();
  }

  void _tapDown7(TapDownDetails details) {
    _controller7.forward();
  }

  void _tapUp7(TapUpDetails details) {
    _controller6.reverse();
  }

  void _tapDown8(TapDownDetails details) {
    _controller8.forward();
  }

  void _tapUp8(TapUpDetails details) {
    _controller8.reverse();
  }
}
