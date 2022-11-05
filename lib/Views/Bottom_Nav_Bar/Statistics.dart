import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Theme/colors.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Statistics",
                  style: GoogleFonts.dmSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0D47A1)),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: Image.asset("assets/images/Chart.png")),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(child: Image.asset("assets/images/Income.png")),
                    Expanded(child: Image.asset("assets/images/Outcome.png")),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Recent Transactions",
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0D47A1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                transactionCards(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget transactionCards(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xffE3E9ED),
            child: Icon(
              Icons.account_circle_rounded,
              color: KColors.icon,
              size: 35,
            ),
          ),
          title: Text(
            "Tiana Saris",
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          subtitle: Text(
            "BCA • 2468 3545 ****",
            style: GoogleFonts.dmSans(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          trailing: Text(
            "200",
            style: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xffE3E9ED),
            child: Icon(
              Icons.account_circle_rounded,
              color: KColors.icon,
              size: 35,
            ),
          ),
          title: Text(
            "Mukul Bedi",
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          subtitle: Text(
            "Salary",
            style: GoogleFonts.dmSans(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          trailing: Text(
            "Cr 50000",
            style: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
        ),
      ],
    );
  }
}
