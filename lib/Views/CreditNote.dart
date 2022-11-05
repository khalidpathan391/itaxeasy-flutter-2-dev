import 'package:flutter/material.dart';

import 'Calculator/ifsc_calcii/Theme.dart';

class CreditNote extends StatefulWidget {
  const CreditNote({Key key}) : super(key: key);

  @override
  State<CreditNote> createState() => _CreditNoteState();
}

class _CreditNoteState extends State<CreditNote> {
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
                            'Credit Note',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "(Here is your Credit Note)",
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
                                        "GSTIN No",
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
                                        hintText: 'Gstin no:',
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
                              "Name of the party",
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

                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "GSTIN No of the party",
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
                              hintText: 'GSTIN No of the party:',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Sales Return",
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
                              hintText: 'Sales Return:',
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
                                        "IGST",
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
                                        hintText: 'IGST:',
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
                                        "CGST",
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
                                        hintText: 'CGST:',
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
                                        "SGST",
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
                                        hintText: 'SGST:',
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
                              "Price",
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
                              hintText: 'Price:',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),

                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "GST Details",
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
                              hintText: 'GST Details:',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
