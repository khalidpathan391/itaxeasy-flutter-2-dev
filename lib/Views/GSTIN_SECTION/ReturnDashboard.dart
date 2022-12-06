import 'package:animate_do/animate_do.dart';
import "package:flutter/material.dart";
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Calculator/ifsc_calcii/Theme.dart';
import 'gstn.dart';
import 'gstn_list.dart';

class ReturnDashboard extends StatefulWidget {
  const ReturnDashboard({Key key}) : super(key: key);

  @override
  State<ReturnDashboard> createState() => _ReturnDashboardState();
}

class _ReturnDashboardState extends State<ReturnDashboard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
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
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Return Dashboard',
                            style: heading2.copyWith(color: textBlack),
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
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Return Filing  Preference (APR-jun 2022) monthly (CHARGE)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Returns calendar  (Last 5 return periods)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GSTR-1/FF",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .01),
                      Text("Jan-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .01),
                      Text("Feb-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .01),
                      Text("Mar-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GSTR-  3B",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Jan-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Feb-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Mar-2022",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ledger Balance",
                  style: GoogleFonts.recursive(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Electronic\n Liability \nRegister",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .01),
                      Text("IGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("SGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CESS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Electronic cash \nLedger",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .01),
                      Text("IGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("SGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CESS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey.shade400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Electronin \nCredit Ledger \n  TDS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .04),
                      Text("IGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("SGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CESS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.blue.shade100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TCS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .21),
                      Text("IGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("SGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      Text("CESS",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Text(
                  "Quick Links",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red.shade800),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Column(children: [
                      FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: GFButton(
                            padding: const EdgeInsets.all(10),
                            shape: GFButtonShape.pills,
                            color: Colors.blue.shade800,
                            onPressed: () {},
                            text: "   Cash   "),
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: GFButton(
                            padding: const EdgeInsets.all(10),
                            shape: GFButtonShape.pills,
                            color: Colors.blue.shade800,
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                            },
                            text: "  Liability "),
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: GFButton(
                            padding: const EdgeInsets.all(10),
                            shape: GFButtonShape.pills,
                            color: Colors.blue.shade800,
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                            },
                            text: "   Credit   "),
                      ),
                    ]),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   padding:
                //       EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                //   color: Colors.yellow,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text("Electronic Credit Ledger",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("IGST",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("CGST",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("SGST",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("CESS",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding:
                //       EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                //   color: Colors.white,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text("",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //       Text("",
                //           style: GoogleFonts.dmSans(
                //             fontWeight: FontWeight.w700,
                //           )),
                //     ],
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: GFButton(
                          color: Colors.blue.shade900,
                          padding: const EdgeInsets.all(10),
                          shape: GFButtonShape.pills,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gstn()));
                          },
                          text: "File Returns"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: GFButton(
                          color: Colors.blue.shade900,
                          padding: const EdgeInsets.all(10),
                          shape: GFButtonShape.pills,
                          onPressed: () {},
                          text: "Pay Tax"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
