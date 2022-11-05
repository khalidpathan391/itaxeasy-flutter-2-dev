import 'package:animate_do/animate_do.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

import '../../../../Calculator/ifsc_calcii/Theme.dart';

class AddRecordB2C extends StatefulWidget {
  const AddRecordB2C({Key key}) : super(key: key);

  @override
  State<AddRecordB2C> createState() => _AddRecordB2CState();
}

class _AddRecordB2CState extends State<AddRecordB2C> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  double percent = 0.0;

  DateTime dateTime;

  bool isVisible = false;
  List<String> cityList = [
    '65%',
  ];
  String dropDownValue1;
  String dropDownValue2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
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
                            'B2C(Large) Invoices- Details',
                            style: heading2.copyWith(color: textBlack),
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
                  height: 20,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GFCheckbox(
                              size: 25,
                              activeBgColor: GFColors.INFO,
                              type: GFCheckboxType.circle,
                              onChanged: (value) {
                                setState(() {
                                  isChecked5 = value;
                                  isVisible = !isVisible;
                                });
                              },
                              value: isChecked5,
                              inactiveIcon: null,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Expanded(
                              child: Text(
                                "Is the supply eligible to be taxed at a differential percentage (%) of the existing rate of tax, as notified by the Government?",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 13.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: isVisible,
                          child: const SizedBox(
                            height: 10,
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: const Text(
                            "Applicable % of Tax Rate",
                            // overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 15.5,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: const SizedBox(
                            height: 10,
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Select',
                                hintStyle: heading6.copyWith(color: textGrey),
                              ),
                              value: dropDownValue1,
                              onChanged: (String Value) {
                                setState(() {
                                  dropDownValue1 = Value;
                                });
                              },
                              items: cityList
                                  .map((cityTitle) => DropdownMenuItem(
                                      value: cityTitle, child: Text(cityTitle)))
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Invoice no.",
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
                            decoration: InputDecoration(
                              hintText: 'Invoice no.',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Invoice date",
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
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 5, right: 5, bottom: 5),
                            child: DateTimeFormField(
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                errorStyle: TextStyle(color: Colors.redAccent),
                                // border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.event_note),
                                hintText: 'Invoice Date',
                              ),
                              mode: DateTimeFieldPickerMode.date,
                              // autovalidateMode: AutovalidateMode.always,
                              // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                                dateTime = value;
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Total invoice value (₹)",
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
                            decoration: InputDecoration(
                              hintText: 'Total invoice value (₹)',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "POS",
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
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Select',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue2,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue2 = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Supply Type",
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
                            decoration: InputDecoration(
                              hintText: 'Supply Type',
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
                ),

                // Section 2

                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Item details",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 19.5,
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "0%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "0.1%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "0.25%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1.5%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "3%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "5%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "7.5%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "12%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "18%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rate (%)",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "28%",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Taxable value (₹)",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
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
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                            ],
                            onChanged: (String value) {
                              setState(() {
                                percent = 28;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Taxable value',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Amount of Tax",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 19.5,
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.9,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Integrated Tax",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Cess (₹)",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 17.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: textWhiteGrey,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Taxable value',
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
                          ],
                        ),
                      ],
                    ),
                  ),
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
                        color: Colors.blue.shade900,
                        onPressed: () {},
                        text: "Save"),
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
