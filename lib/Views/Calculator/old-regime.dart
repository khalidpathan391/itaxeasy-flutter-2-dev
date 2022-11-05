import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Services/api_services.dart';

import '../../Models/old-regime.dart';
import '../Login_And_Register/Theme.dart';
import 'old-regime-response.dart';

class OldRegimeUi extends StatefulWidget {
  const OldRegimeUi({Key key}) : super(key: key);

  @override
  _OldRegimeUiState createState() => _OldRegimeUiState();
}

class _OldRegimeUiState extends State<OldRegimeUi> {
  TextEditingController financialCont = TextEditingController();
  TextEditingController panCont = TextEditingController();
  TextEditingController fillingCont = TextEditingController();
  TextEditingController residentialCont = TextEditingController();
  TextEditingController basicSalaryCont = TextEditingController();
  TextEditingController hraCont = TextEditingController();
  TextEditingController rentCont = TextEditingController();
  TextEditingController cityCont = TextEditingController();
  TextEditingController otherACount = TextEditingController();
  TextEditingController letCount = TextEditingController();
  TextEditingController rentRCount = TextEditingController();
  TextEditingController propertyTaxCont = TextEditingController();
  TextEditingController selfCont = TextEditingController();
  TextEditingController savingCont = TextEditingController();
  TextEditingController FDCount = TextEditingController();
  TextEditingController dividentCont = TextEditingController();
  TextEditingController OtherInCont = TextEditingController();
  TextEditingController elss = TextEditingController();
  TextEditingController nps = TextEditingController();
  TextEditingController pff = TextEditingController();
  TextEditingController lic = TextEditingController();

  ApiServices apiServices = ApiServices();
  bool isLoading = false;

  // ApiResponse<RegimeResponse> apiResponse;
// Map<String,dynamic> obj;
  var insert;
  var address1;
  // getDetails() async{
  //   setState(() {
  //     isLoading = true;
  //   });
  //   print(insert);
  //   apiResponse = await apiServices.gstNewRegime(insert);
  //
  //   // obj = apiResponse.data;
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
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
                                    'Old Regime',
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
                          height: 48,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Form(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Financial Year",
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
                                    controller: financialCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Financial Year',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Pan Number",
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
                                    // keyboardType: TextInputType.phone,
                                    controller: panCont,
                                    decoration: InputDecoration(
                                      hintText: 'Pan Number',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Filling Category",
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
                                    controller: fillingCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Filling Category',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Residential Status",
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
                                    // keyboardType: TextInputType.phone,
                                    controller: residentialCont,
                                    decoration: InputDecoration(
                                      hintText: 'Residential Status',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Basic Salary",
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
                                    controller: basicSalaryCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Basic Salary',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "HRA Received",
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
                                    controller: hraCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'HRA Recieved',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Rent Paid",
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
                                    controller: rentCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Rent Paid',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Address(City)",
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
                                    controller: cityCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'City',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Other Allowance",
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
                                    controller: otherACount,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Other Allowance',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Interest paid on let out hp loan",
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
                                    controller: letCount,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'interest',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Rent Received",
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
                                    controller: rentRCount,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'rent received',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Property Tax Paid",
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
                                    controller: propertyTaxCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Tax',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Interest paid on self occupied hp loan",
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
                                    controller: selfCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Interest',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Saving Interest",
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
                                    controller: savingCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Saving Interest',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "FD Interest",
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
                                    controller: FDCount,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Fd Interest',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Dividend Income",
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
                                    controller: dividentCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Dividend income',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "Other Income",
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
                                    controller: OtherInCont,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'Other Income',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "ELSS",
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
                                    controller: elss,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'elss',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "NPS",
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
                                    controller: nps,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'nps',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "PPF",
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
                                    controller: pff,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'ppf',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
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
                                      "LIC Premium",
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
                                    controller: lic,
                                    // keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: 'lic premium',
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
                            child: GFButton(
                                onPressed: () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  address1 = Address2(city: cityCont.text);
                                  insert = OldRegime(
                                      financialYear: financialCont.text,
                                      pan: panCont.text,
                                      filingCategory: fillingCont.text,
                                      residentialStatus: residentialCont.text,
                                      basicSalary:
                                          int.parse(basicSalaryCont.text),
                                      hraReceived: int.parse(hraCont.text),
                                      rentPaid: int.parse(rentCont.text),
                                      address: address1,
                                      otherAllowances:
                                          int.parse(otherACount.text),
                                      interestPaidOnLetOutHpLoan:
                                          int.parse(letCount.text),
                                      rentReceived: int.parse(rentRCount.text),
                                      propertyTaxPaid:
                                          int.parse(propertyTaxCont.text),
                                      interestPaidOnSelfOccupiedHpLoan:
                                          int.parse(selfCont.text),
                                      savingsInterest:
                                          int.parse(savingCont.text),
                                      fdInterest: int.parse(FDCount.text),
                                      dividendIncome:
                                          int.parse(dividentCont.text),
                                      otherIncome: int.parse(OtherInCont.text),
                                      elss: int.parse(elss.text),
                                      nps: int.parse(nps.text),
                                      ppf: int.parse(pff.text),
                                      licPremium: int.parse(lic.text));
                                  final result =
                                      await apiServices.gstOldRegime(insert);

                                  setState(() {
                                    isLoading = false;
                                  });
                                  if (result.data != null) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OldRegimeRsoo(
                                                  financialYear:
                                                      financialCont.text,
                                                  pan: panCont.text,
                                                  filingCategory:
                                                      fillingCont.text,
                                                  residentialStatus:
                                                      residentialCont.text,
                                                  basicSalary: int.parse(
                                                      basicSalaryCont.text),
                                                  hraReceived:
                                                      int.parse(hraCont.text),
                                                  rentPaid:
                                                      int.parse(rentCont.text),
                                                  address: address1,
                                                  otherAllowances: int.parse(
                                                      otherACount.text),
                                                  interestPaidOnLetOutHpLoan:
                                                      int.parse(letCount.text),
                                                  rentReceived: int.parse(
                                                      rentRCount.text),
                                                  propertyTaxPaid: int.parse(
                                                      propertyTaxCont.text),
                                                  interestPaidOnSelfOccupiedHpLoan:
                                                      int.parse(selfCont.text),
                                                  savingsInterest: int.parse(
                                                      savingCont.text),
                                                  fdInterest:
                                                      int.parse(FDCount.text),
                                                  dividendIncome: int.parse(
                                                      dividentCont.text),
                                                  otherIncome: int.parse(
                                                      OtherInCont.text),
                                                  elss: int.parse(elss.text),
                                                  nps: int.parse(nps.text),
                                                  ppf: int.parse(pff.text),
                                                  lic: int.parse(lic.text),
                                                )));
                                  } else {
                                    print("error");
                                  }

                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                },
                                color: Colors.blue.shade900,
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
