import 'package:flutter/material.dart';

import '../Calculator/ifsc_calcii/Theme.dart';

class BusinessBankVerification extends StatefulWidget {
  const BusinessBankVerification({Key key}) : super(key: key);

  @override
  State<BusinessBankVerification> createState() => _BusinessBankVerificationState();
}

class _BusinessBankVerificationState extends State<BusinessBankVerification> {
  @override

  TextEditingController nameCont = TextEditingController();
  TextEditingController accountCont = TextEditingController();
  TextEditingController ifscCont = TextEditingController();
  TextEditingController contactCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
            child: Column(
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
                            'Business Profile',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          color: Colors.purple,
                          width: 99,
                          height: 4,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Name",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),

                              Text(
                                "XXXXX XXX XXX",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Account Number",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),

                              Text(
                                "XXXXX",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "IFSC Number",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),

                              Text(
                                "XXXX XX XX",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mobile Number",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),

                              Text(
                                "XXXX XX XX",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(

                            children: [
                              Stack(fit: StackFit.loose, children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: 140.0,
                                        height: 140.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: ExactAssetImage('assets/images/as.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ],
                                ),
                                // Padding(
                                //     padding: const EdgeInsets.only(top: 90.0, right: 100.0),
                                //     child: Row(
                                //       mainAxisAlignment: MainAxisAlignment.center,
                                //       children: const <Widget>[
                                //         CircleAvatar(
                                //           backgroundColor: Colors.blue,
                                //           radius: 25.0,
                                //           child: Icon(
                                //             Icons.camera_alt,
                                //             color: Colors.white,
                                //           ),
                                //         ),
                                //       ],
                                //     )),
                              ]),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Sign.",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height:20,
                ),
                Text(
                  'Bank Verification',
                  style: heading2.copyWith(color: Colors.purple,),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Name",
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
                          controller: nameCont,
                          decoration: InputDecoration(
                            hintText: 'Account holder name',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Account Number",
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
                          controller: accountCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Account No:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ifsc Number",
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
                          controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Ifsc No:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mobile Number",
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
                          controller: contactCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Contact No:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
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
