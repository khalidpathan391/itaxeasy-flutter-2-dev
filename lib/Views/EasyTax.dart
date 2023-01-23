import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Theme/colors.dart';
import 'Bottom_Nav_Bar/MainPage.dart';
import 'GSTIN_SECTION/gstn.dart';
import 'GSTIN_SECTION/gstn_list.dart';
import 'Invoice-Generator/mains.dart';

class EasyTax extends StatefulWidget {
  const EasyTax({Key key}) : super(key: key);

  @override
  State<EasyTax> createState() => _EasyTaxState();
}

class _EasyTaxState extends State<EasyTax> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: Colors.blue.shade900,
                            size: 35,
                          ),
                          // child: Container(
                          //   height: 45,
                          //   width: 45,
                          //   decoration: BoxDecoration(
                          //     color: Colors.blue.shade900,
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(20)),
                          //   ),
                          //   child: const Icon(
                          //     Icons.chevron_left_rounded,
                          //     color: Colors.white,
                          //     size: 35,
                          //   ),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Easy Tax",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 19 / 5,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "GST",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "ITR(Income Tax Return)",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Invoice",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "E-TDS",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            sectionCard(context),
          ],
        ),
      ),
    );
  }

  Widget sectionCard(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => GstnList()));
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Gstn()));
                  // const url =
                  //     "https://services.gst.gov.in/services/login";
                  // openUrl(url: url);
                },
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.blue,
                      ),
                      child: Container(
                        width: 80,
                        height: 70,
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
                                      offset: Offset(5, 5))
                                ]),
                            height: 80,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.paid_rounded,
                                  color: Colors.blue.shade900,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("GST")
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GST",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "For filing GST(Goods Services Tax) returns",
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      "https://eportal.incometax.gov.in/iec/foservices/#/login";
                  openUrl(url: url);
                },
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.blue,
                      ),
                      child: Container(
                        width: 80,
                        height: 70,
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
                                      offset: Offset(5, 5))
                                ]),
                            height: 80,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.money_off_csred_sharp,
                                  color: Colors.blue.shade900,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("ITR")
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ITR",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "For filing ITR(Income Tax Returns)",
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.blue,
                    ),
                    child: Container(
                      width: 80,
                      height: 70,
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
                                    offset: Offset(5, 5))
                              ]),
                          height: 80,
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_rounded,
                                color: Colors.blue.shade900,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Add")
                            ],
                          ),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add",
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          letterSpacing: 2,
                          fontWeight: FontWeight.normal,
                          color: KColors.headline,
                        ),
                      ),
                      Text(
                        "Details regarding Add",
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: KColors.subtitles,
                        ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyInvoice()));
                },
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.blue,
                      ),
                      child: Container(
                        width: 80,
                        height: 70,
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
                                      offset: Offset(5, 5))
                                ]),
                            height: 80,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.money,
                                  color: Colors.blue.shade900,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Invoice")
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice",
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Online Invoice Creation for your business",
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: KColors.subtitles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.blue,
                    ),
                    child: Container(
                      width: 80,
                      height: 70,
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
                                    offset: Offset(5, 5))
                              ]),
                          height: 80,
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.extension_rounded,
                                color: Colors.blue.shade900,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("E-TDS")
                            ],
                          ),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-TDS",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            letterSpacing: 2,
                            fontWeight: FontWeight.normal,
                            color: KColors.headline,
                          ),
                        ),
                        Text(
                          "Online Tax Deducted at Source",
                          style: GoogleFonts.dmSans(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: KColors.subtitles,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
