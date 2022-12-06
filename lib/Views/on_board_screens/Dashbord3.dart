import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/AdhaarLinks.dart';
import 'package:gst_app/Views/BankLinks.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/E-Invoicing.dart';
import 'package:gst_app/Views/GSTIN_SECTION/gstn.dart';
import 'package:gst_app/Views/GSTIN_SECTION/gstn_list.dart';
import 'package:gst_app/Views/Generators.dart';
import 'package:gst_app/Views/GstinSearch.dart';
import 'package:gst_app/Views/Invoice-Generator/model/invoice.dart';
import 'package:gst_app/Views/ItrLinks.dart';
import 'package:gst_app/Views/OCR.dart';
import 'package:gst_app/Views/company_search.dart';
import 'package:gst_app/Views/itr.dart';
import 'package:gst_app/Views/link_aadhaar.dart';
import 'package:gst_app/Views/on_board_screens/IBIZ.dart';
import 'package:gst_app/Views/on_board_screens/Invoice.dart';
import 'package:gst_app/Views/on_board_screens/StartupRegistration.dart';
import 'package:gst_app/Views/on_board_screens/searchbox.dart';
import 'package:gst_app/Views/pdf%20converter.dart';
import 'package:gst_app/Views/search-by-gstin.dart';
import 'package:path/path.dart';
import 'package:url_launcher/url_launcher.dart';
import '../BalanceSheet.dart';
import '../EasyGadgets.dart';
import '../EasyLinks.dart';
import '../EasyTax.dart';
import '../GSTIN_SECTION/GSTR-3b/Gstr-4A.dart';
import '../GSTIN_SECTION/ReturnDashboard.dart';
import '../Purchases.dart';
import '../Recent_Transactions.dart';
import '../Sale.dart';
import '../SideBar/side_menu.dart';
import '../Tables/CashAndBank.dart';
import '../Theme/colors.dart';
import '../TradingAccount.dart';
import '../Vouchers.dart';
import '../EasyServices.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Dashbord3 extends StatefulWidget {
  const Dashbord3({Key key}) : super(key: key);

  @override
  State<Dashbord3> createState() => _Dashbord3State();
}

class _Dashbord3State extends State<Dashbord3> with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;
  double _scale5;
  double _scale6;
  double _scale7;
  double _scale8;
  double _scale9;
  double _scale10;
  double _scale11;
  double _scale12;

  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
  AnimationController _controller7;
  AnimationController _controller8;
  AnimationController _controller9;
  AnimationController _controller10;
  AnimationController _controller11;
  AnimationController _controller12;

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
  TextEditingController textController = TextEditingController();

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
    _controller8 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller9 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller10 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller11 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controller12 = AnimationController(
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
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
  }

  // TooltipBehavior _tooltipBehavior;

  int _visibleItems;
  double _itemExtent;
  bool isSearched = true;

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    _scale6 = 1 - _controller6.value;
    _scale7 = 1 - _controller7.value;
    _scale8 = 1 - _controller8.value;
    _scale9 = 1 - _controller9.value;
    _scale10 = 1 - _controller10.value;
    _scale11 = 1 - _controller11.value;
    _scale12 = 1 - _controller12.value;

    double width = MediaQuery.of(context).size.width - 10;
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        // backgroundColor: KColors.background,
        floatingActionButton: buildSpeedDial(),
        key: _scaffoldKey,
        drawer: const SideMenu(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: _openDrawer,
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.blue.shade900,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 1.0,
                        // left: 50,
                      ),
                      child: Container(
                        child: AnimSearchBar(
                          width: 300,
                          textController: textController,
                          onSuffixTap: () {
                            setState(() {
                              textController.clear();
                            });
                          },
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.blue.shade900,
                      size: 35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTapDown: _tapDown,
                            onTapUp: _tapUp,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReturnDashboard()));
                            },
                            child: Transform.scale(
                              scale: _scale,
                              child: Column(
                                children: [
                                  Center(
                                      child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Color.fromARGB(255, 210, 189, 214),
                                    elevation: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                      height: 100,
                                      width: 150,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 55,
                                            width: 55,
                                            decoration: BoxDecoration(
                                              // color: Colors.white70,
                                              // border: Border.all(
                                              //     //color: Colors.grey,
                                              //     // width: 2,
                                              //     ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: const Icon(
                                              Icons.redeem_rounded,
                                              color: KColors.icon,
                                              size: 30,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "GST",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapDown: _tapDown1,
                            onTapUp: _tapUp1,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ITR()));
                            },
                            child: Transform.scale(
                              scale: _scale1,
                              child: Column(
                                children: [
                                  Center(
                                      child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Color.fromARGB(255, 210, 189, 214),
                                    elevation: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                      height: 100,
                                      width: 150,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 55,
                                            width: 55,
                                            decoration: BoxDecoration(
                                              // color: Colors.white70,
                                              // border: Border.all(
                                              //     //color: Colors.grey,
                                              //     // width: 2,
                                              //     ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: const Icon(
                                              Icons.redeem_rounded,
                                              color: KColors.icon,
                                              size: 30,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "ITR",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 5,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 19 / 5,
                        viewportFraction: 0.8,
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
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: KColors.icon,
                          elevation: 2,
                          child: Image.asset("assets/images/itr.jpg"),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: KColors.icon,
                          elevation: 2,
                          child: Image.asset("assets/images/gstt.jpg"),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: KColors.icon,
                          elevation: 2,
                          child: Image.asset("assets/images/cl.jpg"),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: KColors.icon,
                          elevation: 2,
                          child: Image.asset("assets/images/cms.jpg"),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: KColors.icon,
                          elevation: 2,
                          child: Image.asset("assets/images/cloud.jpg"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTapDown: _tapDown2,
                          onTapUp: _tapUp2,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IBIZ()));
                          },
                          child: Transform.scale(
                            scale: _scale2,
                            child: Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
                                          offset: Offset(5, 3))
                                    ],
                                    shape: BoxShape.rectangle,
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Colors.grey.shade100,
                                        Colors.white,
                                      ],
                                    )),
                                height: 140,
                                width: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.description_outlined,
                                      color: KColors.icon,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Bill-Sill",
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
                        GestureDetector(
                          onTapDown: _tapDown3,
                          onTapUp: _tapUp3,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OCRSystem()));
                          },
                          child: Transform.scale(
                            scale: _scale3,
                            child: Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
                                          offset: Offset(5, 3))
                                    ],
                                    shape: BoxShape.rectangle,
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Colors.grey.shade100,
                                        Colors.white,
                                      ],
                                    )),
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: const Icon(
                                        Icons.document_scanner_outlined,
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
                        GestureDetector(
                          onTapDown: _tapDown4,
                          onTapUp: _tapUp4,
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Generators()));
                          },
                          child: Transform.scale(
                            scale: _scale4,
                            child: Center(
                                child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Color.fromARGB(255, 210, 189, 214),
                              elevation: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade700,
                                          blurRadius: 5.0,
                                          offset: Offset(5, 3))
                                    ],
                                    shape: BoxShape.rectangle,
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Colors.grey.shade100,
                                        Colors.white,
                                      ],
                                    )),
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                      "E-Invoicing",
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
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 30,

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
                        Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            shadowColor: KColors.icon,
                            elevation: 2,
                            child:
                                Center(child: Text("Some news will show here")),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            shadowColor: KColors.icon,
                            elevation: 2,
                            child:
                                Center(child: Text("Some news will show here")),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            shadowColor: KColors.icon,
                            elevation: 2,
                            child:
                                Center(child: Text("Some news will show here")),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            shadowColor: KColors.icon,
                            elevation: 2,
                            child:
                                Center(child: Text("Some news will show here")),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            shadowColor: KColors.icon,
                            elevation: 2,
                            child:
                                Center(child: Text("Some news will show here")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 20,
                          color: Color.fromARGB(255, 210, 189, 214),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    offset: Offset(3, 3))
                              ],
                              // border: Border.all(
                              //   color: Colors.grey,
                              //   width: 2,
                              // ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 270,
                            width: 330,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Services",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTapDown: _tapDown5,
                                      onTapUp: _tapUp5,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    GstinSearchUi()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale5,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.insert_link_sharp,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy GST\nLinksS",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown6,
                                      onTapUp: _tapUp6,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ItrLinksUi()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale6,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.insert_comment,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy Income\nTax Links",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown7,
                                      onTapUp: _tapUp7,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BankLinksUi()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale7,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.home_filled,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy Bank\nLinks",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown8,
                                      onTapUp: _tapUp8,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CompanySearch()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale8,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.panorama_fish_eye,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy \nMCA",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTapDown: _tapDown9,
                                      onTapUp: _tapUp9,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AdhaarLinksUi()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale9,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.home_mini_outlined,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy Aadhar\nLinks",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown10,
                                      onTapUp: _tapUp10,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Converter()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale10,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.device_hub_outlined,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Easy PDF\nConverter",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown11,
                                      onTapUp: _tapUp11,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StartupRegistrationUI()));
                                      },
                                      child: Transform.scale(
                                        scale: _scale11,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.health_and_safety,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Startup\nRegistration",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTapDown: _tapDown12,
                                      onTapUp: _tapUp12,
                                      onTap: () {},
                                      child: Transform.scale(
                                        scale: _scale12,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade700,
                                                        blurRadius: 5.0,
                                                        offset: Offset(5, 3))
                                                  ],
                                                  shape: BoxShape.rectangle,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.grey.shade100,
                                                      Colors.white,
                                                    ],
                                                  )),
                                              child: Icon(
                                                Icons.lan_outlined,
                                                color: Colors.blue.shade900,
                                                size: 40,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            const Text(
                                              "Finencial\nCalculator",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: visible
                                ? Container(
                                    height: 30,
                                    width: 60,
                                    margin: const EdgeInsets.only(
                                      left: 8,
                                      right: 60,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Center(
                                      child: Text(
                                        "Hide ",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 240, 243, 244),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 30,
                                    width: 100,
                                    margin: const EdgeInsets.only(
                                      left: 8,
                                      right: 60,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Center(
                                      child: Text(
                                        "See more ",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 240, 243, 244),
                                        ),
                                      ),
                                    ),
                                  )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    visible
                        ? tallyDashboard(context)
                        : SizedBox(
                            height: 30,
                          )
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
        overlayColor: Colors.grey.shade100,
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

  // Widget importantLinks(BuildContext context) {
  //   _scale = 1 - _controller.value;
  //   _scale1 = 1 - _controller1.value;
  //   _scale2 = 1 - _controller2.value;

  // }

  Widget tallyDashboard(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          color: Color.fromARGB(255, 210, 189, 214),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 8.0, offset: Offset(3, 3))
              ],
              // border: Border.all(
              //   color: Colors.grey,
              //   width: 2,
              // ),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 270,
            width: 330,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "Gadgets",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTapDown: _tapDown,
                      onTapUp: _tapUp,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => GstinSearchUi()));
                      },
                      child: Transform.scale(
                        scale: _scale,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.cloud_circle_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "Cloud",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown1,
                      onTapUp: _tapUp1,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ItrLinksUi()));
                      },
                      child: Transform.scale(
                        scale: _scale1,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.storage_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "DMS",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown2,
                      onTapUp: _tapUp2,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => BankLinksUi()));
                      },
                      child: Transform.scale(
                        scale: _scale2,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.library_books_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "Library",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown3,
                      onTapUp: _tapUp3,
                      onTap: () {},
                      child: Transform.scale(
                        scale: _scale3,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.event_repeat_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "ERP",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTapDown: _tapDown4,
                      onTapUp: _tapUp4,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AdhaarLinksUi()));
                      },
                      child: Transform.scale(
                        scale: _scale4,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.home_mini_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "****",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown5,
                      onTapUp: _tapUp5,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Converter()));
                      },
                      child: Transform.scale(
                        scale: _scale5,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.device_hub_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "*******",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown6,
                      onTapUp: _tapUp6,
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => StartupRegistrationUI()));
                      },
                      child: Transform.scale(
                        scale: _scale6,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.health_and_safety,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "****",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: _tapDown7,
                      onTapUp: _tapUp7,
                      onTap: () {},
                      child: Transform.scale(
                        scale: _scale7,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade700,
                                        blurRadius: 5.0,
                                        offset: Offset(5, 3))
                                  ],
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.white,
                                    ],
                                  )),
                              child: Icon(
                                Icons.lan_outlined,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            const Text(
                              "******",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
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

  void _tapDown6(TapDownDetails details) {
    _controller6.forward();
  }

  void _tapUp6(TapUpDetails details) {
    _controller6.reverse();
  }

  void _tapDown7(TapDownDetails details) {
    _controller7.forward();
  }

  void _tapUp7(TapUpDetails details) {
    _controller7.reverse();
  }

  void _tapDown8(TapDownDetails details) {
    _controller8.forward();
  }

  void _tapUp8(TapUpDetails details) {
    _controller8.reverse();
  }

  void _tapDown9(TapDownDetails details) {
    _controller9.forward();
  }

  void _tapUp9(TapUpDetails details) {
    _controller9.reverse();
  }

  void _tapDown10(TapDownDetails details) {
    _controller10.forward();
  }

  void _tapUp10(TapUpDetails details) {
    _controller10.reverse();
  }

  void _tapDown11(TapDownDetails details) {
    _controller11.forward();
  }

  void _tapUp11(TapUpDetails details) {
    _controller11.reverse();
  }

  void _tapDown12(TapDownDetails details) {
    _controller12.forward();
  }

  void _tapUp12(TapUpDetails details) {
    _controller12.reverse();
  }
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
