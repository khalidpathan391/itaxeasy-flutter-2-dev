import 'package:animate_do/animate_do.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Models/login.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/navbar.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import 'package:gst_app/Views/Login_And_Register/register_page.dart';
import 'theme.dart';
import 'package:getwidget/getwidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Login',
                                style: GoogleFonts.dmSans(
                                    fontSize: 30, fontWeight: FontWeight.bold),
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
                          const SizedBox(
                            height: 48,
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
                                              hintText:
                                                  'Username/Email/Phone Number',
                                              hintStyle: heading6.copyWith(
                                                  color: textGrey),
                                              border: const OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 32,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: textWhiteGrey,
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomCheckbox(),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text('Remember me', style: regular16pt),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Forgot Password?',
                                            style: regular16pt),
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
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> Navbar()));
                                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Navbar()), (route) => false);
                                    },
                                    child: Text(
                                      'OR',
                                      style: heading6.copyWith(color: textGrey),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        final result =
                                            await apiServices.googleLogin();
                                        setState(() {
                                          isLoading = false;
                                        });
                                        // if(result.resposeCode == 200){
                                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                        // }
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Image.asset(
                                            "assets/images/gmail.jpeg",
                                            width: 50,
                                            height: 50),
                                      ),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPage()));
                                      },
                                      child: Text(
                                        'Register',
                                        style: regular16pt.copyWith(
                                            color: Colors.blue.shade900),
                                      ),
                                    ),
                                  ],
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
