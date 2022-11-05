import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Services/api_services.dart';

import 'Calculator/ifsc_calcii/theme.dart';
import 'company_view.dart';

class CompanySearch extends StatefulWidget {
  const CompanySearch({Key key}) : super(key: key);

  @override
  _CompanySearchState createState() => _CompanySearchState();
}

class _CompanySearchState extends State<CompanySearch> {
  ApiServices apiServices = ApiServices();
  TextEditingController cinCount = TextEditingController();
  TextEditingController tanCount = TextEditingController();

  bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              'Company Search',
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
                    height: 20,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    child: Form(
                      child: Column(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Register your company name",
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
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => CompanyView()));
                                  },
                                  text: "Find Now"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "You can search the company by filling any field given below",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 14.5,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "CIN ",
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
                              controller: cinCount,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[0-9a-zA-Z]")),
                                LengthLimitingTextInputFormatter(21),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Cin Number',
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
                                "TAN Number",
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
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'TAN Number ',
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
                                "PAN Number",
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
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'PAN Number ',
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
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'GSTN Number ',
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
                            if (cinCount.text.isEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Please Fill CIN Number"),
                              ));
                            }
                            if (cinCount.text.length < 21 ||
                                cinCount.text.length > 21) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("PAN Number Should be 21 Digits"),
                              ));
                            } else {
                              setState(() {
                                isLoading = true;
                              });
                              final insert = cinCount.text;
                              final result = await apiServices.mca(insert);
                              setState(() {
                                isLoading = false;
                              });
                              if (result.resposeCode == 200) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CompanyView(
                                              data: cinCount.text,
                                            )));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                      "Something Went Wrong, Check Your details"),
                                ));
                              }
                            }
                          },
                          text: "Find Now"),
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
