import 'package:animate_do/animate_do.dart';
import "package:flutter/material.dart";
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Calculator/ifsc_calcii/Theme.dart';
import 'gstn_list.dart';

class ReturnDashboard extends StatefulWidget {
  const ReturnDashboard({Key key}) : super(key: key);

  @override
  State<ReturnDashboard> createState() => _ReturnDashboardState();
}

class _ReturnDashboardState extends State<ReturnDashboard> {
  @override
  Widget build(BuildContext context) {
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
                          height: 20,
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
                  height: 20,
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
                  height: 20,
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
                  height: 50,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GSTR-1/FF",
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
                  height: 20,
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
                  height: 20,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Electronic Liability \nRegister(Return related)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 500),
                      child: GFButton(
                          padding: const EdgeInsets.all(10),
                          shape: GFButtonShape.pills,
                          color: Colors.blue.shade800,
                          onPressed: () {},
                          text: "Cash balance"),
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
                          text: "Liability Ledger"),
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
                          text: "Credit Ledger"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
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
                                    builder: (context) => GstnList()));
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
