import 'package:flutter/material.dart';

import '../Calculator/ifsc_calcii/theme.dart';
import 'package:getwidget/getwidget.dart';

class GetNewEPan extends StatefulWidget {
  const GetNewEPan({Key key}) : super(key: key);

  @override
  _GetNewEPanState createState() => _GetNewEPanState();
}

class _GetNewEPanState extends State<GetNewEPan> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
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
                          'Get New e-PAN',
                          style: heading2.copyWith(color: textBlack),
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Remember:",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15.5,
                          ),
                        ),
                        const Text(
                          "It’s an Aadhaar e-KYC based process and allotment of PAN is free of cost. A pdf file of PAN will be generated and issued to the applicant. Help?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Enter your 12 digit Aadhaar number for PAN allotment.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Aadhaar Number',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFCheckbox(
                              size: 25,
                              activeBgColor: GFColors.INFO,
                              type: GFCheckboxType.circle,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                              value: isChecked,
                              inactiveIcon: null,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "I confirm that",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "1. I have never been allotted a Permanent Account Number (PAN)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "2. My active mobile number is linked with Aadhaar",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "3. My complete date of birth (DD-MM-YYYY) is available on Aadhaar card",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "4. I am not minor as on application date of Permanent Account Number (PAN)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GFButton(
                              onPressed: () {},
                              color: Colors.blue.shade900,
                              text: "Continue",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
