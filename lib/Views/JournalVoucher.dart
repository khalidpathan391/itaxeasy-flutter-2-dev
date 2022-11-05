import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'Calculator/ifsc_calcii/Theme.dart';
import 'package:getwidget/getwidget.dart';

class JournalVouchers extends StatefulWidget {
  const JournalVouchers({Key key}) : super(key: key);

  @override
  State<JournalVouchers> createState() => _JournalVoucherssState();
}

class _JournalVoucherssState extends State<JournalVouchers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
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
                            'Journal Vouchers',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "(Here is your Journal voucher)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.0,
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
                  height: 30,
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
                          text: "Print"),
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
                          text: "Export"),
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
                          text: "Upload"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Voucher no",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: TextFormField(
                                      // controller: contactCont,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Voucher no:',
                                        hintStyle:
                                            heading6.copyWith(color: textGrey),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: TextFormField(
                                      // controller: contactCont,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Date:',
                                        hintStyle:
                                            heading6.copyWith(color: textGrey),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Party Name",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            // controller: contactCont,
                            // keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Party Name:',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Cash/Bank",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: TextFormField(
                                      // controller: contactCont,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Cash/Bank:',
                                        hintStyle:
                                            heading6.copyWith(color: textGrey),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Amount",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: TextFormField(
                                      // controller: contactCont,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Amount:',
                                        hintStyle:
                                            heading6.copyWith(color: textGrey),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     Expanded(
                        //       child: Column(
                        //         children: [],
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: Column(
                        //         children: [
                        //           const Padding(
                        //             padding: EdgeInsets.only(
                        //                 left: 10, bottom: 10, top: 10),
                        //             child: Align(
                        //               alignment: Alignment.centerLeft,
                        //               child: Text(
                        //                 "Total",
                        //                 style: TextStyle(
                        //                   fontFamily: "Poppins",
                        //                   fontWeight: FontWeight.w500,
                        //                   letterSpacing: 1.5,
                        //                   fontSize: 17.5,
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //           Container(
                        //             decoration: BoxDecoration(
                        //               color: textWhiteGrey,
                        //               borderRadius: BorderRadius.circular(14.0),
                        //             ),
                        //             child: TextFormField(
                        //               // controller: contactCont,
                        //               keyboardType: TextInputType.number,
                        //               decoration: InputDecoration(
                        //                 hintText: 'Total:',
                        //                 hintStyle: heading6.copyWith(color: textGrey),
                        //                 border: const OutlineInputBorder(
                        //                   borderSide: BorderSide.none,
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //
                        //   ],
                        // ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Narration",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            // controller: contactCont,
                            // keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Narration:',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                          text: "Accept"),
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
                          text: "Delete"),
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
                          text: "Cancel"),
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
}
