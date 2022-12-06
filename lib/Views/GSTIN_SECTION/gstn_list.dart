import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:gst_app/Views/GSTIN_SECTION/GSTR-3b/Gst3b1.dart';

import '../Theme/colors.dart';
import '../components/constants.dart';
import 'GSTR-3b/Chalaan.dart';
import 'GSTR-3b/Gstr-4A.dart';
import 'GSTR-3b/GstrSalePurchase.dart';
import 'GSTR-3b/SalePurchaseAdd.dart';
import 'GSTR1/prepare_online.dart';

class GstnList extends StatefulWidget {
  const GstnList({Key key}) : super(key: key);

  @override
  _GstnListState createState() => _GstnListState();
}

class _GstnListState extends State<GstnList> {
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
                              'GST List',
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
                                  "Details of outward supplies ofgoods or services.",
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
                              "GSTR1",
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
                                                  const PrepareOnline()));
                                    },
                                    text: "  PREPARE ONLINE  "),
                              ),
                              FadeInRight(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                    },
                                    text: "PREPARE OFFLINE"),
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
                                  "Tax on outward and reverse charge inward supplies",
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
                              "GSTR3B",
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
                                              builder: (context) => GST3b()));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SalePurchaseADD()));
                                    },
                                    text: "PREPARE ONLINE"),
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
                                    text: "PREPARE OFFLINE"),
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
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 180,

                      aspectRatio: 19 / 5,
                      viewportFraction: 0.9,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(
                                        defaultPadding * 0.75),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade900.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/Documents.svg",
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                  const Text(
                                    "Auto Drafted details\n(For view only)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 14.5,
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
                                  "GSTR2A",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FadeInRight(
                                    delay: const Duration(milliseconds: 500),
                                    duration: const Duration(milliseconds: 500),
                                    child: GFButton(
                                        color: Colors.blue.shade900,
                                        padding: const EdgeInsets.all(10),
                                        shape: GFButtonShape.pills,
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    ListTile(
                                                      leading:
                                                          new Icon(Icons.photo),
                                                      title: new Text(
                                                          'View GSTR2A'),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    ListTile(
                                                      leading: Icon(
                                                          Icons.music_note),
                                                      title: Text(
                                                          'Download GSTR2A'),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ],
                                                );
                                              });
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
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                        },
                                        text: "DOWNLOAD"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(
                                          defaultPadding * 0.70),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/Documents.svg",
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                    const Text(
                                      "Auto Drafted ITC\nStatementfor the month",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 14.5,
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
                                    "GSTR2B",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FadeInRight(
                                      delay: const Duration(milliseconds: 500),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: GFButton(
                                          color: Colors.blue.shade900,
                                          padding: const EdgeInsets.all(10),
                                          shape: GFButtonShape.pills,
                                          onPressed: () {
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
                                      duration:
                                          const Duration(milliseconds: 500),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(
                                        defaultPadding * 0.75),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade900.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/Documents.svg",
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                  const Text(
                                    "Auto Drafted ITC\nStatement for the quarter",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 13.5,
                                    ),
                                  ),
                                  // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Center(
                                child: Text(
                                  "GSTR-2B",
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
                              // const Center(
                              //   child: Text(
                              //     "Quaterly View",
                              //     style: TextStyle(
                              //       fontFamily: "Poppins",
                              //       fontWeight: FontWeight.w500,
                              //       letterSpacing: 1.5,
                              //       fontSize: 14.5,
                              //     ),
                              //     textAlign: TextAlign.center,
                              //     // maxLines: 1,
                              //     overflow: TextOverflow.ellipsis,
                              //   ),
                              // ),
                              const Divider(
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                                thickness: 1.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                                      Gstr4a()));
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
                                                      ChalaanGenerated()));
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(
                                        defaultPadding * 0.75),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade900.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/Documents.svg",
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                  const Text(
                                    "Auto Drafted details\n(For view only)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 14.5,
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
                                  "GSTR4A",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                                      Gstr4a()));
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
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                        },
                                        text: "DOWNLOAD"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
