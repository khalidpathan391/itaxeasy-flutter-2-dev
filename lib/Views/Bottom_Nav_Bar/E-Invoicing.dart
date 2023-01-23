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
  double _scale4;
  double _scale5;
  double _scale6;
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Invoice",
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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          GestureDetector(
            onTapDown: _tapDown4,
            onTapUp: _tapUp4,
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => SaleUi()));
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
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bank",
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
                ],
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown,
            onTapUp: _tapUp,
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => ReturnDashboard()));
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
                ],
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
                ],
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
                ],
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown5,
            onTapUp: _tapUp5,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SaleUi()));
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
                ],
              ),
            ),
          ),
          GestureDetector(
            onTapDown: _tapDown6,
            onTapUp: _tapUp6,
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => SaleUi()));
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
                            height: 8,
                          ),
                          Text(
                            "Receipt",
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
                ],
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
}
