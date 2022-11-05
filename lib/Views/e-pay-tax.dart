import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Calculator/ifsc_calcii/theme.dart';
import 'Components/constants.dart';
import 'E-Pay-Tax/Challan-280.dart';
import 'E-Pay-Tax/Challan-281.dart';
import 'E-Pay-Tax/Challan-282.dart';
import 'E-Pay-Tax/Challan-283.dart';
import 'E-Pay-Tax/Challan-285-Equalization Levy.dart';
import 'E-Pay-Tax/Challan-284-Black-Money.dart';
import 'E-Pay-Tax/Challan-286.dart';
import 'E-Pay-Tax/Challan-287.dart';

class EPayTax extends StatefulWidget {
  const EPayTax({Key key}) : super(key: key);

  @override
  _EPayTaxState createState() => _EPayTaxState();
}

class _EPayTaxState extends State<EPayTax> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 0),
          child: Stack(
            children: [
              Column(
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
                              'e-Pay Tax',
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
                  const SizedBox(
                    height: 20,
                  ),
                  const epay(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class epay extends StatefulWidget {
  const epay({Key key}) : super(key: key);

  @override
  _epayState createState() => _epayState();
}

class _epayState extends State<epay> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan281()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "TDS/TCS",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 281",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan280()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "NON-TDS/\nTCS",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 280",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan282()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "NON-TDS/\nTCS",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 282",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan283()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "NON-TDS/\nTCS",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 283",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BlackMoney()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "Black Money",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 284",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deducted",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EqualizationLevy()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "Equalization\nLevy",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 285",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deducted",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan286()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "Income\nDeclaration",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 286",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Challan287()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Documents.svg",
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Text(
                      "PMGKY",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "CHALLAN NO./ITNS 287",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      // letterSpacing: 1.5,
                      fontSize: 14.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment of TDS/TCS by Company or Non Company Deductee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Card(
        //   child: Padding(
        //     padding: const EdgeInsets.only(left:10,top: 10,right:10),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Row(
        //           mainAxisAlignment : MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               padding: const EdgeInsets.all(defaultPadding * 0.75),
        //               height: 40,
        //               width: 40,
        //               decoration: BoxDecoration(
        //                 color:  const Color(0xFF007EE5).withOpacity(0.1),
        //                 borderRadius: const BorderRadius.all(Radius.circular(10)),
        //               ),
        //               child: SvgPicture.asset("assets/icons/Documents.svg", color:primaryColor,),
        //             ),
        //             Text("TDS on\nProperty",
        //               style: TextStyle(
        //                 fontFamily: "Poppins",
        //                 fontWeight: FontWeight.bold,
        //                 letterSpacing: 1.5,
        //                 fontSize: 17.5,
        //               ),),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 5),
        //           child: Text("(Form 26QB)",
        //             style: TextStyle(
        //               fontFamily: "Poppins",
        //               fontWeight: FontWeight.w600,
        //               // letterSpacing: 1.5,
        //               fontSize: 14.5,
        //             ),),
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 5),
        //           child: Text("Payment of TDS/TCS by Company or Non Company Deductee",
        //             style: TextStyle(
        //               color: Colors.grey,
        //               fontFamily: "Poppins",
        //               fontWeight: FontWeight.w500,
        //               // letterSpacing: 1.5,
        //               fontSize: 12.5,
        //             ),),
        //         ),
        //
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
