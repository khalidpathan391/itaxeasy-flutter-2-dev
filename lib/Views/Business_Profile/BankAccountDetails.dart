import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../Calculator/ifsc_calcii/Theme.dart';

class BusinessBankAccount extends StatefulWidget {
  const BusinessBankAccount({Key key}) : super(key: key);

  @override
  State<BusinessBankAccount> createState() => _BusinessBankAccountState();
}

class _BusinessBankAccountState extends State<BusinessBankAccount> {
  String dropDownValue;
  List<String> cityList = [
    'jawahar nagar',
    'delhi',
    'rajkot',
    'mumbai',
    'pune',
    'uttar pradesh',
    'kashmir'
  ];
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
                          color: Colors.blue.shade900,
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
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Bank Name",
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
                                "State",
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
                                "District",
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
                                "Branch",
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
                                            image: ExactAssetImage(
                                                'assets/images/as.png'),
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
                  height: 20,
                ),
                Text(
                  'Bank Account Details',
                  style: heading2.copyWith(
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "IFSC Code Bank",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 17.5,
                  ),
                ),
                const SizedBox(height: 10),
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
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Select Bank',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Select State",
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Select District',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Select Branch',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                      ],
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
