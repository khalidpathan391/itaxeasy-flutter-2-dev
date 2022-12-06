import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Invoice-Generator/model/invoice.dart';
import 'package:gst_app/Views/OCR.dart';
import 'package:gst_app/Views/on_board_screens/IBIZ.dart';
import 'package:gst_app/Views/on_board_screens/Invoice.dart';
import 'package:url_launcher/url_launcher.dart';
import '../BalanceSheet.dart';
import '../EasyGadgets.dart';
import '../EasyLinks.dart';
import '../EasyTax.dart';
import '../GSTIN_SECTION/GSTR-3b/Gstr-4A.dart';
import '../Purchases.dart';
import '../Recent_Transactions.dart';
import '../Sale.dart';
import '../SideBar/side_menu.dart';
import '../Tables/CashAndBank.dart';
import '../Theme/colors.dart';
import '../TradingAccount.dart';
import '../Vouchers.dart';
import '../EasyServices.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;
  double _scale5;
  double _scale6;
  double _scale7;

  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
  AnimationController _controller7;

  FlutterSecureStorage storage = const FlutterSecureStorage();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String name;
  String lastname;
  MediaQueryData size;

  void _openDrawer() {
    if (_scaffoldKey.currentState != null &&
        !_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  bool visible = false;

  getName() async {
    setState(() {
      isLoading = true;
    });
    name = await storage.read(key: "username");
    lastname = await storage.read(key: "lastname");

    setState(() {
      isLoading = false;
    });
  }

  double itemWidth = 60.0;
  int itemCount = 100;
  int selected = 50;

  Future<void> _initializeVideoPlayerFuture;

  bool isLoading = false;

  // File path = Environment.getExternalStoragePublicDirectory(
  //     Environment.DIRECTORY_PICTURES);
  // File file = new File(path, "DemoPicture.jpg");

  @override
  void initState() {
    getName();
    // _tooltipBehavior = TooltipBehavior(enable: true);
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller4 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller5 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller6 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller7 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  // TooltipBehavior _tooltipBehavior;

  int _visibleItems;
  double _itemExtent;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: KColors.background,
        floatingActionButton: buildSpeedDial(),
        key: _scaffoldKey,
        drawer: const SideMenu(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: _openDrawer,
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.blue.shade900,
                        size: 35,
                      ),
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.blue.shade900,
                      size: 35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/mypic.jpeg"),
                    ),
                    // Image.asset("assets/images/mypic.jpeg"),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.blue.shade900),
                        ),
                        Text(
                          "Khalid",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          name.capitalize ?? "",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        height: 190,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade900,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Current Balance",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                      height: 30,
                                      child:
                                          Image.asset("assets/icons/mcard.png"))
                                ],
                              ),
                              const Text(
                                "₹5,750,20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "5282 3456 7890 1289",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "09/25",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => Gstr4a()));
                    //       },
                    //       child: Text(
                    //         "Important Links",
                    //         style: GoogleFonts.dmSans(
                    //           fontSize: 22,
                    //           fontWeight: FontWeight.bold,
                    //           color: const Color(0xFF000000),
                    //         ),
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         setState(() {
                    //           visible = !visible;
                    //         });
                    //       },
                    //       child: visible
                    //           ? Container(
                    //               padding: const EdgeInsets.only(
                    //                 left: 8,
                    //                 right: 8,
                    //               ),
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(20),
                    //                   border: Border.all(
                    //                     color: Colors.grey,
                    //                   )),
                    //               child: Text(
                    //                 "Switch to Main",
                    //                 style: GoogleFonts.dmSans(
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: const Color(0xFF000000),
                    //                 ),
                    //               ),
                    //             )
                    //           : Container(
                    //               padding: EdgeInsets.only(
                    //                 left: 8,
                    //                 right: 8,
                    //               ),
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(20),
                    //                   border: Border.all(
                    //                     color: Colors.grey,
                    //                   )),
                    //               child: Text(
                    //                 "Show more",
                    //                 style: GoogleFonts.dmSans(
                    //                   fontSize: 22,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: const Color(0xFF000000),
                    //                 ),
                    //               ),
                    //             ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    visible ? tallyDashboard(context) : importantLinks(context),
                    const SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "Transactions",
                    //   style: GoogleFonts.dmSans(
                    //     fontSize: 22,
                    //     fontWeight: FontWeight.bold,
                    //     color: const Color(0xFF000000),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 15),
                    //       child: Text(
                    //         "Today",
                    //         style: GoogleFonts.dmSans(
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold,
                    //           color: const Color(0xFF000000),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(right: 15),
                    //       child: InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       RecentTransactions()));
                    //         },
                    //         child: Text(
                    //           "View all",
                    //           style: GoogleFonts.dmSans(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold,
                    //             color: const Color(0xFF000000),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    // transactionCards(context),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSpeedDial() => SpeedDial(
        overlayColor: Colors.blue.shade100,
        backgroundColor: Colors.blue.shade900,
        spacing: 12,
        // childrenButtonSize: 60,
        spaceBetweenChildren: 8,
        // animatedIcon: AnimatedIcons.menu_close,
        icon: Icons.share,
        children: [
          SpeedDialChild(
              onTap: () async {
                const url =
                    "https://www.facebook.com/pg/sonaliitax/posts/?ref=page_internal";
                openUrl(url: url, inApp: true);
              },
              child: const Icon(
                FontAwesomeIcons.facebook,
                size: 30,
                color: Colors.indigo,
              )),
          SpeedDialChild(
              onTap: () async {
                const url = "http://itaxeasy.com/";
                openUrl(url: url, inApp: true);
              },
              child: Icon(
                FontAwesomeIcons.twitter,
                size: 30,
                color: Colors.blue.shade900,
              )),
          SpeedDialChild(
              onTap: () async {
                const url =
                    "https://www.linkedin.com/company/itaxeasy-pvt-limited/";
                openUrl(url: url, inApp: true);
              },
              child: Icon(
                FontAwesomeIcons.linkedin,
                size: 30,
                color: Colors.blue.shade900,
              )),
          SpeedDialChild(
            onTap: () async {
              const phoneNumber = "8770877270";
              const url = 'tel:$phoneNumber';

              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            child: const Icon(FontAwesomeIcons.phone,
                size: 30, color: KColors.primary),
          ),
          SpeedDialChild(
            onTap: () async {
              const url =
                  "https://www.youtube.com/channel/UCY5M7I3ZaL6HW1-QjJglLbw";
              openUrl(url: url, inApp: true);
            },
            child: const Icon(
              FontAwesomeIcons.youtube,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      );

  Widget importantLinks(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 90,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GestureDetector(
          onTapDown: _tapDown,
          onTapUp: _tapUp,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EasyTax()));
          },
          child: Transform.scale(
            scale: _scale,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(2, 2))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 140,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.description_outlined,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Easy Tax",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: _tapDown1,
          onTapUp: _tapUp1,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OtherSections()));
          },
          child: Transform.scale(
            scale: _scale1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(3, 3))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.settings_suggest_outlined,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Easy Services",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(
        //         width: 1.5,
        //         color: const Color(0xffE3E9ED),
        //       ),
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(15.0)),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 55,
        //         width: 55,
        //         decoration: BoxDecoration(
        //           color: Colors.white70,

        //   border: Border.all(
        //     color: Colors.grey,
        //     width: 2,
        //   ),
        //           borderRadius: BorderRadius.circular(15.0),
        //         ),
        //         child: const Icon(
        //           Icons.description_outlined,
        //           color: KColors.icon,
        //           size: 30,
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 8,
        //       ),
        //       Text(
        //         "Easy Tax",
        //         style: GoogleFonts.dmSans(
        //           fontSize: 13,
        //           fontWeight: FontWeight.bold,
        //           color: const Color(0xFF000000),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        GestureDetector(
          onTapDown: _tapDown2,
          onTapUp: _tapUp2,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EasyLinks()));
          },
          child: Transform.scale(
            scale: _scale2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(3, 3))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.stream_outlined,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Easy Links",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: _tapDown3,
          onTapUp: _tapUp3,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DashService()));
          },
          child: Transform.scale(
            scale: _scale3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(3, 3))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.widgets_outlined,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Easy Gadgets",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: _tapDown4,
          onTapUp: _tapUp4,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => IBIZ()));
          },
          child: Transform.scale(
            scale: _scale4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(3, 3))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.money,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Bill-Vill",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: _tapDown5,
          onTapUp: _tapUp5,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OCRSystem()));
          },
          child: Transform.scale(
            scale: _scale5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        offset: Offset(3, 3))
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Card(
                  color: Color.fromARGB(255, 210, 189, 214),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 8.0,
                              offset: Offset(2, 2))
                        ]),
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white70,
                            // border: Border.all(
                            //     //color: Colors.grey,
                            //     // width: 2,
                            //     ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.document_scanner,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "OCR",
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget transactionCards(BuildContext context) {
  //   return Column(
  //     children: [
  //       ListTile(
  //         leading: CircleAvatar(
  //           radius: 30,
  //           backgroundColor: Color(0xffE3E9ED),
  //           child: Icon(
  //             Icons.account_circle_rounded,
  //             color: KColors.icon,
  //             size: 35,
  //           ),
  //         ),
  //         title: Text(
  //           "Tiana Saris",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //             color: const Color(0xFF000000),
  //           ),
  //         ),
  //         subtitle: Text(
  //           "BCA • 2468 3545 ****",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 16,
  //             // fontWeight: FontWeight.bold,
  //             color: const Color(0xff78828A),
  //           ),
  //         ),
  //         trailing: Text(
  //           "200",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: const Color(0xFF000000),
  //           ),
  //         ),
  //       ),
  //       Divider(),
  //       ListTile(
  //         leading: CircleAvatar(
  //           radius: 30,
  //           backgroundColor: Color(0xffE3E9ED),
  //           child: Icon(
  //             Icons.account_circle_rounded,
  //             color: KColors.icon,
  //             size: 35,
  //           ),
  //         ),
  //         title: Text(
  //           "Mukul Bedi",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //             color: const Color(0xFF000000),
  //           ),
  //         ),
  //         subtitle: Text(
  //           "Salary",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 16,
  //             // fontWeight: FontWeight.bold,
  //             color: const Color(0xff78828A),
  //           ),
  //         ),
  //         trailing: Text(
  //           "Cr 30000",
  //           style: GoogleFonts.dmSans(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: const Color(0xFF000000),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget tallyDashboard(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    _scale6 = 1 - _controller6.value;
    _scale7 = 1 - _controller7.value;

    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        // GestureDetector(
        //   onTapDown: _tapDown,
        //   onTapUp: _tapUp,
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => Vouchers()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.description_outlined,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Voucher",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown1,
        //   onTapUp: _tapUp1,
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => SaleUi()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale1,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.point_of_sale_rounded,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Sale",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown2,
        //   onTapUp: _tapUp2,
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => Purchases()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale2,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.shop_two_outlined,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Purchase",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown3,
        //   onTapUp: _tapUp3,
        //   onTap: () {
        //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashService()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale3,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.add_shopping_cart_outlined,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Expenses",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown4,
        //   onTapUp: _tapUp4,
        //   onTap: () {
        //     // Navigator.push(
        //     //     context, MaterialPageRoute(builder: (context) => IBIZ()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale4,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.account_balance_rounded,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "IBIZ",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown5,
        //   onTapUp: _tapUp5,
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => TradingAccount()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale5,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.bar_chart_rounded,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Trading",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown6,
        //   onTapUp: _tapUp6,
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => OCRSystem()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale6,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.document_scanner,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "OCR",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // GestureDetector(
        //   onTapDown: _tapDown7,
        //   onTapUp: _tapUp7,
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => BalanceSheet()));
        //   },
        //   child: Transform.scale(
        //     scale: _scale7,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           border: Border.all(
        //             width: 1.5,
        //             color: const Color(0xffE3E9ED),
        //           ),
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15.0)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 55,
        //             width: 55,
        //             decoration: BoxDecoration(
        //               color: const Color(0xffE3E9ED),
        //               borderRadius: BorderRadius.circular(15.0),
        //             ),
        //             child: const Icon(
        //               Icons.balance_rounded,
        //               color: KColors.icon,
        //               size: 30,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Balance Sheet",
        //             style: GoogleFonts.dmSans(
        //               fontSize: 13,
        //               fontWeight: FontWeight.bold,
        //               color: const Color(0xFF000000),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  void _tapDown1(TapDownDetails details) {
    _controller1.forward();
  }

  void _tapUp1(TapUpDetails details) {
    _controller1.reverse();
  }

  void _tapDown2(TapDownDetails details) {
    _controller2.forward();
  }

  void _tapUp2(TapUpDetails details) {
    _controller2.reverse();
  }

  void _tapDown3(TapDownDetails details) {
    _controller3.forward();
  }

  void _tapUp3(TapUpDetails details) {
    _controller3.reverse();
  }

  void _tapDown4(TapDownDetails details) {
    _controller4.forward();
  }

  void _tapUp4(TapUpDetails details) {
    _controller4.reverse();
  }

  void _tapDown5(TapDownDetails details) {
    _controller5.forward();
  }

  void _tapUp5(TapUpDetails details) {
    _controller5.reverse();
  }

  // void _tapDown6(TapDownDetails details) {
  //   _controller6.forward();
  // }

  // void _tapUp6(TapUpDetails details) {
  //   _controller6.reverse();
  // }

  // void _tapDown7(TapDownDetails details) {
  //   _controller7.forward();
  // }

  // void _tapUp7(TapUpDetails details) {
  //   _controller7.reverse();
  // }

  // void _tapDown8(TapDownDetails details) {
  //   _controller8.forward();
  // }

  // void _tapUp8(TapUpDetails details) {
  //   _controller8.reverse();
  // }

  // void _tapDown9(TapDownDetails details) {
  //   _controller9.forward();
  // }

  // void _tapUp9(TapUpDetails details) {
  //   _controller9.reverse();
  // }
}

Future openUrl({
  String url,
  bool inApp = false,
}) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: inApp,
      forceWebView: inApp,
      enableJavaScript: true,
    );
  }
}
