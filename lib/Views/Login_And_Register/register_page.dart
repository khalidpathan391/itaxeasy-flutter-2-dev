import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/register.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:getwidget/getwidget.dart';
import '../Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import 'Theme.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
  TextEditingController passwordCount = TextEditingController();
  TextEditingController cpasswordCount = TextEditingController();
  TextEditingController phoneCount = TextEditingController();
  TextEditingController pinCode = TextEditingController();

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
              appBar: AppBar(
                backgroundColor: Colors.blue.shade900,
                title: Text(
                  'Registration\nForm ',
                  style: GoogleFonts.dmSans(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                toolbarHeight: 200,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(200))),
              ),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        controller: nameCount,
                                        textCapitalization:
                                            TextCapitalization.words,

                                        //               validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return "*  Required  *";
                                        //   }
                                        // },
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.blue.shade900,
                                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        controller: lastName,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        //               validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return "*  Required  *";
                                        //   }
                                        // },
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.blue.shade900,
                                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10),
                                        ],
                                        controller: phoneCount,
                                        // validator: (Value) {
                                        //   if (Value == null || Value.isEmpty) {
                                        //     return "*Required";
                                        //   } else if (Value.length != 10) {
                                        //     return "Phone Number should be 10 digit";
                                        //   } else {
                                        //     return null;
                                        //   }
                                        // },
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.phone,
                                            color: Colors.blue.shade900,
                                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        controller: emailCount,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return "*  Required  *";
                                        //   } else if (value.indexOf("@") == -1) {
                                        //     return "*  Email is invalid  *";
                                        //   } else {
                                        //     return null;
                                        //   }
                                        // },
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Colors.blue.shade900,
                                          ),
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
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        controller: passwordCount,
                                        obscureText:
                                            !passwordConfrimationVisible,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.password_outlined,
                                            color: Colors.blue.shade900,
                                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        textCapitalization:
                                            TextCapitalization.words,
                                        controller: cpasswordCount,
                                        obscureText: !passwordVisible,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "*  Required  *";
                                          } else if (passwordCount.text !=
                                              cpasswordCount.text) {
                                            return "*  Password should be same  *";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.password_outlined,
                                            color: Colors.blue.shade900,
                                          ),
                                          hintText: 'Confirm Password',
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
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade700,
                                                blurRadius: 5.0,
                                                offset: Offset(5, 3))
                                          ],
                                          // border: Border.all(
                                          //     color: Colors.blue.shade900),
                                          shape: BoxShape.rectangle,
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Colors.grey.shade100,
                                              Colors.white,
                                            ],
                                          )),
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(6),
                                        ],
                                        controller: pinCode,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.pin,
                                            color: Colors.blue.shade900,
                                          ),
                                          hintText: 'Pincode',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // CustomCheckbox(),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isChecked = !isChecked;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: isChecked
                                                  ? primaryBlue
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              border: isChecked
                                                  ? null
                                                  : Border.all(
                                                      color: textGrey,
                                                      width: 1.5),
                                            ),
                                            width: 20,
                                            height: 20,
                                            child: isChecked
                                                ? const Icon(
                                                    Icons.check,
                                                    size: 20,
                                                    color: Colors.white,
                                                  )
                                                : null,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'By creating an account, you agree to our',
                                          style: regular16pt.copyWith(
                                              color: textGrey),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Terms & Conditions',
                                      style: regular16pt.copyWith(
                                          color: primaryBlue),
                                    ),
                                  ],
                                ),
                              ],
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
                                            passwordCount.text.isEmpty ||
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
                                        if (passwordCount.text.length < 5) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text(
                                                "Password Should be more than 5 digits"),
                                          ));
                                        }
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
                                        }
                                        if (pinCode.text.length < 6) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text(
                                                "Number should be 6  digits!"),
                                          ));
                                        } else {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          final insert = Register(
                                            firstName: nameCount.text,
                                            lastName: lastName.text,
                                            phone: phoneCount.text,
                                            pincode: pinCode.text,
                                            email: emailCount.text,
                                            password: passwordCount.text,
                                          );
                                          final result = await apiServices
                                              .register(insert);
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
                                          "Register",
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset("assets/images/gmail.jpeg",
                                      width: 50, height: 50),
                                ),
                                ClipOval(
                                  child: GFIconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: regular16pt.copyWith(color: textGrey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Login',
                                    style: regular16pt.copyWith(
                                        color: Colors.blue.shade900),
                                  ),
                                ),
                              ],
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
