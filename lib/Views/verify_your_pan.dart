import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Models/get-pan-details-byPanNo.dart';
import 'package:gst_app/Services/api_services.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class VerifyYourPan extends StatefulWidget {
  const VerifyYourPan({Key key}) : super(key: key);

  @override
  _VerifyYourPanState createState() => _VerifyYourPanState();
}

class _VerifyYourPanState extends State<VerifyYourPan> {
  TextEditingController panCont = TextEditingController();
  ApiServices apiServices = ApiServices();

  bool isLoading = false;
  bool visible = false;

  ApiResponse<PanDetails> apiResponse;

  getDetails() async {
    setState(() {
      isLoading = true;
    });
    apiResponse = await apiServices.verifyPan(panCont.text);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: isLoading
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Verify Your Pan',
                                      style:
                                          heading2.copyWith(color: textBlack),
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
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Pan Number",
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
                                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp("[0-9a-zA-Z]")),
                                        LengthLimitingTextInputFormatter(10),
                                      ],
                                      textCapitalization:
                                          TextCapitalization.characters,
                                      controller: panCont,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Pan Number',
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
                                    if (panCont.text.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("Please Fill Pan Number"),
                                      ));
                                    }
                                    if (panCont.text.length < 10 ||
                                        panCont.text.length > 10) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            "PAN Number Should be 10 Digits"),
                                      ));
                                    } else {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      final insert = panCont.text;
                                      final result =
                                          await apiServices.verifyPan(insert);
                                      setState(() {
                                        isLoading = false;
                                      });
                                      if (result.resposeCode == 200) {
                                        setState(() {
                                          getDetails();
                                          visible = true;
                                        });
                                        print(
                                            "---------------SUCCESS--------------");
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                              "Something Went Wrong, Check Your Details"),
                                        ));
                                      }
                                    }
                                  },
                                  text: "Find Now"),
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
                                            bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Pan Number",
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
                                              apiResponse.data.company.pan,
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
                                              "Full Name",
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
                                              apiResponse.data.company.fullName,
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
                                              "Activity",
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
                                              apiResponse.data.company.status,
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
                                              "Aadhaar Seeding Status ",
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
                                              apiResponse.data.company
                                                  .aadhaarSeedingStatus,
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
                                              "Category",
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
                                              apiResponse.data.company.category,
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
                                              "Last Updated",
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
                                                  .data.company.lastUpdated,
                                              style: const TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1.5,
                                                fontSize: 15.5,
                                              ),
                                            ),
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
            ),
    );
  }
}
