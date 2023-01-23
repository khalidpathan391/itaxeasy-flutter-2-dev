import 'dart:io';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';
import 'package:gst_app/Views/OCR/ocr.dart';
import 'package:gst_app/views/login_and_register/theme.dart';
import 'package:image_picker/image_picker.dart';

class ItemsAdd extends StatefulWidget {
  const ItemsAdd({Key key}) : super(key: key);

  @override
  State<ItemsAdd> createState() => _ItemsAddState();
}

class _ItemsAddState extends State<ItemsAdd> {
  File _image;
  TextEditingController textController = new TextEditingController();
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
  bool status = false;
  String addunits;
  List unitList = [
    "LADI",
    "PETI",
    "JARS",
    "HANGER",
    "POUCH",
    "BORA",
    "COIL",
    "FEET",
    "INCHES",
    "PORTION",
    "CASE",
    "EACH",
    "CAPSULES",
    "PACKETS",
    "STONE",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            // top: 1.0,
                            // left: 50,
                            ),
                        child: Container(
                          height: 60,
                          child: AnimSearchBar(
                            width: 200,
                            textController: textController,
                            onSuffixTap: () {
                              setState(() {
                                textController.clear();
                              });
                            },
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OCRScreen()));
                            //createPDF();
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.mic,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () {
                            //createPDF();
                          }),
                      // const SizedBox(
                      //   width: 20,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      bottom: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isVisible
                                ? Icon(
                                    Icons.minimize,
                                    color: Colors.blue.shade900,
                                  )
                                : Icon(
                                    Icons.add,
                                    color: Colors.blue.shade900,
                                  ),
                            Text(
                              "Create New Item",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Item Name",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextFormField(
                            // controller: amountctrl,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Items:',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 5, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Item Type",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: GFButton(
                                  color: Colors.blue.shade900,
                                  padding: const EdgeInsets.all(10),
                                  shape: GFButtonShape.pills,
                                  onPressed: () {
                                    setState(() {
                                      isVisible1 = !isVisible1;

                                      isVisible2 = false;
                                    });

                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Gstn()));
                                  },
                                  text: "Product"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: GFButton(
                                  color: Colors.blue.shade300,
                                  padding: const EdgeInsets.all(10),
                                  shape: GFButtonShape.pills,
                                  onPressed: () {
                                    setState(() {
                                      isVisible2 = !isVisible2;
                                      isVisible1 = false;
                                    });
                                  },
                                  text: "Service"),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: isVisible1,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isVisible3 = !isVisible3;
                                          isVisible4 = false;
                                          isVisible5 = false;
                                        });
                                      },
                                      child: Text(
                                        "Pricing",
                                        style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 12.5,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isVisible4 = !isVisible4;
                                          isVisible3 = false;
                                          isVisible5 = false;
                                        });
                                      },
                                      child: Text(
                                        "Stock",
                                        style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 12.5,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isVisible5 = !isVisible5;
                                          isVisible4 = false;
                                          isVisible3 = false;
                                        });
                                      },
                                      child: Text(
                                        "Other",
                                        style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5,
                                          fontSize: 12.5,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Visibility(
                                visible: isVisible3,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, bottom: 10, top: 10, right: 20),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Unit",
                                          style: TextStyle(
                                            // color: Colors.blue.shade900,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 5,
                                          color: Colors.grey.shade200,
                                          child: Container(
                                            width: 150,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade900
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: DropdownButton(
                                                onChanged: (value) {
                                                  setState(() {
                                                    addunits = value as String;
                                                  });
                                                },
                                                hint: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Text(
                                                    "Add Units",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                ),
                                                underline: Text(""),
                                                isExpanded: true,
                                                value: addunits,
                                                items: unitList.map<
                                                    DropdownMenuItem<
                                                        String>>((e) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    child: Text(
                                                      e,
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                    value: e,
                                                  );
                                                }).toList()),
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isVisible6 = !isVisible6;
                                        });
                                      },
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            isVisible6
                                                ? Icon(
                                                    Icons.minimize,
                                                    color: Colors.blue.shade900,
                                                  )
                                                : Icon(
                                                    Icons.add,
                                                    color: Colors.blue.shade900,
                                                  ),
                                            Text(
                                              "Add GST & Tax Details",
                                              style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w800,
                                                letterSpacing: 1.5,
                                                fontSize: 12.5,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Visibility(
                                      visible: isVisible6,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 10, top: 10),
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10,
                                                          bottom: 10,
                                                          top: 10),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          "HSN",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 1.5,
                                                            fontSize: 10.5,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .blue.shade900
                                                            .withOpacity(0.1),
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    10)),
                                                      ),
                                                      child: TextFormField(
                                                        // controller: contactCont,
                                                        keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'HSN:',
                                                          hintStyle:
                                                              heading6.copyWith(
                                                                  color:
                                                                      textGrey),
                                                          border:
                                                              const OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide.none,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10,
                                                          bottom: 10,
                                                          top: 10),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          "GST",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 1.5,
                                                            fontSize: 10.5,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .blue.shade900
                                                            .withOpacity(0.1),
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    10)),
                                                      ),
                                                      child: TextFormField(
                                                        // controller: contactCont,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'GST',
                                                          hintStyle:
                                                              heading6.copyWith(
                                                                  color:
                                                                      textGrey),
                                                          border:
                                                              const OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide.none,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, bottom: 10, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Sales Price",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: TextFormField(
                                        //controller: amountctrl,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: 'Rs___:',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
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
                                          "Purchase Price",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: TextFormField(
                                        // controller: amountctrl,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: 'Rs__:',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )),
                            Visibility(
                                visible: isVisible5,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10, right: 10),
                                  child: Column(children: [
                                    Column(
                                      children: <Widget>[
                                        Stack(fit: StackFit.loose, children: <
                                            Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              _image == null
                                                  ? Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: const Icon(
                                                        Icons
                                                            .add_a_photo_outlined,
                                                        size: 50,
                                                      ),
                                                    )
                                                  : ClipOval(
                                                      child: Image.file(
                                                        _image,
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                            ],
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 90.0, right: 100.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {
                                                      _showPicker(context);
                                                    },
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.blue.shade900,
                                                      radius: 25.0,
                                                      child: Icon(
                                                        Icons.camera_alt,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ])
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 5,
                                          color: Colors.grey.shade200,
                                          child: Container(
                                            width: 150,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade900
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: DropdownButton(
                                                onChanged: (value) {
                                                  setState(() {
                                                    addunits = value as String;
                                                  });
                                                },
                                                hint: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Text(
                                                    "Select Category",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                ),
                                                underline: Text(""),
                                                isExpanded: true,
                                                value: addunits,
                                                items: unitList.map<
                                                    DropdownMenuItem<
                                                        String>>((e) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    child: Text(
                                                      e,
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                    value: e,
                                                  );
                                                }).toList()),
                                          ),
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 5,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade900
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  CustomCheckbox(),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Show In Online Store",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 1.5,
                                                      fontSize: 12.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, bottom: 10, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Add Remark",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: TextFormField(
                                        //controller: amountctrl,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: 'IMEI No.',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )),
                            Visibility(
                                visible: isVisible4,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10, right: 10),
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    bottom: 10,
                                                    top: 10),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Opening Stock",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 1.5,
                                                      fontSize: 12.5,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                                child: TextFormField(
                                                  // controller: contactCont,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  decoration: InputDecoration(
                                                    // hintText: '',
                                                    hintStyle:
                                                        heading6.copyWith(
                                                            color: textGrey),
                                                    border:
                                                        const OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    bottom: 10,
                                                    top: 10),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "As of Date",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 1.5,
                                                      fontSize: 12.5,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                                child: TextFormField(
                                                  // controller: contactCont,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                    // hintText: '1',
                                                    hintStyle:
                                                        heading6.copyWith(
                                                            color: textGrey),
                                                    border:
                                                        const OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      elevation: 5,
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow.shade400
                                                .withOpacity(0.1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Low Stock Warming",
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 1.5,
                                                    fontSize: 12.5,
                                                  ),
                                                ),
                                                FlutterSwitch(
                                                  width: 60.0,
                                                  height: 30.0,
                                                  valueFontSize: 10.0,
                                                  toggleSize: 10.0,
                                                  value: status,
                                                  borderRadius: 30.0,
                                                  padding: 8.0,
                                                  // showOnOff: true,
                                                  onToggle: (val) {
                                                    setState(() {
                                                      status = val;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, bottom: 10, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Item Code",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: TextFormField(
                                        //controller: amountctrl,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          // hintText: 'Rs___:',
                                          hintStyle: heading6.copyWith(
                                              color: textGrey),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )),
                          ]),
                        ),
                        Visibility(
                          visible: isVisible2,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Pricing",
                                      style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                    Text(
                                      "Other",
                                      style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900.withOpacity(0.1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: TextFormField(
                                //controller: amountctrl,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  hintText: 'Party name:',
                                  hintStyle: heading6.copyWith(color: textGrey),
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
                                  "Pricing",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 12.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900.withOpacity(0.1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: TextFormField(
                                //  maxLength: 10,
                                // controller: amountctrl,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Mobile No:',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 45.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: ElevatedButton(
                                        child: const Text("Add more details"),
                                        // textColor: Colors.white,
                                        // color: Colors.green,
                                        onPressed: () async {},
                                        // shape: RoundedRectangleBorder(
                                        //     borderRadius:
                                        //         BorderRadius.circular(20.0)),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: RaisedButton(
                                        child: const Text("Save"),
                                        textColor: Colors.white,
                                        color: Colors.blue.shade900,
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 40,
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
                    onPressed: () async {},
                    text: "Save",
                  ),
                ),
              ),
            ])));
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    onTap: () {
                      getImagefromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    getImagefromcamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  // File file = File( _image.path );
  Future getImagefromcamera() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }

  Future getImagefromGallery() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }
}
