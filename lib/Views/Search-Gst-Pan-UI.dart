import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Theme/colors.dart';

import '../Models/SearchbyPan.dart';
import 'Calculator/ifsc_calcii/theme.dart';

class GSTByPan extends StatefulWidget {
  @override
  _GSTByPanState createState() => _GSTByPanState();
}

class _GSTByPanState extends State<GSTByPan> {
  TextEditingController pan = TextEditingController();
  TextEditingController stateCode = TextEditingController();
  ApiServices apiServices = ApiServices();

  bool isLoading = false;
  bool visible = false;

  ApiResponse<SearchGstByPan> apiResponse;

  // Map<String,dynamic> obj;
  String regex = "[A-Z]{5}[0-9]{4}[A-Z]{1}";

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
                  child: FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Search Taxpayer by Pan',
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: KColors.headline),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/accent.png',
                                    width: 99,
                                    height: 4,
                                    color: Colors.blue.shade900,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Form(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Pan of Taxpayer",
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
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp("[0-9a-zA-Z]")),
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    controller: pan,
                                    decoration: InputDecoration(
                                      hintText: 'Enter PAN of the Taxpayer',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Gst State Code",
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
                                    keyboardType: TextInputType.number,
                                    controller: stateCode,
                                    decoration: InputDecoration(
                                      hintText: 'state code',
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
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        FadeInRight(
                          delay: const Duration(milliseconds: 500),
                          duration: const Duration(milliseconds: 500),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: GFButton(
                                color: Colors.blue.shade900,
                                onPressed: () async {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  if (stateCode.text.isEmpty) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Please Fill State Code"),
                                    ));
                                  }
                                  if (pan.text.isEmpty) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Please Fill Pan Number"),
                                    ));
                                  }
                                  if (pan.text.length < 10 ||
                                      pan.text.length > 10) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                          "PAN Number Should be 10 Digits"),
                                    ));
                                  } else {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    // final insert = .text;
                                    apiResponse =
                                        await apiServices.searchGstByPan(
                                            pan.text, stateCode.text);
                                    setState(() {
                                      isLoading = false;
                                    });
                                    if (apiResponse.data.data.isNotEmpty) {
                                      setState(() {
                                        visible = true;
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>testFile(gst: gstinCont.text,)));
                                      });
                                      print(
                                          "---------------SUCCESS--------------");
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("Invalid Details"),
                                      ));
                                    }
                                  }
                                },
                                text: "Find Now"),
                          ),
                        ),
                        Visibility(
                          visible: visible,
                          child: Column(children: [
                            ListTry(context),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }

  Widget ListTry(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: Column(
                  children: apiResponse.data.data.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Legal Name of Business",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.lgnm,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Trade Name",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.tradeNam,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Effective Date of registration",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.rgdt,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Constitution of Business",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.ctb,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "GSTIN / UIN Status",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.sts,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Taxpayer Type ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.dty,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Administrative Office",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.data.ctj,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      ("JURISDICTION - CENTER"),
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      ("Commissionerate -"),
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 15.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Principal Place of Business",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Wrap(children: [
                      Text(
                        e.data.pradr.addr.bno +
                            "," +
                            e.data.pradr.addr.flno +
                            "," +
                            e.data.pradr.addr.bnm +
                            "," +
                            e.data.pradr.addr.st +
                            "," +
                            e.data.pradr.addr.loc +
                            "," +
                            e.data.pradr.addr.city +
                            "," +
                            e.data.pradr.addr.dst +
                            "," +
                            e.data.pradr.addr.stcd +
                            "," +
                            e.data.pradr.addr.pncd,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 15.5,
                        ),
                      ),
                    ]),
                  ],
                );
              }).toList()),
            ),
          );
        });
  }
}
