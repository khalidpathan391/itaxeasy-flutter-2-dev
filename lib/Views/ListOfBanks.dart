import 'package:flutter/material.dart';
import 'package:gst_app/Models/api_response.dart';

import '../Models/SearchBankByName.dart';
import '../Models/SearchBankByPan.dart';
import 'Calculator/ifsc_calcii/Theme.dart';

class ListOfBank extends StatefulWidget {
  ListOfBank(
      {Key key,
      this.pin,
      this.bankName,
      this.cityName,
      this.apiResponseByName,
      this.apiResponseByPin})
      : super(key: key);

  String pin;
  String bankName;
  String cityName;
  ApiResponse<SearchBanksByName> apiResponseByName;
  ApiResponse<SearchBanksByPin> apiResponseByPin;

  @override
  State<ListOfBank> createState() => _ListOfBankState();
}

class _ListOfBankState extends State<ListOfBank> {
  bool isLoading;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
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
                          'List of Banks',
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
              SizedBox(
                height: 20,
              ),
              widget.apiResponseByName != null
                  ? Column(
                      children: widget.apiResponseByName.data.bank.map((e) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(children: [
                                  const Expanded(
                                    child: Text(
                                      "Name of the bank",
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
                                    child: Text(e.bank,
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
                                      "IFSC",
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
                                      e.ifsc,
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
                                        "BRANCH",
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
                                        e.branch,
                                        overflow: TextOverflow.ellipsis,
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
                                      "STATE",
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
                                      e.state,
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
                                        "ADDRESS",
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
                                        e.address,
                                        overflow: TextOverflow.ellipsis,
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
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "PHONE",
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
                                        e.phone,
                                        overflow: TextOverflow.ellipsis,
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
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "CITY",
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
                                        e.city1,
                                        overflow: TextOverflow.ellipsis,
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
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  : Column(
                      children: widget.apiResponseByPin.data.banks.map((e) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(children: [
                                  Expanded(
                                      child: Text(
                                    "Name of the bank",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 15.0,
                                    ),
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(e.bank,
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
                                      "IFSC",
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
                                      e.ifsc,
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
                                        "BRANCH",
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
                                        e.branch,
                                        overflow: TextOverflow.ellipsis,
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
                                      "STATE",
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
                                      e.state,
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
                                        "ADDRESS",
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
                                        e.address,
                                        overflow: TextOverflow.ellipsis,
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
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "PHONE",
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
                                        e.phone,
                                        overflow: TextOverflow.ellipsis,
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
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "CITY",
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
                                        e.city1,
                                        overflow: TextOverflow.ellipsis,
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
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
            ],
          ),
        ),
      ),
    ));
  }
}
