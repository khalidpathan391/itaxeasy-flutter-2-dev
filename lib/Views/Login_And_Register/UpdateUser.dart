import 'dart:convert';
import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Models/register.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Login_And_Register/login_page.dart';

import '../../Models/LoginUser.dart';
import 'Theme.dart';

class UpdateUser extends StatefulWidget {
  @override
  _UpdateUserState createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  FlutterSecureStorage storage = const FlutterSecureStorage();
  bool passwordVisible = false;
  bool passwordConfrimationVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  // int isActive = 1;
  bool isLoading = false;
  bool isChecked = false;

  ApiServices apiServices = ApiServices();
  TextEditingController nameCount = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController emailCount = TextEditingController();
  // TextEditingController passwordCount = TextEditingController();
  TextEditingController phoneCount = TextEditingController();
  TextEditingController pinCode = TextEditingController();
  Data user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getprofileLocal();
  }

  getprofileLocal() async {
    String data = await storage.read(key: "user");
    user = Data.fromJson(json.decode(data));
    log(user.toJson().toString());
    setState(() {
      nameCount.text = user.firstName;
      lastName.text = user.lastName;
      emailCount.text = user.email;
      phoneCount.text = user.phone;
      pinCode.text = user.pincode;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterSecureStorage storage = const FlutterSecureStorage();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                reverse: true,
                child: FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 24, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Update Profile ',
                          style: GoogleFonts.dmSans(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          color: Colors.blue.shade900,
                          width: 99,
                          height: 4,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Column(
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
                                        controller: nameCount,
                                        decoration: InputDecoration(
                                          hintText: 'First Name',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        controller: lastName,
                                        decoration: InputDecoration(
                                          hintText: 'Last Name',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10),
                                        ],
                                        controller: phoneCount,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          hintText: 'Mobile No',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        controller: emailCount,
                                        decoration: InputDecoration(
                                          hintText: 'Email Id',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //     color: textWhiteGrey,
                                    //     borderRadius:
                                    //         BorderRadius.circular(14.0),
                                    //   ),
                                    //   child: TextFormField(
                                    //     controller: passwordCount,
                                    //     obscureText: !passwordVisible,
                                    //     decoration: InputDecoration(
                                    //       hintText: 'Password',
                                    //       hintStyle: heading6.copyWith(
                                    //           color: textGrey),
                                    //       suffixIcon: IconButton(
                                    //         color: textGrey,
                                    //         splashRadius: 1,
                                    //         icon: Icon(passwordVisible
                                    //             ? Icons.visibility_outlined
                                    //             : Icons
                                    //                 .visibility_off_outlined),
                                    //         onPressed: togglePassword,
                                    //       ),
                                    //       border: const OutlineInputBorder(
                                    //         borderSide: BorderSide.none,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        controller: pinCode,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: 'Pin Code',
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
                              width: 12,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: Material(
                                borderRadius: BorderRadius.circular(14.0),
                                elevation: 0,
                                child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () async {
                                        FocusScope.of(context)
                                            .requestFocus(FocusNode());
                                        if (nameCount.text.isEmpty ||
                                            emailCount.text.isEmpty ||
                                            // passwordCount.text.isEmpty ||
                                            phoneCount.text.isEmpty ||
                                            pinCode.text.isEmpty ||
                                            lastName.text.isEmpty) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text(
                                                "Please Fill The Given Field"),
                                          ));
                                        }
                                        if (!RegExp(
                                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                            .hasMatch(emailCount.text)) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text(
                                                "Email Id should be valid"),
                                          ));
                                        }
                                        // if (passwordCount.text.length < 5) {
                                        //   ScaffoldMessenger.of(context)
                                        //       .showSnackBar(const SnackBar(
                                        //     content: Text(
                                        //         "Password Should be more than 5 digits"),
                                        //   ));
                                        // }
                                        if (isChecked == false) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content:
                                                Text("Please Check the box"),
                                          ));
                                        }
                                        if (phoneCount.text.length < 10) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text(
                                                "Number should be 10  digits!"),
                                          ));
                                        } else {
                                          Map prm = {
                                            "isverified": true,
                                            "first_name": nameCount.text,
                                            "last_name": lastName.text,
                                            "phone": phoneCount.text,
                                            "email": emailCount.text,
                                            "pincode": pinCode.text
                                          };

                                          final result =
                                              await apiServices.update(prm);
                                          setState(() {
                                            isLoading = false;
                                          });

                                          setState(() {
                                            isLoading = false;
                                          });
                                          if (result.resposeCode == 200) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                  content: Text(
                                                      "User Created Successfully"),
                                                ))
                                                .closed
                                                .then((value) => Navigator
                                                    .pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const LoginPage()),
                                                        (route) => false));
                                          } else {
                                            String errorMessage = await storage
                                                .read(key: "emailMessage");
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(errorMessage ??
                                                  "Something went wrong"),
                                            ));
                                          }
                                        }
                                      },
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: Center(
                                        child: Text(
                                          "Save",
                                          style: heading5.copyWith(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
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
