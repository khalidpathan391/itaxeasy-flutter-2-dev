import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import '../../Calculator/ifsc_calcii/Theme.dart';
import '../../Components/constants.dart';
import '../../Tables/widget/scrollable_widget.dart';

class Gstr4a extends StatefulWidget {
  const Gstr4a({Key key}) : super(key: key);

  @override
  State<Gstr4a> createState() => _Gstr4aState();
}

class _Gstr4aState extends State<Gstr4a> {
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
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: Text(
                                "GSTR-4A",
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Composition",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: Text(
                                "CMP-08",
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
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomCheckbox(),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "File Nil GST CMP-08",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "3.Summary of self-assessed liability(Net of advances,credit and debit notes and any other"
                          "adjustment  due to amendments etc.)",
                          style: GoogleFonts.dmSans(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ScrollableWidget(
                        child: Card(
                          child: Column(
                            children: [
                              DataTable(
                                columns: [
                                  DataColumn(
                                      label: Text('Sr.no',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Desc',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Val',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Integrated Tax',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Central Tax',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('State/UT Tax',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('CESS ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text('')),
                                    DataCell(Text('')),
                                    DataCell(Text('')),
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomCheckbox(),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "File GSTR",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Name",
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
                            decoration: InputDecoration(
                              hintText: 'Name:',
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Place",
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
                              hintText: 'Place:',
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
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
