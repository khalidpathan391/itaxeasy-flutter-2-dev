import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Models/link-adhaar-status.dart';
import 'package:gst_app/Services/api_services.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class LinkAadhaarStatus extends StatefulWidget {
  const LinkAadhaarStatus({Key key}) : super(key: key);

  @override
  _LinkAadhaarStatusState createState() => _LinkAadhaarStatusState();
}

class _LinkAadhaarStatusState extends State<LinkAadhaarStatus> {
  TextEditingController panCont = TextEditingController();
  TextEditingController adhaarCont = TextEditingController();

  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<PanAdhaarStatus> _apiResponse;

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
                                  'Link Aadhaar Status',
                                  style: heading2.copyWith(color: textBlack),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "(Enter the following details)",
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
                        height: 48,
                      ),
                      Form(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "PAN *",
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
                                controller: panCont,
                                decoration: InputDecoration(
                                  hintText: 'Pan Number',
                                  hintStyle: heading6.copyWith(color: textGrey),
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
                                  "Aadhaar Number *",
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                inputFormatters: [
                                  // FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]")),
                                  LengthLimitingTextInputFormatter(12),
                                ],
                                controller: adhaarCont,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Aadhaar Number',
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
                                if (panCont.text.isEmpty ||
                                    adhaarCont.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please fill the given fields"),
                                  ));
                                }
                                if (panCont.text.length < 10) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("PAN Number Should be 10 Digits"),
                                  ));
                                }
                                if (adhaarCont.text.length < 12) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "Aadhaar Number Should be 21 Digits"),
                                  ));
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  final result =
                                      await apiServices.linkAdhaarStatus(
                                          panCont.text, adhaarCont.text);
                                  setState(() {
                                    isLoading = false;
                                  });
                                  if (result.resposeCode == 200) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: Text(result.data.status),
                                              content:
                                                  Text(result.data.company),
                                            ));

                                    print(
                                        "------------------SUCCESS-----------------");
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                          "Something Went Wrong, Please check Your Details"),
                                    ));
                                  }
                                }

                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                              },
                              text: "View Link Aadhaar Status"),
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
