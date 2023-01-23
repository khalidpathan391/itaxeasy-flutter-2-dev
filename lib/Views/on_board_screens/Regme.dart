<<<<<<< HEAD
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/on_board_screens/Drawer.dart';
import 'package:gst_app/views/login_and_register/theme.dart';

=======
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/on_board_screens/Drawer.dart';
import 'package:gst_app/views/login_and_register/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Bottom_Nav_Bar/MainPage.dart';
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
import '../Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
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
<<<<<<< HEAD
  int fyear;
=======
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
  bool isVisible = false;
  bool visible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
  bool isVisible7 = false;
  bool isVisible8 = false;
  bool isVisible9 = false;
  bool isVisible10 = false;
  bool isVisible11 = false;
  bool isVisible12 = false;
  bool isVisible13 = false;
  bool isVisible14 = false;
  bool isVisible15 = false;
  bool isVisible16 = false;
  bool isVisible17 = false;
  bool isVisible18 = false;
  bool isVisible19 = false;
  bool isVisible20 = false;
  bool isVisible21 = false;
  bool isVisible22 = false;
  bool isVisible23 = false;

  bool isChecked = false;
<<<<<<< HEAD
  getfyear() {
    fyear = DateTime.now().year % 2000 + 1;
    log(fyear.toString());
  }
=======
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80

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
<<<<<<< HEAD
    getfyear();
=======
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    return SafeArea(
      child: Scaffold(
<<<<<<< HEAD
        floatingActionButton: buildSpeedDial(),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text(
            " Income",
=======
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text(
            "Salary And Income",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
              fontSize: 17.5,
            ),
          ),
          // backgroundColor: Colors.white,
          centerTitle: true,
        ),
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
<<<<<<< HEAD
                        "FY ${DateTime.now().year}-$fyear",
=======
                        "FY 2022-23",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
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
                Column(children: [
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
                                    color: Color.fromARGB(255, 210, 189, 214),
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
                                                  BorderRadius.circular(15.0),
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
                                    color: Color.fromARGB(255, 210, 189, 214),
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
                                                  BorderRadius.circular(15.0),
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
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
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
                                    Colors.blue.shade900,
                                    Colors.blue.shade600,
                                  ],
                                )),
                            height: 60,
                            width: 150,
                            child: Center(
                              child: Text(
<<<<<<< HEAD
                                "Income",
=======
                                "Salary & \nIncome",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
                                style: GoogleFonts.dmSans(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          child: visible
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
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
                                          Colors.blue.shade900,
                                          Colors.blue.shade600,
                                        ],
                                      )),
                                  height: 60,
                                  width: 150,
                                  child: Center(
                                    child: Text(
<<<<<<< HEAD
                                      "Switch to \nIncome",
=======
                                      "Switch to \nSalary",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
                                      style: GoogleFonts.dmSans(
                                        fontSize: 17.5,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
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
                                          Colors.blue.shade900,
                                          Colors.blue.shade600,
                                        ],
                                      )),
                                  height: 60,
                                  width: 150,
                                  child: Center(
                                    child: Text(
<<<<<<< HEAD
                                      "Exemptions",
=======
                                      "Excemptions\n& Educations",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
                                      style: GoogleFonts.dmSans(
                                        fontSize: 17.5,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ]),
                visible ? tallyDashboard(context) : importantLinks(context),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ]),
        drawer: MyDrawer(),
      ),
    );
  }

  Widget importantLinks(BuildContext context) {
    return Card(
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
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Salary & Income",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rs.1,20,00,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Salary",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Salary,Bonus,Allowences",
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Basic + DA\n(Dearness Allowance)",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "HRA(House rent Allowence)",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30,
                                      // ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Bonus,Commissions",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Other Allowances",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
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
                    isVisible23 = !isVisible23;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Income From House Property",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Income From House Property",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                "Taxable Income From Business and Profession",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 9.5,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Business",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Profession",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Short Term Capital\nGain-Taxable @ 20%",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Short Term Capital\nGain-Taxable @ 15%",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "long Term Capital\nGain-Taxable @ 10%",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Long Term Capital\nGain-Taxable @ 20%",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Intrest From Savings\nBank Accounts",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Intrest From Fixed Deposits",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Other Sources",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Month ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Year ",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 1.5,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomCheckbox(),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ]),
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
    );
  }

  Widget tallyDashboard(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 10;
    return Card(
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
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
<<<<<<< HEAD
                      "Exemptions & Deductions",
=======
                      "Excemptions & Deductions",
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rs.96,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const Text(
                                  "Standerd Deductions",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                                SizedBox(
                                  width: width * .05,
                                ),
                                Text(
                                  "50000",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ]),
                              const Text(
                                "Standerd Deductions",
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5, bottom: 5, right: 5, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("50,000 Max Limit reached"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const Text(
                                  "80C",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                                SizedBox(
                                  width: width * .51,
                                ),
                                Text(
                                  "46,600",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ]),
                              const Text(
                                "Life Insurence,PPF,EPF,ELSS,NPS...",
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("1,03,400 to Limit "),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Equity Linked Savings Scheme",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Employee Provident Fund",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Life Insurence",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Public Provident Fund",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Housing Loan Principal",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "National Pension Scheme",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tution Fees",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Others",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.5,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80GG",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Deduction On Rent Paid",
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
              // Visibility(
              //   visible: isVisible2,
              //   child: Column(
              //     children: [
              //       Card(
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(15.0),
              //         ),
              //         elevation: 20,
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(15),
              //               boxShadow: [
              //                 BoxShadow(
              //                     color: Colors.grey.shade700,
              //                     blurRadius: 5.0,
              //                     offset: Offset(5, 3))
              //               ],
              //               // border: Border.all(
              //               //     color: Colors.blue.shade900),
              //               shape: BoxShape.rectangle,
              //               gradient: LinearGradient(
              //                 begin: Alignment.bottomRight,
              //                 end: Alignment.centerLeft,
              //                 colors: [
              //                   Colors.green.shade100,
              //                   Colors.white,
              //                 ],
              //               )),
              //           child: Padding(
              //             padding: const EdgeInsets.only(left: 10, bottom: 10),
              //             child: Column(
              //               children: [
              //                 Padding(
              //                   padding: EdgeInsets.only(
              //                       left: 10, bottom: 10, top: 10),
              //                   child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           "Short Term Capital\nGain-Taxable @ 20%",
              //                           style: TextStyle(
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w900,
              //                             letterSpacing: 1.5,
              //                             fontSize: 11.5,
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 30,
              //                         // ),
              //                         // Center(
              //                         //   child: Container(
              //                         //     child: FlutterSwitch(
              //                         //       width: 100.0,
              //                         //       height: 40.0,
              //                         //       valueFontSize: 15.0,
              //                         //       toggleSize: 45.0,
              //                         //       value: status6,
              //                         //       borderRadius: 30.0,
              //                         //       padding: 8.0,
              //                         //       activeText: "monthly",
              //                         //       inactiveText: "yearly",
              //                         //       showOnOff: true,
              //                         //       onToggle: (val) {
              //                         //         setState(() {
              //                         //           status6 = val;
              //                         //         });
              //                         //       },
              //                         //     ),
              //                         //   ),
              //                         // ),
              //                       ]),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(right: 100),
              //                   child: Container(
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(15),
              //                         boxShadow: [
              //                           BoxShadow(
              //                               color: Colors.grey.shade700,
              //                               blurRadius: 5.0,
              //                               offset: Offset(5, 3))
              //                         ],
              //                         // border: Border.all(
              //                         //     color: Colors.blue.shade900),
              //                         shape: BoxShape.rectangle,
              //                         gradient: LinearGradient(
              //                           begin: Alignment.bottomRight,
              //                           end: Alignment.centerLeft,
              //                           colors: [
              //                             Colors.grey.shade100,
              //                             Colors.white,
              //                           ],
              //                         )),
              //                     child: TextFormField(
              //                       decoration: InputDecoration(
              //                         hintStyle:
              //                             heading6.copyWith(color: textGrey),
              //                         border: const OutlineInputBorder(
              //                           borderSide: BorderSide.none,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(
              //                       left: 10, bottom: 10, top: 10),
              //                   child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           "Short Term Capital\nGain-Taxable @ 15%",
              //                           style: TextStyle(
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w900,
              //                             letterSpacing: 1.5,
              //                             fontSize: 11.5,
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 30,
              //                         // ),
              //                         // Center(
              //                         //   child: Container(
              //                         //     child: FlutterSwitch(
              //                         //       width: 100.0,
              //                         //       height: 40.0,
              //                         //       valueFontSize: 15.0,
              //                         //       toggleSize: 45.0,
              //                         //       value: status7,
              //                         //       activeText: "monthly",
              //                         //       inactiveText: "yearly",
              //                         //       borderRadius: 30.0,
              //                         //       padding: 8.0,
              //                         //       showOnOff: true,
              //                         //       onToggle: (val) {
              //                         //         setState(() {
              //                         //           status7 = val;
              //                         //         });
              //                         //       },
              //                         //     ),
              //                         //   ),
              //                         // ),
              //                       ]),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(right: 100),
              //                   child: Container(
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(15),
              //                         boxShadow: [
              //                           BoxShadow(
              //                               color: Colors.grey.shade700,
              //                               blurRadius: 5.0,
              //                               offset: Offset(5, 3))
              //                         ],
              //                         // border: Border.all(
              //                         //     color: Colors.blue.shade900),
              //                         shape: BoxShape.rectangle,
              //                         gradient: LinearGradient(
              //                           begin: Alignment.bottomRight,
              //                           end: Alignment.centerLeft,
              //                           colors: [
              //                             Colors.grey.shade100,
              //                             Colors.white,
              //                           ],
              //                         )),
              //                     child: TextFormField(
              //                       // controller: contactCont,
              //                       // keyboardType: TextInputType.number,
              //                       decoration: InputDecoration(
              //                         hintStyle:
              //                             heading6.copyWith(color: textGrey),
              //                         border: const OutlineInputBorder(
              //                           borderSide: BorderSide.none,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(
              //                       left: 10, bottom: 10, top: 10),
              //                   child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           "long Term Capital\nGain-Taxable @ 10%",
              //                           style: TextStyle(
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w900,
              //                             letterSpacing: 1.5,
              //                             fontSize: 11.5,
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 30,
              //                         // ),
              //                         // Center(
              //                         //   child: Container(
              //                         //     child: FlutterSwitch(
              //                         //       width: 100.0,
              //                         //       height: 40.0,
              //                         //       valueFontSize: 15.0,
              //                         //       toggleSize: 45.0,
              //                         //       value: status8,
              //                         //       borderRadius: 30.0,
              //                         //       padding: 8.0,
              //                         //       activeText: "monthly",
              //                         //       inactiveText: "yearly",
              //                         //       showOnOff: true,
              //                         //       onToggle: (val) {
              //                         //         setState(() {
              //                         //           status8 = val;
              //                         //         });
              //                         //       },
              //                         //     ),
              //                         //   ),
              //                         // ),
              //                       ]),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(right: 100),
              //                   child: Container(
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(15),
              //                         boxShadow: [
              //                           BoxShadow(
              //                               color: Colors.grey.shade700,
              //                               blurRadius: 5.0,
              //                               offset: Offset(5, 3))
              //                         ],
              //                         // border: Border.all(
              //                         //     color: Colors.blue.shade900),
              //                         shape: BoxShape.rectangle,
              //                         gradient: LinearGradient(
              //                           begin: Alignment.bottomRight,
              //                           end: Alignment.centerLeft,
              //                           colors: [
              //                             Colors.grey.shade100,
              //                             Colors.white,
              //                           ],
              //                         )),
              //                     child: TextFormField(
              //                       // controller: contactCont,
              //                       // keyboardType: TextInputType.number,
              //                       decoration: InputDecoration(
              //                         hintStyle:
              //                             heading6.copyWith(color: textGrey),
              //                         border: const OutlineInputBorder(
              //                           borderSide: BorderSide.none,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(
              //                       left: 10, bottom: 10, top: 10),
              //                   child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           "Long Term Capital\nGain-Taxable @ 20%",
              //                           style: TextStyle(
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w900,
              //                             letterSpacing: 1.5,
              //                             fontSize: 11.5,
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 30,
              //                         // ),
              //                         // Center(
              //                         //   child: Container(
              //                         //     child: FlutterSwitch(
              //                         //       width: 100.0,
              //                         //       height: 40.0,
              //                         //       valueFontSize: 15.0,
              //                         //       toggleSize: 45.0,
              //                         //       value: status9,
              //                         //       borderRadius: 30.0,
              //                         //       padding: 8.0,
              //                         //       activeText: "monthly",
              //                         //       inactiveText: "yearly",
              //                         //       showOnOff: true,
              //                         //       onToggle: (val) {
              //                         //         setState(() {
              //                         //           status9 = val;
              //                         //         });
              //                         //       },
              //                         //     ),
              //                         //   ),
              //                         // ),
              //                       ]),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(right: 100),
              //                   child: Container(
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(15),
              //                         boxShadow: [
              //                           BoxShadow(
              //                               color: Colors.grey.shade700,
              //                               blurRadius: 5.0,
              //                               offset: Offset(5, 3))
              //                         ],
              //                         // border: Border.all(
              //                         //     color: Colors.blue.shade900),
              //                         shape: BoxShape.rectangle,
              //                         gradient: LinearGradient(
              //                           begin: Alignment.bottomRight,
              //                           end: Alignment.centerLeft,
              //                           colors: [
              //                             Colors.grey.shade100,
              //                             Colors.white,
              //                           ],
              //                         )),
              //                     child: TextFormField(
              //                       // controller: contactCont,
              //                       keyboardType: TextInputType.number,
              //                       decoration: InputDecoration(
              //                         hintStyle:
              //                             heading6.copyWith(color: textGrey),
              //                         border: const OutlineInputBorder(
              //                           borderSide: BorderSide.none,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Profession Tax",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                " Profession Tax",
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.2500 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible4 = !isVisible4;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80D",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Health Insurence Premia",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible4
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
                visible: isVisible4,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,00,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible5 = !isVisible5;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80DD",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Disabled Dependent Maintenance",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
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
              Visibility(
                visible: isVisible5,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,25,000To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible6 = !isVisible6;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80DDB",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Medical Treatment Expenses",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
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
              Visibility(
                visible: isVisible6,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,00,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible7 = !isVisible7;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Section 24(B)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest On Home Loan",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible7
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
                visible: isVisible7,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.2,00,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible8 = !isVisible8;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80CCD(1B)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "National Pension Scheme-Additional Benefit",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 10.5,
                                ),
                              ),
                            ]),
                        isVisible8
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
                visible: isVisible8,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.50,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible9 = !isVisible9;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80CCD(2)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Employer's Contribution to NPS",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible9
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
                visible: isVisible9,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.84,001 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible10 = !isVisible10;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80EEA",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest On Loan for Affordable Housing",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 12.5,
                                ),
                              ),
                            ]),
                        isVisible10
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
                visible: isVisible10,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,50,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible11 = !isVisible11;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Food Coupons",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Food Coupons",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible11
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
                visible: isVisible11,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.26400 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible12 = !isVisible12;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80U",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Deduction for Disabled Individuals",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible12
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
                visible: isVisible12,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,25,000 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible13 = !isVisible13;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80EEB",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest on Loan for purchase of Elective vehicle",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 9.5,
                                ),
                              ),
                            ]),
                        isVisible13
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
                visible: isVisible13,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.1,500,00 To Limit"),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible14 = !isVisible14;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80E",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest on Education loan",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible14
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
                visible: isVisible14,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible15 = !isVisible15;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80G-Eligible Deduction 50%",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Donations",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible15
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
                visible: isVisible15,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible16 = !isVisible16;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80G-Eligible Deduction 100%",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Donations",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible16
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
                visible: isVisible16,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible17 = !isVisible17;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80GGA",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Donations for Scientific Reasearch and \nRural Devlopment",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 11.5,
                                ),
                              ),
                            ]),
                        isVisible17
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
                visible: isVisible17,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible18 = !isVisible18;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80GGC",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Contribution to Political Parties",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible18
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
                visible: isVisible18,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible19 = !isVisible19;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Other Exemptions",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Other Exemptions",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible19
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
                visible: isVisible19,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: []),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible20 = !isVisible20;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Eligible HRA Exemption",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "House Rent Allowance Exemption",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible20
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
                visible: isVisible20,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Expanded(
                                    child: Text(
                                        "HRA is Applicable only for Salaried Employees who are receiving both Basic and HRA as salary components.Go to Tax Profile in the app menu to update your Tax Profile")),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("HRA Paid"))
                                  ]),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible21 = !isVisible21;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80TTA",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest From Savings Accounts",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible21
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
                visible: isVisible21,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.10000 To Limit"),
                                      // SizedBox(
                                      //   width: 30,
                                      // ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                    isVisible22 = !isVisible22;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "80TTB",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              const Text(
                                "Interest On Deposits for Seniors",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                            ]),
                        isVisible22
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
                visible: isVisible22,
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
                                Colors.grey.shade100,
                                Colors.white,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rs.50000 To Limit"),
                                      // SizedBox(
                                      //   width: 30,
                                      // ),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
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
    );
  }
<<<<<<< HEAD

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.blue.shade100,
        backgroundColor: Colors.blue.shade900,
        spacing: 12,
        // childrenButtonSize: 60,
        spaceBetweenChildren: 8,
        // animatedIcon: AnimatedIcons.menu_close,
        icon: Icons.share,
        children: [
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
=======
>>>>>>> 5c70dd0b38bc34b2dfe9ac7cf60209168df9db80
  // Widget buildSpeedDial() => SpeedDial(
  //       overlayColor: Colors.blue.shade100,
  //       backgroundColor: Colors.blue.shade900,
  //       spacing: 12,
  //       // childrenButtonSize: 60,
  //       spaceBetweenChildren: 8,
  //       // animatedIcon: AnimatedIcons.menu_close,
  //       icon: Icons.share,
  //       children: [
  //         SpeedDialChild(
  //             onTap: () async {
  //               const url =
  //                   "https://www.facebook.com/pg/sonaliitax/posts/?ref=page_internal";
  //               openUrl(url: url, inApp: true);
  //             },
  //             child: const Icon(
  //               FontAwesomeIcons.facebook,
  //               size: 30,
  //               color: Colors.indigo,
  //             )),
  //         SpeedDialChild(
  //             onTap: () async {
  //               const url = "http://itaxeasy.com/";
  //               openUrl(url: url, inApp: true);
  //             },
  //             child: Icon(
  //               FontAwesomeIcons.twitter,
  //               size: 30,
  //               color: Colors.blue.shade900,
  //             )),
  //     //     SpeedDialChild(
  //         onTap: () async {
  //           const url =
  //               "https://www.linkedin.com/company/itaxeasy-pvt-limited/";
  //           openUrl(url: url, inApp: true);
  //         },
  //         child: Icon(
  //           FontAwesomeIcons.linkedin,
  //           size: 30,
  //           color: Colors.blue.shade900,
  //         )),
  //     SpeedDialChild(
  //       onTap: () async {
  //         const phoneNumber = "8770877270";
  //         const url = 'tel:$phoneNumber';

  //         if (await canLaunch(url)) {
  //           await launch(url);
  //         }
  //       },
  //       child: const Icon(FontAwesomeIcons.phone,
  //           size: 30, color: KColors.primary),
  //     ),
  //     SpeedDialChild(
  //       onTap: () async {
  //         const url =
  //             "https://www.youtube.com/channel/UCY5M7I3ZaL6HW1-QjJglLbw";
  //         openUrl(url: url, inApp: true);
  //       },
  //       child: const Icon(
  //         FontAwesomeIcons.youtube,
  //         size: 30,
  //         color: Colors.red,
  //       ),
  //     ),
  //   ],
  // );
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
