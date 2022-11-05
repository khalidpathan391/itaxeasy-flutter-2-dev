import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Views/Theme/colors.dart';
import '../Calculator/ifsc_calcii/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'CheckStatusAndDownload.dart';
import 'new_e_pan.dart';

class InstantEPan extends StatefulWidget {
  const InstantEPan({Key key}) : super(key: key);

  @override
  _InstantEPanState createState() => _InstantEPanState();
}

class _InstantEPanState extends State<InstantEPan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: FadeInDown(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              'e-PAN',
                              style: heading2.copyWith(color: textBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            'assets/images/accent.png',
                            color: KColors.icon,
                            width: 99,
                            height: 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "e-PAN facility is for allotment of Instant PAN (on near-real time basis) for those applicants who possess a valid Aadhaar number. PAN is issued in PDF format to applicants, which is free of cost.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    child: Column(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 50.0,
                            aspectRatio: 16 / 9,
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
                              shadowColor: KColors.icon,
                              elevation: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.description_outlined,
                                    color: KColors.icon,
                                  ),
                                  Text(
                                    "Easy & Paperless Process",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 12.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: KColors.icon,
                              elevation: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.badge_outlined,
                                    color: KColors.icon,
                                  ),
                                  Text(
                                    "Get e-Pan within 10 Minutes",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 12.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: KColors.icon,
                              elevation: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.credit_score_outlined,
                                    color: KColors.icon,
                                  ),
                                  Text(
                                    "Holds Same Value as Physical\nPAN Card",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 12.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 2,
                              shadowColor: KColors.icon,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.contact_phone_outlined,
                                    color: KColors.icon,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "All You Need is Aadhaar Card &\nLinked Mobile Number",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: KColors.primary,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 15, bottom: 10, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Get New e-PAN",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 15.5,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "e-PAN is a digitally signed PAN card issued in electronic format based on e-KYC data of aadhaar.",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                            const Divider(
                              color: KColors.icon,
                              thickness: 1.0,
                              indent: 2,
                              endIndent: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const GetNewEPan()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: KColors.icon,
                                        )),
                                    child: const Text(
                                      "Get New e-PAN",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: KColors.icon,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: KColors.primary,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 15, bottom: 10, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Check Status/ Download PAN",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 15.5,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Check status of pending e-PAN request / Download e-PAN.",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                            const Divider(
                              color: KColors.icon,
                              thickness: 1.0,
                              indent: 2,
                              endIndent: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StatusAndDownload()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: KColors.icon,
                                        )),
                                    child: const Text(
                                      "Continue",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: KColors.icon,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
