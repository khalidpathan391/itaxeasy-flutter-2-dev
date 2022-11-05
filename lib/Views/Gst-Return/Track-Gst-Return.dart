import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/gst-return.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Gst-Return/Track-Gst_Return_Response.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import '../Theme/colors.dart';

class TrackGST extends StatefulWidget {
  const TrackGST({Key key}) : super(key: key);

  @override
  _TrackGSTState createState() => _TrackGSTState();
}

class _TrackGSTState extends State<TrackGST> {
  ApiServices apiServices = ApiServices();
  FlutterSecureStorage storage = const FlutterSecureStorage();

  bool isLoading = false;
  TextEditingController gstin = TextEditingController();
  TextEditingController year = TextEditingController();

  String dropdownValue = "FY 2021-22";

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
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
                                    'Track GST Return',
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: KColors.headline),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset('assets/images/accent.png',
                                    width: 99,
                                    height: 4,
                                    color: Colors.blue.shade900),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Financial Year",
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
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                        items: <String>[
                                          'FY 2018-19',
                                          'FY 2019-20',
                                          'FY 2020-21',
                                          'FY 2021-22'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
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
                                      "GSTIN Number",
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
                                    ],
                                    maxLength: 15,

                                    textCapitalization:
                                        TextCapitalization.characters,

                                    controller: gstin,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Gstin',
                                      counterText: "",
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
                                  if (gstin.text.isEmpty) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content:
                                          Text("Please Fill The Given Field"),
                                    ));
                                  }
                                  if (gstin.text.length < 15 ||
                                      gstin.text.length > 15) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                          "GSTIN Number Should be 15 Digits"),
                                    ));
                                  } else {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    final insert = GstReturn(
                                        financialYear: dropdownValue,
                                        gstin: gstin.text);
                                    final result =
                                        await apiServices.gstReturn(insert);
                                    setState(() {
                                      isLoading = false;
                                    });
                                    if (result.resposeCode == 200) {
                                      print(
                                          "------------SUCCESS--------------");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ListTry(
                                                    apiResponse2: result,
                                                  )));
                                    } else {
                                      final message = await storage.read(
                                          key: "returnGSTIN");
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(message),
                                      ));
                                    }
                                  }
                                },
                                text: "Search"),
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
