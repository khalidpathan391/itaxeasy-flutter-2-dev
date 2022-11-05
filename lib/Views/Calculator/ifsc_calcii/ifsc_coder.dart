import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Services/api_services.dart';

import '../../ListOfBanks.dart';
import 'bank-details.dart';
import 'theme.dart';
import 'package:getwidget/getwidget.dart';

class IfscFinder extends StatefulWidget {
  @override
  _IfscFinderState createState() => _IfscFinderState();
}

class _IfscFinderState extends State<IfscFinder> {
  // bool passwordVisible = false;
  //
  // void togglePassword() {
  //   setState(() {
  //     passwordVisible = !passwordVisible;
  //   });
  // }

  bool isLoading = false;
  TextEditingController ifscCont = TextEditingController();
  TextEditingController pinCount = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController cityName = TextEditingController();
  ApiServices apiServices = ApiServices();

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
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              reverse: true,
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
                                    'Ifsc Code Finder',
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            onTap: () {
                              cityName.clear();
                              bankName.clear();
                            },
                            onChanged: (input) {
                              cityName.clear();
                              if (input.isEmpty) {
                                bankName.clear();
                              }
                            },
                            keyboardType: TextInputType.number,
                            controller: pinCount,
                            decoration: InputDecoration(
                              hintText: 'Search by PIN Code',
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
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            // textCapitalization: TextCapitalization.characters,
                            onTap: () {
                              pinCount.clear();
                            },
                            controller: cityName,
                            decoration: InputDecoration(
                              hintText: 'Search by City Name',
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
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            textCapitalization: TextCapitalization.characters,
                            onTap: () {
                              if (pinCount.text.isEmpty &&
                                  cityName.text.isEmpty) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                      "Please enter the PIN Code Or City Name"),
                                ));
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              }
                            },
                            controller: bankName,
                            decoration: InputDecoration(
                              hintText: 'Search by Bank Name',
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
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: GFButton(
                              color: Colors.blue.shade900,
                              onPressed: () async {
                                if (pinCount.text.isEmpty &&
                                    bankName.text.isEmpty &&
                                    cityName.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please fill the given field"),
                                  ));
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  if (bankName.text.isEmpty &&
                                      cityName.text.isEmpty) {
                                    final result = await apiServices
                                        .searchBankByPin(pinCount.text);
                                    if (result.data.noOfBanks != 0) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => ListOfBank(
                                                    apiResponseByPin: result,
                                                  )));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("No Bank Found"),
                                      ));
                                    }
                                  }
                                  if (bankName.text.isNotEmpty &&
                                      pinCount.text.isNotEmpty) {
                                    final result =
                                        await apiServices.searchBankByName(
                                            pinCount.text, bankName.text);
                                    if (result.data.bank.isNotEmpty) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => ListOfBank(
                                                    apiResponseByName: result,
                                                  )));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("No Bank Found"),
                                      ));
                                    }
                                  }
                                  if (cityName.text.isNotEmpty &&
                                      bankName.text.isEmpty) {
                                    final result = await apiServices
                                        .searchBankByCity(cityName.text);
                                    if (result.data.bank.isNotEmpty) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => ListOfBank(
                                                    apiResponseByName: result,
                                                  )));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("No Bank Found"),
                                      ));
                                    }
                                  }
                                  if (cityName.text.isNotEmpty &&
                                      bankName.text.isNotEmpty) {
                                    final result = await apiServices
                                        .searchBankByCityAndBankName(
                                            cityName.text, bankName.text);
                                    if (result.data.bank.isNotEmpty) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => ListOfBank(
                                                    apiResponseByName: result,
                                                  )));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("No Bank Found"),
                                      ));
                                    }
                                  }
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                              text: "Find Now"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            'OR',
                            style: heading6.copyWith(color: textGrey),
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
                          child: TextFormField(
                            controller: ifscCont,
                            decoration: InputDecoration(
                              hintText: 'Enter IFSC Number',
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
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: GFButton(
                              color: Colors.blue.shade900,
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                final insert = ifscCont.text;
                                final result = await apiServices.ifsc(insert);
                                setState(() {
                                  isLoading = false;
                                });
                                if (result.data != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BankDetails(
                                                ifsc: ifscCont.text,
                                              )));
                                } else {
                                  print("ERROR");
                                }
                              },
                              text: "Find Now"),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
