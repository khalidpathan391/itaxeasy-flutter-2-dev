import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../Calculator/ifsc_calcii/Theme.dart';
import 'package:getwidget/getwidget.dart';

import 'package:awesome_dialog/awesome_dialog.dart';

import 'AddRecord.dart';

class B2cInvoice extends StatefulWidget {
  const B2cInvoice({Key key}) : super(key: key);

  @override
  State<B2cInvoice> createState() => _B2cInvoiceState();
}

class _B2cInvoiceState extends State<B2cInvoice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                            'GSTR-1/IFF/B2CL',
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade900.withOpacity(0.5),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "5A - B2C (Large) Invoices",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 13.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Recipient wise count",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 16.5,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade900.withOpacity(0.5),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "There are no records to be displayed.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 13.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FadeInRight(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AddRecordB2C()));
                                    },
                                    text: "ADD RECORD"),
                              ),
                              FadeInRight(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      AwesomeDialog(
                                        context: context,
                                        animType: AnimType.SCALE,
                                        dialogType: DialogType.ERROR,
                                        body: Column(
                                          children: const [
                                            Text(
                                              "Information",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.5,
                                                fontSize: 16.5,
                                              ),
                                            ),
                                            Text(
                                              'For current tax period no EWB invoices are available to import.',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ],
                                        ),
                                        btnOkColor: Colors.red,
                                        btnOkOnPress: () {},
                                      ).show();
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                    },
                                    text: "IMPORT EWB DATA"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
