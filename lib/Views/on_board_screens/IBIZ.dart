import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/BalanceSheet.dart';
import 'package:gst_app/Views/TradingAccount.dart';

class IBIZ extends StatefulWidget {
  const IBIZ({Key key}) : super(key: key);

  @override
  State<IBIZ> createState() => _IBIZState();
}

class _IBIZState extends State<IBIZ> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade900,
                ],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      // child: Container(
                      //   height: 45,
                      //   width: 45,
                      //   decoration: const BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //   ),
                      //   child: Icon(
                      //     Icons.chevron_left_rounded,
                      //     color: Colors.blue.shade900,
                      //     size: 35,
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Text(
                      "Bill-Vill",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.dmSans(
                        fontSize: 40,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            sectionCard(context),
          ],
        ),
      ),
    );
  }

  Widget sectionCard(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 10;
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BalanceSheet()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.link,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Balance Sheet")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance Sheet",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Status of Your balance sheet"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TradingAccount()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade900,
                        ),
                        child: Container(
                          width: 80,
                          height: 70,
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
                                        offset: Offset(5, 5))
                                  ]),
                              height: 80,
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Trading/Ac")
                                ],
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Container(
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trading Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("Get The Status of your Trading Account"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
