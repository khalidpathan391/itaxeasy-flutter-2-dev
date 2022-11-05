import 'package:animate_do/animate_do.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

import 'Calculator/ifsc_calcii/theme.dart';


class Forms extends StatefulWidget {
  const Forms({Key key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
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
                              "FORM 'DIR-8'",
                              style: heading2.copyWith(color: textBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            'assets/images/accent.png',
                            width: 99,
                            height: 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Intimation by Director",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "NOTE",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Text(
                      "[Pursuant to Section 164(2) and rule 14(1) of Companies (Appointment \n and qualification of Directors)\nRules,2014]",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Registration No. of Company",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Registration Number',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Nominal Capital Rs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Nominal Capital Rs',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Paid-up Capital Rs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Paid-up Capital Rs',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Name of the Company",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Name of the Company',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Address of the Registered Office",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Address of the Registered Office',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "To The Board of Directors of",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Directors',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'I',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: TextField(
                                        decoration:
                                            InputDecoration(hintText: "Your Name"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Son/daughter/wife',
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 16.5,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: TextField(
                                      decoration: InputDecoration(hintText: "Any"),
                                    ),
                                  ),
                                  // flex: 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    'resident of',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 16.5,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: TextField(
                                    decoration:
                                        InputDecoration(hintText: "residence"),
                                  ),
                                  // flex: 2,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "director/managing director/manager in the company hereby give notice that I am/was a director in the following companies during the last three years:-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 15.5,
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            endIndent: 10,
                            indent: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Name of the Company",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                hintText: 'Company Names',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Date of Appointment",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DateTimeFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Date of Appointment',
                                hintStyle: heading6.copyWith(color: textGrey),
                                // errorStyle: TextStyle(color: Colors.redAccent),
                                suffixIcon: const Icon(Icons.event_note),
                              ),
                              mode: DateTimeFieldPickerMode.date,
                              autovalidateMode: AutovalidateMode.always,
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Date of Cessation",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DateTimeFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Date of Cessation',
                                hintStyle: heading6.copyWith(color: textGrey),
                                // errorStyle: TextStyle(color: Colors.redAccent),
                                suffixIcon: const Icon(Icons.event_note),
                              ),
                              mode: DateTimeFieldPickerMode.date,
                              autovalidateMode: AutovalidateMode.always,
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 1,
                            endIndent: 10,
                            indent: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "I further confirm that I have not incurred disqualification under section 164(2) of the Companies Act, 2013 in any of the above companies, in the previous financial year, and that I, at present, stand free from any disqualification from being a director.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 15.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Divider(
                                  endIndent: 10,
                                  thickness: 1,
                                ),
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 15.5,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  indent: 10,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "I further confirm that I have incurred disqualifications under section 164(2) of the Companies Act, 2013 in the following company(s) in the previous financial year, and that I, at present stand disqualified from being a director.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 15.5,
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            endIndent: 10,
                            indent: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Name of the Company",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                hintText: 'Company Names',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Date of Appointment",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DateTimeFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Date of Appointment',
                                hintStyle: heading6.copyWith(color: textGrey),
                                // errorStyle: TextStyle(color: Colors.redAccent),
                                suffixIcon: const Icon(Icons.event_note),
                              ),
                              mode: DateTimeFieldPickerMode.date,
                              autovalidateMode: AutovalidateMode.always,
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Text(
                              "Date of Cessation",
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DateTimeFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Date of Cessation',
                                hintStyle: heading6.copyWith(color: textGrey),
                                // errorStyle: TextStyle(color: Colors.redAccent),
                                suffixIcon: const Icon(Icons.event_note),
                              ),
                              mode: DateTimeFieldPickerMode.date,
                              autovalidateMode: AutovalidateMode.always,
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                              },
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
                      child: GFButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                          },
                          text: "Find Now"),
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
