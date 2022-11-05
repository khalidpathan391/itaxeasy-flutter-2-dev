import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import '../../Calculator/ifsc_calcii/Theme.dart';
import '../../Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import '../../Components/constants.dart';

class SalePurchaseADD extends StatefulWidget {
  const SalePurchaseADD({Key key}) : super(key: key);

  @override
  State<SalePurchaseADD> createState() => _SalePurchaseADDState();
}

class _SalePurchaseADDState extends State<SalePurchaseADD> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue6 = "January";

    bool isChecked = false;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
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
                          'Return Dashboard',
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
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/Documents.svg",
                              color: Colors.blue.shade900,
                            ),
                          ),
                          const Text(
                            "Sale or Purchase",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 14.5,
                            ),
                          ),
                          // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          "GSTR-3B",
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
                                onPressed: () {},
                                text: "Prepare Online"),
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
                                text: "Prepare Offline"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   padding:
              //       EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.green.shade100,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "3.2 of the supplies shown in 3.1 (a), details of inter-state supplies made to unregistered persons,composition taxable person and UIN holders",
              //       style: GoogleFonts.dmSans(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   padding:
              //       EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.blue.shade100,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "Supplies made to has been processed successfully",
              //       style: GoogleFonts.dmSans(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                color: Colors.blue.shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    Text("Place of\n(state/UT)",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                    Text("Total Taxable value",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                    Text("Amount of\nintegrated tax",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                color: Colors.blue..shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue6,
                            elevation: 16,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue6 = newValue;
                              });
                            },
                            items: <String>[
                              'January',
                              'February',
                              'March',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("000.0",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Expanded(
                      child: Text("00.0",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeInRight(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 500),
                    child: GFButton(
                        color: Colors.red,
                        padding: const EdgeInsets.all(10),
                        shape: GFButtonShape.pills,
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                        },
                        text: "Remove"),
                  ),
                  SizedBox(
                    width: 20,
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
                        text: "ADD"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // Container(
              //   padding:
              //   EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.green.shade100,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text("Last save request has been processed successfully",style: GoogleFonts.dmSans(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   padding:
              //   EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.blue.shade100,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "Supplies made to Unregistration Persons",
              //       style: GoogleFonts.dmSans(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   padding:
              //   EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.blue.shade100,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "Supplies made to Composition taxable Persons",
              //       style: GoogleFonts.dmSans(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                color: Colors.blue.shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    Text("Place of\n(state/UT)",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                    Text("Total Taxable value",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                    Text("Amount of\nintegrated tax",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                color: Colors.blue.shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue6,
                            elevation: 16,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue6 = newValue;
                              });
                            },
                            items: <String>[
                              'January',
                              'February',
                              'March',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("000.0",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Expanded(
                      child: Text("00.0",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeInRight(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 500),
                    child: GFButton(
                        color: Colors.red,
                        padding: const EdgeInsets.all(10),
                        shape: GFButtonShape.pills,
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                        },
                        text: "Remove"),
                  ),
                  SizedBox(
                    width: 20,
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
                        text: "ADD"),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                        text: "Cancle"),
                  ),
                  SizedBox(
                    width: 20,
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
                        text: "Confirm"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
