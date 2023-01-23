import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Calculator/ifsc_calcii/Theme.dart';
import 'Tables/widget/scrollable_widget.dart';

class BalanceSheet extends StatefulWidget {
  const BalanceSheet({Key key}) : super(key: key);

  @override
  State<BalanceSheet> createState() => _BalanceSheetState();
}

class _BalanceSheetState extends State<BalanceSheet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return SafeArea(
      child: Scaffold(
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
                            'Balance Sheet',
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Balance Sheet",
                  style: GoogleFonts.recursive(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Legal name of business profile",
                  style: GoogleFonts.recursive(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Financial Year 2022-23",
                  style: GoogleFonts.recursive(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // ScrollableWidget(
                //   child: Card(
                //     child: Column(
                //       children: [
                //         DataTable(
                //           columns: [
                //             DataColumn(
                //                 label: Text('Particular',
                //                     style: TextStyle(
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.bold))),
                //             DataColumn(
                //                 label: Text('Amount',
                //                     style: TextStyle(
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.bold))),
                //             DataColumn(
                //                 label: Text('Particular',
                //                     style: TextStyle(
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.bold))),
                //             DataColumn(
                //                 label: Text('Amount',
                //                     style: TextStyle(
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.bold))),
                //           ],
                //           rows: [
                //             DataRow(cells: [
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //             ]),
                //             DataRow(cells: [
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //               DataCell(Text('')),
                //             ]),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Column(children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Particular",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                            )),
                        Text("Amount",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                            )),
                        Text("Particular",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                            )),
                        Text("Amount",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    // color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ratio',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
