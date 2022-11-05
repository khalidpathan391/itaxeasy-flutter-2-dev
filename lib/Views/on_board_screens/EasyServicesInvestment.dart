import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Theme/colors.dart';
import 'package:gst_app/Views/on_board_screens/EasyServicesInvestment.dart';

class EasyServicesInvestment extends StatefulWidget {
  const EasyServicesInvestment({Key key}) : super(key: key);

  @override
  State<EasyServicesInvestment> createState() => _EasyServicesInvestmentState();
}

class _EasyServicesInvestmentState extends State<EasyServicesInvestment>
    with TickerProviderStateMixin {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;
  double _scale5;
  double _scale6;
  double _scale7;
  double _scale8;
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
  AnimationController _controller7;
  AnimationController _controller8;

  @override
  void initState() {
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
    super.initState();
  }

  @override
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
  }

  MediaQueryData size;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
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
                          "Investments",
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
                  SizedBox(
                    height: 10,
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
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade700
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "FBF",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "NPS",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Mutual Funds",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "SIP",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "LIC Policy",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sale",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade800
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Purchase",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade700
                                ],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Capital Gain",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            importantLinks(context),
          ],
        ),
      ),
    );
  }

  Widget importantLinks(BuildContext context) {
    size = MediaQuery.of(context);
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    _scale6 = 1 - _controller6.value;
    _scale7 = 1 - _controller7.value;
    _scale8 = 1 - _controller8.value;
    return Expanded(
      child: SizedBox(
        height: size.size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              GestureDetector(
                onTapDown: _tapDown,
                onTapUp: _tapUp,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => EasyServicesInvestment()));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.trending_up_outlined,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "FBF",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown1,
                onTapUp: _tapUp1,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> SaleUi() ));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.next_plan_rounded,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "NPS",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown2,
                onTapUp: _tapUp2,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Purchases()));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.functions_outlined,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "#####",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown3,
                onTapUp: _tapUp3,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashService()));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.all_inclusive_outlined,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "SIP",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown4,
                onTapUp: _tapUp4,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>CashAndBank()));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.policy_rounded,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "####",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown5,
                onTapUp: _tapUp5,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>TradingAccount()));
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.health_and_safety_outlined,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Sale",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown6,
                onTapUp: _tapUp6,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>EasyLinks()));
                },
                child: Transform.scale(
                  scale: _scale6,
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.local_atm_outlined,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Purchase",
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
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown8,
                onTapUp: _tapUp8,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text("Contact our Organization"),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>EasyLinks()));
                },
                child: Transform.scale(
                  scale: _scale8,
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
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Icon(
                                  Icons.no_drinks_sharp,
                                  color: KColors.icon,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Capital Gain",
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
}
