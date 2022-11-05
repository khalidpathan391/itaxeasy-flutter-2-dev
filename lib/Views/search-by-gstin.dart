import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Models/search-gst-number.dart';
import 'package:gst_app/Services/api_services.dart';

import 'Calculator/ifsc_calcii/theme.dart';
import 'Theme/colors.dart';

class GST extends StatefulWidget {
  @override
  _GSTState createState() => _GSTState();
}

class _GSTState extends State<GST> {
  TextEditingController gstinCont = TextEditingController();
  ApiServices apiServices = ApiServices();

  bool isLoading = false;
  bool visible = false;

  FlutterSecureStorage storage = const FlutterSecureStorage();

  ApiResponse<SearchGstNumber> apiResponse;

  getDetails() async {
    setState(() {
      isLoading = true;
    });
    apiResponse = await apiServices.searchGstNumber(gstinCont.text);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(
              strokeWidth: 1.0,
            ),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    'Search Taxpayer',
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
                        const SizedBox(
                          height: 48,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Form(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "GSTIN of the Taxpayer",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: KColors.headline),
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
                                    ],
                                    maxLength: 15,
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    controller: gstinCont,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      hintText: 'Enter GSTIN of the Taxpayer',
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
                                if (gstinCont.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please Fill The Given Field"),
                                  ));
                                }
                                if (gstinCont.text.length < 15 ||
                                    gstinCont.text.length > 15) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "GSTIN Number Should be 15 Digits"),
                                  ));
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  final insert = gstinCont.text;
                                  final result =
                                      await apiServices.searchGstNumber(insert);
                                  setState(() {
                                    isLoading = false;
                                  });
                                  if (result.resposeCode == 200) {
                                    setState(() {
                                      getDetails();
                                      visible = true;
                                    });
                                  } else {
                                    final message =
                                        await storage.read(key: "taxByGSTIN");
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(message),
                                    ));
                                  }
                                }
                              },
                              text: "Find Now",
                            ),
                          ),
                        ),
                        Visibility(
                          visible: visible,
                          child: SizedBox(
                            width: double.infinity,
                            child: StreamBuilder<Object>(
                                stream: null,
                                builder: (context, snapshot) {
                                  return Card(
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            apiResponse.data.results.data.lgnm,
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
                                            apiResponse
                                                .data.results.data.tradeNam,
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
                                            apiResponse.data.results.data.rgdt,
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
                                            apiResponse.data.results.data.ctb,
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
                                            apiResponse.data.results.data.sts,
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
                                            apiResponse.data.results.data.dty,
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
                                          Text(
                                            apiResponse.data.results.data.nba
                                                .toString(),
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
                                              apiResponse.data.results.data.pradr.addr.bno +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.flno
                                                      .toString() +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.bnm +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.st +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.loc +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.dst +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.stcd
                                                      .toString() +
                                                  apiResponse.data.results.data
                                                      .pradr.addr.pncd,
                                              style: const TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1.5,
                                                fontSize: 15.5,
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
