import 'package:animate_do/animate_do.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../../Models/GstLogin.dart';
import '../../Calculator/ifsc_calcii/Theme.dart';
import 'OTP.dart';
import 'package:getwidget/getwidget.dart';

class GstLogin extends StatefulWidget {
  @override
  _GstLoginState createState() => _GstLoginState();
}

class _GstLoginState extends State<GstLogin> {
  // bool passwordVisible = false;
  // void togglePassword() {
  //   setState(() {
  //     passwordVisible = !passwordVisible;
  //   });
  // }
  int isActive = 1;
  TextEditingController nameCont = TextEditingController();
  TextEditingController gstinCont = TextEditingController();
  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Login to your GSTIN\naccount',
                                  style: heading2.copyWith(color: textBlack),
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
                                Container(
                                  decoration: BoxDecoration(
                                    color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    controller: nameCont,
                                    decoration: InputDecoration(
                                      hintText: 'UserName',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    controller: gstinCont,
                                    decoration: InputDecoration(
                                      hintText: 'Gstin Number',
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
                                      setState(() {
                                        isLoading = true;
                                      });
                                      final insert = GstSign(
                                        gstin: gstinCont.text,
                                        gstPortalUsername: nameCont.text,
                                      );
                                      final result =
                                          await apiServices.gstLogin(insert);
                                      setState(() {
                                        isLoading = false;
                                      });

                                      if (result.resposeCode == 200) {
                                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OtpPage()), (route) => false);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const OtpPage()));
                                      } else {
                                        AwesomeDialog(
                                          context: context,
                                          animType: AnimType.SCALE,
                                          dialogType: DialogType.ERROR,
                                          body: Column(
                                            children: const [
                                              Text(
                                                "Something went wrong",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 16.5,
                                                ),
                                              ),
                                              Text(
                                                'Check Your Credentials',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                          btnOkColor: Colors.red,
                                          btnOkOnPress: () {},
                                        ).show();
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(14.0),
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
                        const SizedBox(
                          height: 24,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: regular16pt.copyWith(color: textGrey),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const OtpPage()),
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
                            color: Colors.deepPurple,
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
                                        leading:
                                            Icon(Icons.file_download_outlined),
                                        title: Text('Download'),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.push_pin_outlined),
                                        title: Text('Save'),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.print_outlined),
                                        title: Text('Print'),
                                      ),
                                      ListTile(
                                        leading:
                                            Icon(Icons.file_upload_outlined),
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
                ),
              ),
            ),
          );
  }
}
