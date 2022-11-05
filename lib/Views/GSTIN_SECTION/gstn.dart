import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/GSTIN_SECTION/ReturnDashboard.dart';

class Gstn extends StatefulWidget {
  const Gstn({Key key}) : super(key: key);

  @override
  _GstnState createState() => _GstnState();
}

class _GstnState extends State<Gstn> {
  // ApiServices apiServices = ApiServices();
  bool isLoading = false;
  TextEditingController gstin = TextEditingController();
  TextEditingController year = TextEditingController();

  String dropdownValue = "FY 2021-22";
  String dropdownValue2 = "Quarter 1 (Apr-Jun)";
  String dropdownValue3 = "April";
  String dropdownValue4 = "July";
  String dropdownValue5 = "October";
  String dropdownValue6 = "January";

  bool isVisible = true;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5, 0),
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
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    'File Returns',
                                    // style: heading2.copyWith(color: textBlack),
                                  ),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(children: [
                                  Text(
                                    "FYear",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                  Container(
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      // color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                        items: <String>[
                                          'FY 2018-19',
                                          'FY 2019-20',
                                          'FY 2020-21',
                                          'FY 2021-22'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text(
                                    "Quarter",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                  Container(
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      //color: textWhiteGrey,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue2,
                                        elevation: 16,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropdownValue2 = newValue;
                                            if (dropdownValue2 == "Quarter 2 (Jul-Sep)" ||
                                                dropdownValue2 ==
                                                    'Quarter 3 (Oct-Dec)' ||
                                                dropdownValue2 ==
                                                    'Quarter 4 (Jan-Mar)') {
                                              isVisible = false;
                                            } else {
                                              isVisible = true;
                                            }
                                            if (dropdownValue2 ==
                                                "Quarter 2 (Jul-Sep)") {
                                              isVisible2 = true;
                                            } else {
                                              isVisible2 = false;
                                            }
                                            if (dropdownValue2 ==
                                                "Quarter 3 (Oct-Dec)") {
                                              isVisible3 = true;
                                            } else {
                                              isVisible3 = false;
                                            }
                                            if (dropdownValue2 ==
                                                "Quarter 4 (Jan-Mar)") {
                                              isVisible4 = true;
                                            } else {
                                              isVisible4 = false;
                                            }
                                          });
                                        },
                                        items: <String>[
                                          'Quarter 1 (Apr-Jun)',
                                          'Quarter 2 (Jul-Sep)',
                                          'Quarter 3 (Oct-Dec)',
                                          'Quarter 4 (Jan-Mar)'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text(
                                    "Period",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible,
                                    child: Container(
                                      // width: double.infinity,
                                      decoration: BoxDecoration(
                                        // color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: dropdownValue3,
                                          elevation: 16,
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownValue3 = newValue;
                                            });
                                          },
                                          items: <String>[
                                            'April',
                                            'May',
                                            'June',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible2,
                                    child: Container(
                                      // width: double.infinity,
                                      decoration: BoxDecoration(
                                        //color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: dropdownValue4,
                                          elevation: 16,
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownValue4 = newValue;
                                            });
                                          },
                                          items: <String>[
                                            'July',
                                            'August',
                                            'September',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible3,
                                    child: Container(
                                      //width: double.infinity,
                                      decoration: BoxDecoration(
                                        // color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: dropdownValue5,
                                          elevation: 16,
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownValue5 = newValue;
                                            });
                                          },
                                          items: <String>[
                                            'October',
                                            'November',
                                            'December',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible4,
                                    child: Container(
                                      // width: double.infinity,
                                      decoration: BoxDecoration(
                                        //color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: dropdownValue6,
                                          elevation: 16,
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownValue6 = newValue;
                                            });
                                          },
                                          items: <String>[
                                            'January',
                                            'February',
                                            'March',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
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
                            child: GFButton(
                              size: GFSize.LARGE,
                              color: Colors.blue.shade900,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ReturnDashboard()));
                              },
                              text: "Search",
                            ),
                          ),
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
