import 'package:flutter/material.dart';
import 'package:getwidget/Components/button/gf_button.dart';

import '../Models/PinCodeInfo.dart';
import '../Models/api_response.dart';
import '../Services/api_services.dart';
import 'Calculator/ifsc_calcii/Theme.dart';

class PincodeInfoUi extends StatefulWidget {
  const PincodeInfoUi({Key key}) : super(key: key);

  @override
  State<PincodeInfoUi> createState() => _PincodeInfoUiState();
}

class _PincodeInfoUiState extends State<PincodeInfoUi> {
  TextEditingController pinCount = TextEditingController();
  TextEditingController cityName = TextEditingController();

  bool visible = false;
  bool isLoading = false;
  ApiResponse<PinCodeInfo> apiResponse;
  ApiServices apiServices = ApiServices();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
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
                                  'PinCode Info',
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
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          onTap: () {
                            cityName.clear();
                          },
                          keyboardType: TextInputType.number,
                          controller: pinCount,
                          decoration: InputDecoration(
                            hintText: ' Get Info By Pincode',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          onTap: () {
                            pinCount.clear();
                          },
                          // keyboardType: TextInputType.number,
                          controller: cityName,
                          decoration: InputDecoration(
                            hintText: 'Get Info By City Name',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: GFButton(
                          color: Colors.blue.shade900,
                          text: "Find Now",
                          onPressed: () async {
                            if (pinCount.text.isEmpty &&
                                cityName.text.isEmpty) {
                              FocusScope.of(context).requestFocus(FocusNode());
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    "Please enter the PIN Code OR CityName"),
                              ));
                            } else {
                              if (pinCount.text.isNotEmpty) {
                                setState(() {
                                  isLoading = true;
                                });
                                apiResponse = await apiServices
                                    .pinCodeInfo(pinCount.text);
                                setState(() {
                                  isLoading = false;
                                });
                                if (apiResponse.data.info.isNotEmpty) {
                                  setState(() {
                                    visible = true;
                                  });
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Check your Pincode"),
                                  ));
                                }
                              } else {
                                setState(() {
                                  isLoading = true;
                                });
                                apiResponse =
                                    await apiServices.cityInfo(cityName.text);
                                setState(() {
                                  isLoading = false;
                                });
                                if (apiResponse.data.info.isNotEmpty) {
                                  setState(() {
                                    visible = true;
                                  });
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Check your City"),
                                  ));
                                }
                              }
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: visible,
                        child: StreamBuilder<Object>(
                            stream: null,
                            builder: (context, snapshot) {
                              return Column(
                                children: apiResponse.data.info.map((e) {
                                  return Card(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 20,
                                          left: 10,
                                          right: 10),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                            const Expanded(
                                              child: Text(
                                                "Name of the Office",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(e.officeName,
                                                  overflow: TextOverflow.clip,
                                                  style: const TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 1.5,
                                                    fontSize: 15.0,
                                                  )),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            const Expanded(
                                              child: Text(
                                                "PINCODE",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                e.pincode.toString(),
                                                overflow: TextOverflow.clip,
                                                style: const TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1.5,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              const Expanded(
                                                child: Text(
                                                  "TALUK",
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.5,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  e.taluk,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 1.5,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            const Expanded(
                                              child: Text(
                                                "DISTRICT NAME",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.5,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                e.districtName,
                                                overflow: TextOverflow.clip,
                                                style: const TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1.5,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              const Expanded(
                                                child: Text(
                                                  "STATE NAME",
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.5,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  e.stateName,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 1.5,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
