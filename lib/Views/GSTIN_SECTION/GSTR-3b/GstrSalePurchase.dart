import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';

import '../../Calculator/ifsc_calcii/Theme.dart';
import '../../Components/constants.dart';
import '../../Tables/widget/scrollable_widget.dart';

class SalePurchase extends StatefulWidget {
  const SalePurchase({Key key}) : super(key: key);

  @override
  State<SalePurchase> createState() => _SalePurchaseState();
}

class _SalePurchaseState extends State<SalePurchase> {
  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 20,
              ),
              ScrollableWidget(
                child: Card(
                  child: Column(
                    children: [
                      DataTable(
                        columns: [
                          DataColumn(
                              label: Text('Name of supplies',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Total Taxable value',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Integrated tax',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Central Tax',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('State/UT Tax',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('CESS',
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
                          ]),
                          DataRow(cells: [
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
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CustomCheckbox(),
                  )),
              SizedBox(
                height: 10,
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
                        text: "Save"),
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
                        text: "Pay Tax"),
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
                        text: "File ITR"),
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
