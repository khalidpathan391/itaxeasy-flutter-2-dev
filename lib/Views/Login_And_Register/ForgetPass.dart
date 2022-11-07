import 'package:animate_do/animate_do.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/Forget.dart';
import 'package:gst_app/Models/login.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/navbar.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import 'package:gst_app/Views/GSTIN_SECTION/SignInAndRegister/OTP.dart';
import 'package:gst_app/Views/Login_And_Register/ForgetPass.dart';
import 'package:gst_app/Views/Login_And_Register/register_page.dart';
import 'package:gst_app/Views/Login_And_Register/sentOtp.dart';
import 'theme.dart';
import 'package:getwidget/getwidget.dart';

class EmailVerify extends StatefulWidget {
  const EmailVerify({Key key}) : super(key: key);

  @override
  _EmailVerifyState createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  void togglePassword() {
    setState(() {});
  }

  int isActive = 1;
  TextEditingController emailCont = TextEditingController();

  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
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
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Email Verification',
                                      style:
                                          heading2.copyWith(color: textBlack),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 10, bottom: 20, right: 10),
                            child: Column(
                              children: [
                                FadeInDown(
                                  delay: const Duration(milliseconds: 600),
                                  duration: const Duration(milliseconds: 600),
                                  child: Form(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: textWhiteGrey,
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: TextFormField(
                                            inputFormatters: [
                                              FilteringTextInputFormatter.deny(
                                                  RegExp('[ ]')),
                                            ],
                                            controller: emailCont,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your email',
                                              hintStyle: heading6.copyWith(
                                                  color: textGrey),
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
                                const SizedBox(
                                  height: 32,
                                ),
                                FadeInRight(
                                  delay: const Duration(milliseconds: 500),
                                  duration: const Duration(milliseconds: 500),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        elevation: 0,
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade900,
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              onTap: () async {
                                                FocusScope.of(context)
                                                    .requestFocus(FocusNode());
                                                if (emailCont.text.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          const SnackBar(
                                                    content: Text(
                                                        "Please Fill The Given Field"),
                                                  ));
                                                }
                                                if (!RegExp(
                                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                    .hasMatch(emailCont.text)) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          const SnackBar(
                                                    content: Text(
                                                        "Email Id should be valid"),
                                                  ));
                                                } else {
                                                  setState(() {
                                                    isLoading = true;
                                                  });
                                                  Map prm = {
                                                    "email": emailCont.text,
                                                    "subject":
                                                        "Otp verification",
                                                    "text": "your otp is 123456"
                                                  };
                                                  final result =
                                                      await apiServices
                                                          .forget(prm);
                                                  setState(() {
                                                    isLoading = false;
                                                  });
                                                  // const title = "Done";
                                                  // final text = result.error ? (result.errorMessage ??
                                                  //     "An error occurred")
                                                  //     : "Your are registered";
                                                  if (result.resposeCode ==
                                                      200) {
                                                    Get.to(OTP_Verify(
                                                      otp: "123456",
                                                    ));
                                                    // Navigator.pushAndRemoveUntil(
                                                    //     context,
                                                    //     MaterialPageRoute(
                                                    //         builder: (context) =>
                                                    //             const OTP_Verify(
                                                    //                 otp:
                                                    //                     "123456")),
                                                    //     (route) => false);
                                                  } else if (result
                                                          .resposeCode ==
                                                      401) {
                                                    AwesomeDialog(
                                                      context: context,
                                                      animType: AnimType.SCALE,
                                                      dialogType:
                                                          DialogType.ERROR,
                                                      body: Column(
                                                        children: [
                                                          Text(
                                                            "UnAuthorized User",
                                                            style:
                                                                const TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              letterSpacing:
                                                                  1.5,
                                                              fontSize: 16.5,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      btnOkColor: Colors.red,
                                                      btnOkOnPress: () {},
                                                    ).show();
                                                  } else {
                                                    AwesomeDialog(
                                                      context: context,
                                                      animType: AnimType.SCALE,
                                                      dialogType:
                                                          DialogType.ERROR,
                                                      body: Column(
                                                        children: [
                                                          Text(
                                                            "An error occurred",
                                                            style:
                                                                const TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              letterSpacing:
                                                                  1.5,
                                                              fontSize: 16.5,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      btnOkColor: Colors.red,
                                                      btnOkOnPress: () {},
                                                    ).show();
                                                  }
                                                }
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                              child: Center(
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Text(
                                                    "Send OTP",
                                                    style: heading5.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),

                          // FadeInLeft(
                          //   delay: const Duration(milliseconds: 500),
                          //   duration: const Duration(milliseconds: 500),
                          //   child: CustomPrimaryButton(
                          //     buttonColor: const Color(0xfffbfbfb),
                          //     textValue: 'Login with Google',
                          //     textColor: textBlack,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 50,
                          // ),
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
