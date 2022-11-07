import 'package:flutter/material.dart';

class MyInvoicee extends StatefulWidget {
  const MyInvoicee({Key key}) : super(key: key);

  @override
  State<MyInvoicee> createState() => _MyInvoiceeState();
}

class _MyInvoiceeState extends State<MyInvoicee> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController namectrl = new TextEditingController();
  TextEditingController datectrl = new TextEditingController();
  TextEditingController gstinctrl = new TextEditingController();
  TextEditingController addctrl = new TextEditingController();
  TextEditingController gstctrl = new TextEditingController();
  TextEditingController statectrl = new TextEditingController();
  TextEditingController termsctrl = new TextEditingController();
  TextEditingController pricectrl = new TextEditingController();
  TextEditingController igstctrl = new TextEditingController();
  TextEditingController cgstctrl = new TextEditingController();
  TextEditingController sgstctrl = new TextEditingController();
  TextEditingController alfatctrl = new TextEditingController();
  TextEditingController numericctrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,MaterialPageRoute(builder:(context)=> const Dashboard())
                  // );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Invoice",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(children: [
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                      key: _formKey,
                      child: Container(
                          child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new TextFormField(
                                    controller: datectrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "Date",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new TextFormField(
                                    controller: gstinctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "GSTIN No.",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // TextFormField(
                          //   controller: datectrl,
                          //   validator: (value) {
                          //     if (value == null || value.isEmpty) {
                          //       return "*  Required  *";
                          //     }
                          //   },
                          //   decoration: InputDecoration(

                          //       // border: OutlineInputBorder(
                          //       //   borderRadius: BorderRadius.circular(10),
                          //       // ),

                          //       border: UnderlineInputBorder(
                          //         borderSide:
                          //             BorderSide(color: Colors.blue.shade900),
                          //       ),
                          //       focusedBorder: UnderlineInputBorder(
                          //         borderSide:
                          //             BorderSide(color: Colors.blue.shade900),
                          //       ),
                          //       hintText: "Date",
                          //       contentPadding: EdgeInsets.all(10),
                          //       prefixIcon: Icon(
                          //         Icons.phone,
                          //         color: Colors.blue.shade900,
                          //       )),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: namectrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "Name",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.details,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: addctrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "Address",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.details,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: gstctrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "GSTIN NO.",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.gesture_outlined,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: statectrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "Intra State/Inter State/UT",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.gesture_outlined,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: pricectrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "Price",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.gesture_outlined,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: new TextFormField(
                                    controller: alfatctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "Item name",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: new TextFormField(
                                    controller: numericctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "Quantity",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Flexible(
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextFormField(
                                    controller: igstctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "IGST",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: new TextFormField(
                                    controller: cgstctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "CGST",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                              new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: new TextFormField(
                                    controller: sgstctrl,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "*  Required  *";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue.shade900),
                                      ),
                                      hintText: "SGST",
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: TextFormField(
                              controller: termsctrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*  Required  *";
                                }
                              },
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue.shade900),
                                  ),
                                  hintText: "Terms and Condition",
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(
                                    Icons.gesture_outlined,
                                    color: Colors.blue.shade900,
                                  )),
                            ),
                          ),
                        ],
                      )))),
            ],
          )
        ]),
      ),
    );
  }
}
