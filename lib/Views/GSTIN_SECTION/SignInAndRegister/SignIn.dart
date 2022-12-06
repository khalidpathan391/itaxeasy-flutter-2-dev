import 'package:animate_do/animate_do.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/login.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/navbar.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import 'package:gst_app/Views/Login_And_Register/ForgetPass.dart';
import 'package:gst_app/Views/Login_And_Register/register_page.dart';

import 'package:getwidget/getwidget.dart';

import '../../Calculator/ifsc_calcii/Theme.dart';
import 'OTP.dart';

class GstLogin extends StatefulWidget {
  const GstLogin({Key key}) : super(key: key);

  @override
  _GstLoginState createState() => _GstLoginState();
}

class _GstLoginState extends State<GstLogin> {
  bool passwordVisible = false;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  int isActive = 1;
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
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
              appBar: AppBar(
                backgroundColor: Colors.blue.shade900,
                elevation: 0,
                toolbarHeight: 200,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(200)),
                ),
                title: Text(
                  'Login to your GSTIN\naccount',
                  style: GoogleFonts.dmSans(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              // backgroundColor: ,
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
                                          // decoration: BoxDecoration(
                                          //   color: textWhiteGrey,
                                          //   borderRadius:
                                          //       BorderRadius.circular(14.0),
                                          // ),
                                          child: TextFormField(
                                            inputFormatters: [
                                              FilteringTextInputFormatter.deny(
                                                  RegExp('[ ]')),
                                            ],
                                            controller: emailCont,
                                            decoration: InputDecoration(
                                              hintText: 'Username',
                                              hintStyle: heading6.copyWith(
                                                  color: textGrey),
                                              // border: const OutlineInputBorder(
                                              //   borderSide: BorderSide.none,
                                              // ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 32,
                                        ),
                                        Container(
                                          // decoration: BoxDecoration(
                                          //   color: textWhiteGrey,
                                          //   borderRadius:
                                          //       BorderRadius.circular(14.0),
                                          // ),
                                          child: TextFormField(
                                            controller: passwordCont,
                                            obscureText: !passwordVisible,
                                            decoration: InputDecoration(
                                              hintText: 'Password',
                                              hintStyle: heading6.copyWith(
                                                  color: textGrey),
                                              suffixIcon: IconButton(
                                                color: textGrey,
                                                splashRadius: 1,
                                                icon: Icon(passwordVisible
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined),
                                                onPressed: togglePassword,
                                              ),
                                              // border: const OutlineInputBorder(
                                              //   borderSide: BorderSide.none,
                                              // ),
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
                                                if (emailCont.text.isEmpty ||
                                                    passwordCont.text.isEmpty) {
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
                                                  final insert = Login(
                                                      email: emailCont.text,
                                                      password:
                                                          passwordCont.text);
                                                  final result =
                                                      await apiServices
                                                          .login(insert);
                                                  setState(() {
                                                    isLoading = false;
                                                  });
                                                  // const title = "Done";
                                                  // final text = result.error ? (result.errorMessage ??
                                                  //     "An error occurred")
                                                  //     : "Your are registered";
                                                  if (result.resposeCode ==
                                                      200) {
                                                    Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Navbar()),
                                                        (route) => false);
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
                                                child: Text(
                                                  "Log In",
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
                                const SizedBox(
                                  height: 24,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account? ",
                                      style:
                                          regular16pt.copyWith(color: textGrey),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const OtpPage()),
                                            (route) => false);
                                      },
                                      child: Text(
                                        'Register',
                                        style: regular16pt.copyWith(
                                            color: Colors.blue.shade900),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GFButton(
                                    color: Colors.blue.shade900,
                                    text: "More",
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      showModalBottomSheet(
                                        enableDrag: true,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20),
                                          ),
                                        ),
                                        context: context,
                                        builder: (context) {
                                          return Wrap(
                                            children: [
                                              ListTile(
                                                leading: Icon(Icons
                                                    .file_download_outlined),
                                                title: Text('Download'),
                                              ),
                                              ListTile(
                                                leading: Icon(
                                                    Icons.push_pin_outlined),
                                                title: Text('Save'),
                                              ),
                                              ListTile(
                                                leading:
                                                    Icon(Icons.print_outlined),
                                                title: Text('Print'),
                                              ),
                                              ListTile(
                                                leading: Icon(
                                                    Icons.file_upload_outlined),
                                                title: Text('Upload'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                )
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
