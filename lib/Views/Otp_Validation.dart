import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Views/Theme/colors.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class Otp_Validation extends StatefulWidget {
  const Otp_Validation({Key key}) : super(key: key);

  @override
  _Otp_ValidationState createState() => _Otp_ValidationState();
}

class _Otp_ValidationState extends State<Otp_Validation> {
  String _code = '';

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
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Verification',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInDown(
                            delay: const Duration(milliseconds: 500),
                            duration: const Duration(milliseconds: 500),
                            child: const Text(
                              "Please enter the 4 digit code sent to +93 706-399-999",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Mobile OTP",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 500),
                            child: VerificationCode(
                              length: 4,
                              textStyle: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                              underlineColor: Colors.black,
                              keyboardType: TextInputType.number,
                              underlineUnfocusedColor: Colors.black,
                              onCompleted: (value) {
                                setState(() {
                                  _code = value;
                                });
                              },
                              onEditing: (value) {},
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Resend OTP ",
                            style: TextStyle(
                              color: KColors.primary,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: GFButton(
                              color: Colors.blue.shade900,
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: Column(
                                          children: const [
                                            Icon(
                                              Icons.check_circle_outlined,
                                              color: Colors.green,
                                              size: 60,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Your details are sended to UIDAI, Please check status later",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1.5,
                                                fontSize: 12.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          GFButton(
                                            onPressed: () {},
                                            color: Colors.blue.shade900,
                                            text: "OK",
                                          ),
                                        ],
                                      )),
                              text: "Validate",
                            ),
                          )
                        ],
                      ),
                    ),
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
