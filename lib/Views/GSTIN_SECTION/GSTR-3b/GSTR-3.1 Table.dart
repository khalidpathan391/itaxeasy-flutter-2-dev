import 'package:animate_do/animate_do.dart';
import "package:flutter/material.dart";
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Calculator/ifsc_calcii/Theme.dart';
import '../gstn.dart';

class GSTTable3B extends StatefulWidget {
  const GSTTable3B({Key key}) : super(key: key);

  @override
  State<GSTTable3B> createState() => _GSTTable3BState();
}

class _GSTTable3BState extends State<GSTTable3B> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
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
                            'GSTR-3.1',
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
                  height: 10,
                ),
                Card(
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
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.white,
                          ],
                        )),
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 5, right: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(
                              child: Text(
                                "GSTR-3.1 - Details of outward supplies and inward supplies liable to reverse charge(other than those covered by Table 3.1.1)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 10.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: Colors.blue.shade100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(
                                child: Text(
                                  "Table 3.1(a),(b),(c) and (e) are auto-drafted based on values provided in GSTR-1/1FF, Whereas Table 3.1(d),is auto-drafted based on GSTR-2B",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 10.5,
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
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nature \nof\nSupplies",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                      SizedBox(width: width * .03),
                      Text("Total \nTaxable\nvalue \n(RS.)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                      SizedBox(width: width * .03),
                      Text("Integrated\nTax \n(Rs.)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                      SizedBox(width: width * .03),
                      Text("Central\nTax(Rs.)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                      SizedBox(width: width * .03),
                      Text("State/\nUT Tax\n(Rs.)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                      SizedBox(width: width * .03),
                      Text("CESS\n(Rs.)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.5,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(a) Sale",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .05),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      //
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .08),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .12),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .09),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .05),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(b) (Zero\nRated)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .03),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .06),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .45),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.yellow,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("(c)  Nil  ",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      // SizedBox(width: width * .),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .62),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(d)Reverse\ncharge",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700, fontSize: 12.5)),
                      SizedBox(width: width * .02),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .06),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .11),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .07),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width * .05),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(e) Non\nGST",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(width: width * .03),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: textWhiteGrey,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * .64,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Gstn()));
                          },
                          text: "Cancel"),
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
                          text: "Confirm"),
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
