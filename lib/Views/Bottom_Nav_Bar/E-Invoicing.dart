import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Purchases.dart';
import 'package:gst_app/Views/Sale.dart';
import 'package:gst_app/Views/Vouchers.dart';

import '../Components/constants.dart';
import '../Theme/colors.dart';
import '../tester.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class EInvoicingUi extends StatefulWidget {
  const EInvoicingUi({Key key}) : super(key: key);

  @override
  State<EInvoicingUi> createState() => _EInvoicingUiState();
}

class _EInvoicingUiState extends State<EInvoicingUi>
    with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
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

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade800, Colors.blue.shade900],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "E-Invoicing",
                      style: GoogleFonts.dmSans(
                        fontSize: 50,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            importantLinks(context),
            SizedBox(
              height: 30,
            ),
//
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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          GestureDetector(
            onTapDown: _tapDown,
            onTapUp: _tapUp,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>EasyTax()));
            },
            child: Transform.scale(
              scale: _scale,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(3, 3))
                    ],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Card(
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 8.0,
                                offset: Offset(2, 2))
                          ]),
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
                              Icons.local_atm_outlined,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Cash",
                            style: GoogleFonts.dmSans(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown1,
            onTapUp: _tapUp1,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> OtherSections() ));
            },
            child: Transform.scale(
              scale: _scale1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(3, 3))
                    ],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Card(
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 8.0,
                                offset: Offset(2, 2))
                          ]),
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
                              Icons.price_check_outlined,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Payment",
                            style: GoogleFonts.dmSans(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown2,
            onTapUp: _tapUp2,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Purchases()));
            },
            child: Transform.scale(
              scale: _scale2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(3, 3))
                    ],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Card(
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 8.0,
                                offset: Offset(2, 2))
                          ]),
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
                              Icons.credit_card_rounded,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Purchase",
                            style: GoogleFonts.dmSans(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown3,
            onTapUp: _tapUp3,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Vouchers()));
            },
            child: Transform.scale(
              scale: _scale3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(3, 3))
                    ],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Card(
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 8.0,
                                offset: Offset(2, 2))
                          ]),
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
                              Icons.redeem_rounded,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Voucher",
                            style: GoogleFonts.dmSans(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown3,
            onTapUp: _tapUp3,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SaleUi()));
            },
            child: Transform.scale(
              scale: _scale3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(3, 3))
                    ],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Card(
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 8.0,
                                offset: Offset(2, 2))
                          ]),
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
                              Icons.redeem_rounded,
                              color: KColors.icon,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Sale",
                            style: GoogleFonts.dmSans(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
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
}
