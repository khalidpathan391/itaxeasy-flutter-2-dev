import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Calculator/ifsc_calcii/bank-verification.dart';
import 'Calculator/ifsc_calcii/ifsc_coder.dart';
import 'Theme/colors.dart';

class BankLinksUi extends StatefulWidget {
  const BankLinksUi({Key key}) : super(key: key);

  @override
  State<BankLinksUi> createState() => _BankLinksUiState();
}

class _BankLinksUiState extends State<BankLinksUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade900, Colors.blue.shade900],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Icon(
                          Icons.chevron_left_rounded,
                          color: KColors.icon,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, left: 20),
                      child: Text(
                        "Easy Bank Links",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.dmSans(
                          fontSize: 40,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IfscFinder()));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 6),
                        ],
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.inventory_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
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
                            "Easy IFSC Code",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Find the IFSC code of your bank",
                            overflow: TextOverflow.ellipsis,
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BankVerification()));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.file_open_outlined,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
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
                            "Verify Bank Account",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Verify your bank account",
                            overflow: TextOverflow.ellipsis,
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
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackGST()));
                },
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 83,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 6),
                          ],
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.insert_chart_outlined_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
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
                            "Easy Bank Statement",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Track your bank statement",
                            overflow: TextOverflow.ellipsis,
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
            ],
          ),
        ),
      ),
    );
  }
}
