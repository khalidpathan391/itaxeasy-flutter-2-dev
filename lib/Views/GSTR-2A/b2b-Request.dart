import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Services/api_services.dart';

import '../Calculator/ifsc_calcii/Theme.dart';
import 'b2b-Response.dart';


class b2bRequest extends StatefulWidget {
  @override
  _b2bRequestState createState() => _b2bRequestState();
}

class _b2bRequestState extends State<b2bRequest> {
  TextEditingController gstin = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController month = TextEditingController();
  ApiServices apiServices = ApiServices();

  bool isLoading = false;
  bool visible = false;





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
                              'GSTR-2A/B2B',
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
                                "GSTIN Number",
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
                              textCapitalization:
                              TextCapitalization.characters,
                              controller: gstin,
                              decoration: InputDecoration(
                                hintText: 'Enter GSTIN Number',
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
                                "Enter Year",
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
                              controller: year,
                              decoration: InputDecoration(
                                hintText: 'Year',
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
                                "Enter Month",
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
                              controller: month,
                              decoration: InputDecoration(
                                hintText: 'Month',
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
                            // final insert = .text;
                            final result = await apiServices.gstr2Ab2b(gstin.text,year.text,month.text);
                            setState(() {
                              isLoading = false;
                            });
                            if (result.data != null) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>b2bResponse(gstin:gstin.text,year:year.text,month:month.text)));
                              print(
                                  "---------------SUCCESS--------------");
                            } else {
                              print("---------------ERROR--------------");
                            }
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
