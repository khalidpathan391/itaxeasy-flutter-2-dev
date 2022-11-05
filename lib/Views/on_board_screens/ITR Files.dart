import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ITRFiles extends StatefulWidget {
  const ITRFiles({superkey});

  @override
  State<ITRFiles> createState() => _ITRFilesState();
}

class _ITRFilesState extends State<ITRFiles> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "ITR FILES",
                  style: GoogleFonts.dmSans(
                    fontSize: 25,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.verified_user,
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
                                "e- Verify Return",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "Link Aadhar",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "e- Pay Tax",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "Income Tax Return (ITR) Status",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.verified_rounded,
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
                                "Verify Your Pan",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.details_outlined,
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
                                "Know Tan Details",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "Tax Calendar",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.info,
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
                                "Tax Information & services",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "Link Aadhar Status",
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
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                  "Authenticate notice/order issued by ITD",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(235, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
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
                                "Know Your AO",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ]),
        ));
  }
}
