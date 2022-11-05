import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

import 'Calculator/ifsc_calcii/theme.dart';
import 'Otp_Validation.dart';

class LinkAadhaar extends StatefulWidget {
  const LinkAadhaar({Key key}) : super(key: key);

  @override
  _LinkAadhaarState createState() => _LinkAadhaarState();
}

class _LinkAadhaarState extends State<LinkAadhaar> {
  bool isChecked = false;

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
                              'Link Aadhaar',
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
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
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
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Name as per Aadhaar *",
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
                                hintText: 'Name as per Aadhaar',
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
                                "Mobile Number *",
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
                                hintText: 'Mobile Number',
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
                              Expanded(
                                child: const Text(
                                    "I have only year of birth in Aadhaar card",
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 13.5,
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
                              Expanded(
                                child: const Text(
                                    "I agree to validate my Aadhaar details",
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 13.5,
                                    )),
                              ),
                            ],
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Otp_Validation()));
                          },
                          text: "Link Aadhaar"),
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
