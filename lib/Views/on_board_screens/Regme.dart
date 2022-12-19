import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/views/login_and_register/theme.dart';

import '../Theme/colors.dart';

class Salery extends StatefulWidget {
  const Salery({Key key}) : super(key: key);

  @override
  State<Salery> createState() => _SaleryState();
}

class _SaleryState extends State<Salery> with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  AnimationController _controller;
  AnimationController _controller1;
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool _switchValue = true;
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  // bool status4 = false;
  // bool status5 = false;
  // bool status6 = false;
  // bool status7 = false;
  // bool status8 = false;
  // bool status9 = false;
  bool status10 = false;
  bool status11 = false;
  bool status12 = false;
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

    super.initState();
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Denial den",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          color: Colors.blue.shade900,
                          width: 99,
                          height: 4,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "FY 2022-23",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.green.shade400,
                  elevation: 20,
                  child: Container(
                    height: 250,
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
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        color:
                                            Color.fromARGB(255, 210, 189, 214),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: const Icon(
                                                  Icons.redeem_rounded,
                                                  color: KColors.icon,
                                                  size: 30,
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                indent: 10,
                                                endIndent: 10,
                                                thickness: 1,
                                              ),
                                              Text(
                                                "Old Regime",
                                                style: GoogleFonts.dmSans(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
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
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ITR()));
                                },
                                child: Transform.scale(
                                  scale: _scale1,
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        color:
                                            Color.fromARGB(255, 210, 189, 214),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: const Icon(
                                                  Icons.redeem_rounded,
                                                  color: KColors.icon,
                                                  size: 30,
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                indent: 10,
                                                endIndent: 10,
                                                thickness: 1,
                                              ),
                                              Text(
                                                "New Regime",
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: SizedBox(
                                height: 80,
                                width: 150,
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    //padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {},
                                    text: "Salery And\n Income"),
                              ),
                            ),

                            FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: SizedBox(
                                height: 80,
                                width: 150,
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(5),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {},
                                    text: "Excemptions &\n Educations"),
                              ),
                            ),
                            // Expanded(
                            //   child: Container(
                            //     child: Center(
                            //         child: Text(
                            //       "Exepmtions  & eductions",
                            //       style: TextStyle(
                            //           fontSize: 15, fontWeight: FontWeight.bold),
                            //     )),
                            //     height: 60,
                            //     width: 50,
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(15),
                            //         boxShadow: [
                            //           BoxShadow(
                            //               color: Colors.grey.shade700,
                            //               blurRadius: 5.0,
                            //               offset: Offset(5, 3))
                            //         ],
                            //         // border: Border.all(
                            //         //     color: Colors.blue.shade900),
                            //         shape: BoxShape.rectangle,
                            //         gradient: LinearGradient(
                            //           begin: Alignment.bottomRight,
                            //           end: Alignment.centerLeft,
                            //           colors: [
                            //             Colors.grey.shade100,
                            //             Colors.white,
                            //           ],
                            //         )),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Salery & Income",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Rs.1,20,00,000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
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
                              // color: Colors.red,
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
                                    top: 5, bottom: 5, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Salery",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          const Text(
                                            "Salery,Bonus,Allowences",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              // fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 14.5,
                                            ),
                                          ),
                                        ]),
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
                          Visibility(
                            visible: isVisible,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
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
                                            Colors.green.shade100,
                                            Colors.white,
                                          ],
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              top: 10,
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Basic + DA\n(Dearness Allowance)",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status,
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "HRA(House rent Allowence)",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status1,
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status1 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Bonus,Commissions",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status2,
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status2 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Other Allowances",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status3,
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status3 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible1 = !isVisible1;
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              // color: Colors.red,
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
                                    top: 5, bottom: 5, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Business and Profession",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          const Text(
                                            "Taxable Income From \nBusiness and Profession",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              // fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 14.5,
                                            ),
                                          ),
                                        ]),
                                    isVisible1
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
                          Visibility(
                            visible: isVisible1,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
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
                                            Colors.green.shade100,
                                            Colors.white,
                                          ],
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Business",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status4,
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status4 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Profession",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status5,
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status5 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.red,
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
                                    top: 5, bottom: 5, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Capital Gains",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          const Text(
                                            "Income From Capital Gain",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              // fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 14.5,
                                            ),
                                          ),
                                        ]),
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
                          Visibility(
                            visible: isVisible2,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
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
                                            Colors.green.shade100,
                                            Colors.white,
                                          ],
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Short Term Capital\nGain-Taxable @ 20%",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status6,
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status6 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Short Term Capital\nGain-Taxable @ 15%",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status7,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status7 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "long Term Capital\nGain-Taxable @ 10%",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status8,
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status8 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Long Term Capital\nGain-Taxable @ 20%",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  // Center(
                                                  //   child: Container(
                                                  //     child: FlutterSwitch(
                                                  //       width: 100.0,
                                                  //       height: 30.0,
                                                  //       valueFontSize: 15.0,
                                                  //       toggleSize: 45.0,
                                                  //       value: status9,
                                                  //       borderRadius: 30.0,
                                                  //       padding: 8.0,
                                                  //       activeText: "monthly",
                                                  //       inactiveText: "yearly",
                                                  //       showOnOff: true,
                                                  //       onToggle: (val) {
                                                  //         setState(() {
                                                  //           status9 = val;
                                                  //         });
                                                  //       },
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              //color: Colors.red,
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
                                    top: 5, bottom: 5, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Other Sources",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 17.5,
                                            ),
                                          ),
                                          const Text(
                                            " income From Other Sources",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              // fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                              fontSize: 14.5,
                                            ),
                                          ),
                                        ]),
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
                          Visibility(
                            visible: isVisible3,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
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
                                            Colors.green.shade100,
                                            Colors.white,
                                          ],
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Intrest From Savings\nBank Accounts",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status10,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status10 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Intrest From Fixed Deposits",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status11,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status11 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Other Sources",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      letterSpacing: 1.5,
                                                      fontSize: 11.5,
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 30,
                                                  // ),
                                                  Center(
                                                    child: Container(
                                                      child: FlutterSwitch(
                                                        width: 100.0,
                                                        height: 30.0,
                                                        valueFontSize: 15.0,
                                                        toggleSize: 45.0,
                                                        value: status12,
                                                        borderRadius: 30.0,
                                                        padding: 8.0,
                                                        activeText: "monthly",
                                                        inactiveText: "yearly",
                                                        showOnOff: true,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status12 = val;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 100),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  // border: Border.all(
                                                  //     color: Colors.blue.shade900),
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                // keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
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
}
