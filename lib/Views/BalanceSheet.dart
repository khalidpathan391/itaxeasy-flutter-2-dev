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
                Text(
                  "Balance Sheet",
                  style: GoogleFonts.recursive(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Legal name of business profile",
                  style: GoogleFonts.recursive(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Financial Year 2021-22",
                  style: GoogleFonts.recursive(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ScrollableWidget(
                  child: Card(
                    child: Column(
                      children: [
                        DataTable(
                          columns: [
                            DataColumn(
                                label: Text('Particular',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Amount',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Particular',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Amount',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: textWhiteGrey,
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
