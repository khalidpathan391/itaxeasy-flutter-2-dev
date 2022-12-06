import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/GST3.1.1table.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Gst3b1.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Gstr-4A.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Table5.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Table5_1.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Table_3_2.dart';
import 'package:gst_app/Views/components/constants.dart';

import '../GSTR1/prepare_online.dart';
import 'Table4.dart';
import 'Chalaan.dart';
import 'GSTR-3.1 Table.dart';
import 'GstrSalePurchase.dart';

class GST3b extends StatefulWidget {
  const GST3b({Key key}) : super(key: key);

  @override
  _GST3bState createState() => _GST3bState();
}

class _GST3bState extends State<GST3b> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 24.0, 0),
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
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'GSTR-3B List',
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
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Tax on  outward and reverse charge inward supplies",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "GSTR3.1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  const GSTTable3B()));
                                    },
                                    text: "View"),
                              ),
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
                                      //         builder: (context) =>
                                      //             GST3_1_Table()));
                                    },
                                    text: "Download"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Supplies notified under section 9(5)of the CGST Act 2017",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "GSTR3.1.1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  GSTTable3_1_Table()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                      //         builder: (context) =>
                                      //             SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Inter State supplies",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "GSTR3.2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  Table_3_2()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                      //         builder: (context) =>
                                      //             SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Eligible ITC",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  Four_Table()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                              builder: (context) =>
                                                  SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Excempt,nil and NOn GST inward supplies",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  Five_Table()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                              builder: (context) =>
                                                  SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Intrest and Late fee for previous tax period",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "5.1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              builder: (context) =>
                                                  const Five_1_Table()));
                                    },
                                    text: "View"),
                              ),
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
                                      //         builder: (context) =>
                                      //             GST3_1_Table()));
                                    },
                                    text: "Download"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromARGB(255, 210, 189, 214),
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
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
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Flexible(
                                child: const Text(
                                  "Payment of Tax",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              "6.1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                      //         builder: (context) => GST3b()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                      //         builder: (context) =>
                                      //             SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
