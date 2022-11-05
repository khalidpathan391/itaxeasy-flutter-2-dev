import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Theme/colors.dart';
import 'e-pay-tax.dart';
import 'e_verify_return.dart';
import 'itr_status.dart';
import 'know_your_ao.dart';
import 'know_your_tan.dart';

class ItrLinksUi extends StatefulWidget {
  const ItrLinksUi({Key key}) : super(key: key);

  @override
  State<ItrLinksUi> createState() => _ItrLinksUiState();
}

class _ItrLinksUiState extends State<ItrLinksUi> {
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
                colors: [Colors.blue.shade900, Colors.blue.shade800],
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
                        "Easy ITR Search",
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
                      MaterialPageRoute(builder: (context) => ItrStatus()));
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
                            "Easy ITR Status",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Check your ITR status",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerifyReturn()));
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
                            "Easy e-Verify Return",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Verify your return",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EPayTax()));
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
                            "Easy e-Pay Tax",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Pay your tax online",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KnowYourTan()));
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
                            Icons.edit_note_rounded,
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
                            "Know TAN Details",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Know your TAN details",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KnowYourAo()));
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
                            Icons.scatter_plot_rounded,
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
                            "Easy Know Your AO",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.dmSans(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: KColors.headline,
                            ),
                          ),
                          Text(
                            "Know your AO",
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
