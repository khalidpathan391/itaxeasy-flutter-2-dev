import 'package:flutter/material.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import '../../Models/GSTR-2A/B2B.dart';

class b2bResponse extends StatefulWidget {
  b2bResponse({Key key, this.year, this.gstin, this.month}) : super(key: key);
  String year;
  String month;
  String gstin;

  @override
  _b2bResponseState createState() => _b2bResponseState();
}

class _b2bResponseState extends State<b2bResponse> {
  ApiResponse<B2B> apiResponse2;


  ApiServices apiServices = ApiServices();

  @override
  void initState() {
    // insert = GstReturn(gstin: widget.gst, financialYear: widget.year);
    print(widget.gstin);
    getData();

    super.initState();
  }

  // var insert;
  bool isLoading = false;

  getData() async {
    setState(() {
      isLoading = true;
    });
    apiResponse2 = await apiServices.gstr2Ab2b(widget.gstin,widget.year,widget.month);
    // obj = apiResponseTest.data;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
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
                            'GST Return',
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
                  height: 10,
                ),
                Column(
                    children: apiResponse2.data.message.b2B.map((e) {
                      return SizedBox(
                        width: double.infinity,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10,top: 20),
                            child: Column(
                              children: e.inv.map((e)  {
                                return Column(
                                  children: e.itms.map((e) {
                                    return Text(e.itmDet.csamt.toString());
                                  }).toList(),

                                );
                              }).toList()

                            ),
                          ),
                        ),
                      );
                    }).toList()),
                // listssss(context),
              ],
            ),
          ),
        ),
      ),
    );
  }




}
