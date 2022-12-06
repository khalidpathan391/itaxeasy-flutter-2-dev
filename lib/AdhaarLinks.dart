import 'package:flutter/material.dart';
import 'package:gst_app/AdhaarLinks.dart';
import 'package:gst_app/Views/ItrLinks.dart';
import 'package:gst_app/Views/e-pay-tax.dart';
import 'package:gst_app/Views/e_verify_return.dart';
import 'package:gst_app/Views/know_your_ao.dart';
import 'package:gst_app/Views/know_your_tan.dart';
import 'package:gst_app/Views/link_aadhaar.dart';
import 'package:gst_app/Views/link_aadhaar_status.dart';
import 'package:gst_app/Views/verify_your_pan.dart';

class AdhaarLinksUi extends StatefulWidget {
  const AdhaarLinksUi({Key key}) : super(key: key);

  @override
  State<AdhaarLinksUi> createState() => _AdhaarLinksUiState();
}

class _AdhaarLinksUiState extends State<AdhaarLinksUi> {
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
                "Easy Aadhar Links",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LinkAadhaarStatus()));
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
                            Icons.account_box_rounded,
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
                                  "Easy Link AAdhar Status",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LinkAadhaar()));
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
                            Icons.link_sharp,
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
                                  "Easy Link Aadhar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ]),
        ));
  }
}
