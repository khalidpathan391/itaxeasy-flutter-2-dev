import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/Components/button/gf_button.dart';

import '../Calculator/ifsc_calcii/Theme.dart';

class Modification extends StatefulWidget {
  const Modification({Key key}) : super(key: key);

  @override
  State<Modification> createState() => _ModificationState();
}

class _ModificationState extends State<Modification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20),
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
                            'Modification',
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
                Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: nameCont,
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
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Address",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: accountCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Enter Address:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Near By",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Near By:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Pincode",
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
                                      borderRadius: BorderRadius.circular(15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Pincode:',
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "State",
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
                                      borderRadius: BorderRadius.circular(15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Select State:',
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
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contrary",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Select Contrary:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "PAN No",
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
                                      borderRadius: BorderRadius.circular(15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'PAN Number:',
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "TAN No",
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
                                      borderRadius: BorderRadius.circular(15),
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
                                    // controller: contactCont,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'TAN Number:',
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
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "GSTIN No",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter GSTIN Number:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Aadhaar No",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter Aadhaar Number:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Shop Act Registration",
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
                            borderRadius: BorderRadius.circular(15),
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
                          // controller: ifscCont,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Shop Act Registration:',
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
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: const GFButton(
                              color: Colors.red,
                              // onPressed: () async {
                              //   setState(() {
                              //     isLoading = true;
                              //   });
                              //   final insert = Bankdetails(
                              //       accountNumber: accountCont.text,
                              //       name: nameCont.text,
                              //       ifsc: ifscCont.text,
                              //       mobile: contactCont.text);
                              //   final result =
                              //   await apiServices.bankVerify(insert);
                              //   setState(() {
                              //     isLoading = false;
                              //   });
                              //   if (result.data != null) {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 BankVerifyResponse(
                              //                   name: nameCont.text,
                              //                   account: accountCont.text,
                              //                   ifsc: ifscCont.text,
                              //                   contact: contactCont.text,
                              //                 )));
                              //     print(
                              //         "-------------------SUCCESS--------------------");
                              //   } else {
                              //     print(
                              //         "-------------------ERROR--------------------");
                              //   }
                              // },
                              text: "Delete"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: FadeInRight(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: const GFButton(
                              color: Colors.blue,
                              // onPressed: () async {
                              //   setState(() {
                              //     isLoading = true;
                              //   });
                              //   final insert = Bankdetails(
                              //       accountNumber: accountCont.text,
                              //       name: nameCont.text,
                              //       ifsc: ifscCont.text,
                              //       mobile: contactCont.text);
                              //   final result =
                              //   await apiServices.bankVerify(insert);
                              //   setState(() {
                              //     isLoading = false;
                              //   });
                              //   if (result.data != null) {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 BankVerifyResponse(
                              //                   name: nameCont.text,
                              //                   account: accountCont.text,
                              //                   ifsc: ifscCont.text,
                              //                   contact: contactCont.text,
                              //                 )));
                              //     print(
                              //         "-------------------SUCCESS--------------------");
                              //   } else {
                              //     print(
                              //         "-------------------ERROR--------------------");
                              //   }
                              // },
                              text: "Generate"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
