import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import '../../Theme/colors.dart';



class CustomerHeader extends StatelessWidget {
  const CustomerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10,top: 20),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customers',
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: KColors.headline,
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Image.asset(
                //   'assets/images/accent.png',
                //   color:Colors.purple,
                //   width: 99,
                //   height: 4,
                // ),
              ],
            ),
      ),
    );

    }
}
