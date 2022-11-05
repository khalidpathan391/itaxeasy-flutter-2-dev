import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/Theme/colors.dart';

class Challan286 extends StatefulWidget {
  const Challan286({Key key}) : super(key: key);

  @override
  _Challan286State createState() => _Challan286State();
}

class _Challan286State extends State<Challan286> {
  int groupValue = 0;
  int groupValue1 = 0;
  int groupValue2 = 0;
  int groupValues = 0;

  String dropDownValue;
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;
  List<String> cityList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20),
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
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Challan No./ITNS 286',
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
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 10, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Tax Applicable",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              activeBorderColor: Colors.blue.shade900,
                              value: 0,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value;
                                });
                              },
                              inactiveIcon: null,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "(0028) Other Taxes On Income And1\nExpenditure",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 10, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Type of Payment",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              activeBorderColor: Colors.blue.shade900,
                              value: 0,
                              groupValue: groupValue1,
                              onChanged: (value) {
                                setState(() {
                                  groupValue1 = value;
                                });
                              },
                              inactiveIcon: null,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "(111) Payment Under Income Declare\nScheme, 2016",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Mode Of Payment",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              activeBorderColor: Colors.blue.shade900,
                              value: 0,
                              groupValue: groupValue2,
                              onChanged: (value) {
                                setState(() {
                                  groupValue2 = value;
                                });
                              },
                              inactiveIcon: null,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Net-Banking",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        groupValue2 == 1
                            ? Container()
                            : FadeInLeftBig(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
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
                                      hintText: 'Bank Name',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                    ),
                                    value: dropDownValue1,
                                    onChanged: (String Value) {
                                      setState(() {
                                        dropDownValue1 = Value;
                                      });
                                    },
                                    items: cityList
                                        .map((cityTitle) => DropdownMenuItem(
                                            value: cityTitle,
                                            child: Text(cityTitle)))
                                        .toList(),
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              value: 1,
                              groupValue: groupValue2,
                              onChanged: (value) {
                                setState(() {
                                  groupValue2 = value;
                                });
                              },
                              inactiveIcon: null,
                              activeBorderColor: Colors.blue.shade900,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Debit Card",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        groupValue2 == 0
                            ? Container()
                            : FadeInLeftBig(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
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
                                      hintText: 'Bank Name',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                    ),
                                    value: dropDownValue2,
                                    onChanged: (String Value) {
                                      setState(() {
                                        dropDownValue2 = Value;
                                      });
                                    },
                                    items: cityList
                                        .map((cityTitle) => DropdownMenuItem(
                                            value: cityTitle,
                                            child: Text(cityTitle)))
                                        .toList(),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 10, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Category of PAN",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              activeBorderColor: Colors.blue.shade900,
                              value: 0,
                              groupValue: groupValues,
                              onChanged: (value) {
                                setState(() {
                                  groupValues = value;
                                });
                              },
                              inactiveIcon: null,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Payment made by Company",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GFRadio(
                              size: 20,
                              activeBorderColor: Colors.blue.shade900,
                              value: 1,
                              groupValue: groupValues,
                              onChanged: (value) {
                                setState(() {
                                  groupValues = value;
                                });
                              },
                              inactiveIcon: null,
                              radioColor: Colors.blue.shade900,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Payment made by person other than\nCompany",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Permanent Account No",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Permanent Account No',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Assessment Year",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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
                              hintText: 'Assessment Year',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue3,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue3 = Value;
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
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Full Name (Masked)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Name as per Income Tax Department database (Masked) will be displayed on confirmation screen",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Flat/Door/Block No.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Flat/Door/Block No',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Premises/Building/Village",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Premises/Building/Village',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Road/Street/Lane",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Road/Street/Lane',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Area/Locality",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Area/Locality',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "City/District",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'City/District',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "State",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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
                              hintText: 'State',
                              hintStyle: heading6.copyWith(color: textGrey),
                            ),
                            value: dropDownValue4,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue4 = Value;
                              });
                            },
                            items: cityList
                                .map((cityTitle) => DropdownMenuItem(
                                    value: cityTitle, child: Text(cityTitle)))
                                .toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Pin Code",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 17.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Pin Code',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Email ID",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email ID',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Mobile No.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Mobile No.',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: GFButton(
                    color: Colors.blue.shade900,
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CompanyView()));
                    },
                    text: "Proceed"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
