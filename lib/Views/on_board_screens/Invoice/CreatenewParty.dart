import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/Theme.dart';

class CreateNewFiled extends StatefulWidget {
  const CreateNewFiled({Key key}) : super(key: key);

  @override
  State<CreateNewFiled> createState() => _CreateNewFiledState();
}

class _CreateNewFiledState extends State<CreateNewFiled> {
  bool isVisible = false;
  bool isVisible1 = false;

  bool isVisible3 = false;
  bool isVisible4 = false;
  String duedate;
  String category;
  List duedateList = [
    "7days",
    "15days",
    "30days",
    "45days",
    "60days",
    "Custom",
  ];
  List categoryList = [
    "Select Category",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10),
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

                    Text(
                      "Create New Party",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.settings,
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
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Party Name",
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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Contact No.",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 10.5,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: TextFormField(
                                  // controller: contactCont,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'No:',
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
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Party Type",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5,
                                      fontSize: 10.5,
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
                                            // isVisible1 = !isVisible1;
                                          });

                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => Gstn()));
                                        },
                                        text: "Customer"),
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
                                            // isVisible2 = !isVisible2;
                                          });
                                        },
                                        text: "Supplier"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible3 = !isVisible3;
                                isVisible1 = false;
                                isVisible = false;
                                isVisible4 = false;
                              });
                            },
                            child: Text(
                              "Basic Info",
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
                                isVisible = !isVisible;
                                isVisible1 = false;
                                isVisible3 = false;
                                isVisible4 = false;
                                // isVisible2 = false;
                              });
                            },
                            child: Text(
                              "Credit Info",
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
                                isVisible1 = false;
                                isVisible3 = false;
                                isVisible = false;
                              });
                            },
                            child: Text(
                              "Other Details",
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
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "GST No",
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
                          //controller: amountctrl,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            hintText: 'GST No:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "PAN No.",
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
                          textCapitalization: TextCapitalization.characters,
                          decoration: InputDecoration(
                            hintText: 'PAN No:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible1 = !isVisible1;
                              isVisible = false;
                            });
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                isVisible1
                                    ? Icon(
                                        Icons.minimize,
                                        color: Colors.blue.shade900,
                                      )
                                    : Icon(
                                        Icons.add,
                                        color: Colors.blue.shade900,
                                      ),
                                Text(
                                  "Billing Address",
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
                        visible: isVisible1,
                        child: Column(children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "State",
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
                              //controller: amountctrl,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                hintText: 'State:',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Address",
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
                              //controller: amountctrl,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Address:',
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
                        ]),
                      ),
                    ]),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Column(children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Opening Balance",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 10.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: TextFormField(
                                    // controller: contactCont,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Rs___:',
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 10.5,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    FadeInRight(
                                      delay: const Duration(milliseconds: 500),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: GFButton(
                                          color: Colors.blue.shade900,
                                          padding: const EdgeInsets.all(10),
                                          shape: GFButtonShape.pills,
                                          onPressed: () {
                                            setState(() {
                                              // isVisible1 = !isVisible1;
                                            });

                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) => Gstn()));
                                          },
                                          text: "I Received"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    FadeInRight(
                                      delay: const Duration(milliseconds: 500),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: GFButton(
                                          color: Colors.blue.shade300,
                                          padding: const EdgeInsets.all(10),
                                          shape: GFButtonShape.pills,
                                          onPressed: () {
                                            setState(() {
                                              // isVisible2 = !isVisible2;
                                            });
                                          },
                                          text: "I Pay"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Credit period(Days)",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 10.5,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        color: Colors.grey.shade200,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: DropdownButton(
                              onChanged: (value) {
                                setState(() {
                                  duedate = value as String;
                                });
                              },
                              hint: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Select",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                              underline: Text(""),
                              isExpanded: true,
                              value: duedate,
                              items: duedateList
                                  .map<DropdownMenuItem<String>>((e) {
                                return DropdownMenuItem<String>(
                                  child: Text(
                                    e,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  value: e,
                                );
                              }).toList()),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Credit Limit",
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
                          //controller: amountctrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Rs___:',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Visibility(
                    visible: isVisible4,
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Party Category",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.topLeft,
                          //   child: Container(
                          //     width: 150,
                          //     decoration: BoxDecoration(
                          //       color: Colors.blue.shade900.withOpacity(0.1),
                          //       borderRadius:
                          //           const BorderRadius.all(Radius.circular(10)),
                          //     ),
                          //     child: TextFormField(
                          //       //  maxLength: 10,
                          //       // controller: amountctrl,
                          //       textCapitalization:
                          //           TextCapitalization.characters,
                          //       decoration: InputDecoration(
                          //         hintText: 'Select Category',
                          //         hintStyle: heading6.copyWith(
                          //             fontWeight: FontWeight.bold),
                          //         border: const OutlineInputBorder(
                          //           borderSide: BorderSide.none,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 5,
                              // color: Colors.grey.shade200,
                              child: Container(
                                width: 150,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: DropdownButton(
                                    onChanged: (value) {
                                      setState(() {
                                        category = value as String;
                                      });
                                    },
                                    hint: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      ),
                                    ),
                                    underline: Text(""),
                                    isExpanded: true,
                                    value: category,
                                    items: categoryList
                                        .map<DropdownMenuItem<String>>((e) {
                                      return DropdownMenuItem<String>(
                                        child: Text(
                                          e,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        value: e,
                                      );
                                    }).toList()),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Custom Fileds",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: FadeInRight(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: GFButton(
                                  color: Colors.blue.shade500,
                                  padding: const EdgeInsets.all(10),
                                  shape: GFButtonShape.pills,
                                  onPressed: () {
                                    setState(() {
                                      // isVisible1 = !isVisible1;
                                    });

                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Gstn()));
                                  },
                                  text: "Add Fields to Party"),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 80,
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
                ]),
              ]))
        ],
      ),
    );
  }
}
