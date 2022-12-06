import 'package:flutter/material.dart';
import 'package:gst_app/AdhaarLinks.dart';
import 'package:gst_app/Views/ItrLinks.dart';
import 'package:gst_app/Views/e-pay-tax.dart';
import 'package:gst_app/Views/e_verify_return.dart';
import 'package:gst_app/Views/know_your_ao.dart';
import 'package:gst_app/Views/know_your_tan.dart';
import 'package:gst_app/Views/link_aadhaar_status.dart';
import 'package:gst_app/Views/verify_your_pan.dart';

class StartupRegistrationUI extends StatefulWidget {
  const StartupRegistrationUI({Key key}) : super(key: key);

  @override
  State<StartupRegistrationUI> createState() => _StartupRegistrationUIState();
}

class _StartupRegistrationUIState extends State<StartupRegistrationUI> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade900,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Startup Registration",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => VerifyReturn()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.verified_user,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "PF & ESI Monthly Return",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => AdhaarLinksUi()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.link_rounded,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PF Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => EPayTax()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.paypal,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ESI Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ItrLinksUi()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.insert_comment_sharp,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TDS Return Filling",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => VerifyYourPan()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.verified_rounded,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Accounting",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(context,
                //     //     MaterialPageRoute(builder: (context) => KnowYourTan()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.details_outlined,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Audit",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                GestureDetector(
                  onTap: () {
                    //  Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => TaxCalender()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.calendar_view_week,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Company Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                // GestureDetector(
                //   onTap: () {
                //     //  Navigator.push(
                //     //             context,
                //     //             MaterialPageRoute(
                //     //                 builder: (context) => TaxInfo()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.info,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "DSC(Digital Signature Certification)",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LinkAadhaarStatus()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.stacked_bar_chart,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TAN Registaration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => Authenticatenotice()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.ios_share_outlined,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Flexible(
                            child: Container(
                              //  margin: EdgeInsets.only(right: 180),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "LLP Registration",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.aod,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GST Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.card_membership,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Partnership/MSME Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.train_outlined,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Station8/NGO Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.turn_slight_left,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trust Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.local_police_rounded,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "IE License Partnership",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(context,
                //     //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.card_membership_outlined,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "PAN",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.tram_rounded,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trade Mark Renewal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.copyright_outlined,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Copy Right Registartion",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.iso_sharp,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ISO Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.corporate_fare_outlined,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Corporation License",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.fireplace,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fire License Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(context,
                //     //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.local_post_office_outlined,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Registered Office Change",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.push(context,
                //     //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(15),
                //       margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color.fromARGB(235, 255, 255, 255),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black26,
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.share_outlined,
                //             color: Colors.blue.shade900,
                //           ),
                //           SizedBox(
                //             width: width * .12,
                //           ),
                //           Container(
                //             //  margin: EdgeInsets.only(right: 180),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Share Allotment",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 15,
                //                       color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )),
                // ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => KnowYourAo()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.card_membership_sharp,
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: width * .12,
                          ),
                          Container(
                            //  margin: EdgeInsets.only(right: 180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rason Card Registration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ]),
        ));
  }
}
