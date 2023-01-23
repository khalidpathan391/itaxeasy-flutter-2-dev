import 'dart:io';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:getwidget/Components/button/gf_button.dart';

import 'package:gst_app/Views/Invoice-Generator/api/pdf_api.dart';
import 'package:gst_app/Views/components/constants.dart';
import 'package:gst_app/Views/on_board_screens/Invoice/CreatenewParty.dart';
import 'package:gst_app/views/login_and_register/theme.dart';

import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:url_launcher/url_launcher.dart';

import 'invoiceItems.dart';

class Form3 extends StatefulWidget {
  const Form3({Key key}) : super(key: key);

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  final pdf = pw.Document();

  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  // List<Contact> contacts;

  TextEditingController Datectrl = new TextEditingController();
  TextEditingController Duectrl = new TextEditingController();

  TextEditingController GSTctrl = new TextEditingController();
  TextEditingController Invoicectrl = new TextEditingController();
  TextEditingController Refctrl = new TextEditingController();
  TextEditingController amountctrl = new TextEditingController();
  TextEditingController addressctrl = new TextEditingController();
  TextEditingController totalctrl = new TextEditingController();
  TextEditingController panctrl = new TextEditingController();
  TextEditingController bankdetailsctrl = new TextEditingController();
  TextEditingController accountctrl = new TextEditingController();
  TextEditingController branchsctrl = new TextEditingController();
  TextEditingController ifscctrl = new TextEditingController();
  TextEditingController amountwordsctrl = new TextEditingController();
  String duedate;
  List<Contact> contacts;
  List duedateList = [
    "7days",
    "15days",
    "30days",
    "45days",
    "60days",
    "Custom",
  ];
  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      print(contacts);
      setState(() {});
    }
  }

  void initState() {
    getContact();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Create Bill/Invoice "),
        actions: [
          IconButton(
              icon: const Icon(Icons.picture_as_pdf),
              onPressed: () {
                //createPDF();
                savePDF();
              })
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue.shade900,
      //   child: Icon(Icons.add, color: Colors.white),
      //   onPressed: getImageFromGallery,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 5, left: 10, top: 10, bottom: 5),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // color: Color.fromARGB(255, 210, 189, 214),
                      elevation: 0,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900.withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          // decoration: BoxDecoration(
                          //   color: Colors.blue.shade900.withOpacity(0.1),
                          //   borderRadius:
                          //       const BorderRadius.all(Radius.circular(10)),
                          // ),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Invoice No.",
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 12.5,
                                  ),
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.5,
                                    fontSize: 12.5,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cdate.toString(),
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                    isVisible
                                        ? const Icon(
                                            Icons.expand_less,
                                          )
                                        : const Icon(
                                            Icons.expand_more,
                                          ),
                                  ]),
                            ),
                            Visibility(
                              visible: isVisible,
                              child: Column(children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Invoice Date",
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
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: TextFormField(
                                    controller: Datectrl,
                                    readOnly: true,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Icon(
                                            Icons.calendar_today,
                                            color: Colors.blue.shade900,
                                          )),
                                      hintText: ' Enter Date:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    onTap: () async {
                                      DateTime pickedDate =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(
                                                  2000), //DateTime.now() - not to allow to choose before today.
                                              lastDate: DateTime(2101));

                                      if (pickedDate != null) {
                                        print(
                                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        print(
                                            formattedDate); //formatted date output using intl package =>  2021-03-16
                                        //you can implement different kind of Date Format here according to your requirement

                                        setState(() {
                                          Datectrl.text =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {
                                        print("Date is not selected");
                                      }
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Due Date",
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
                                  color: Colors.grey.shade200,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 5,
                                  child: Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade900.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
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
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
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
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Invoice Number",
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
                                    color:
                                        Colors.blue.shade900.withOpacity(0.1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: TextFormField(
                                    controller: amountctrl,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Invoice No:',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 10, top: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isVisible2 = !isVisible2;
                                      });
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          isVisible1
                                              ? Icon(
                                                  Icons.add_circle,
                                                  color: Colors.blue.shade900,
                                                )
                                              : Icon(
                                                  Icons.add,
                                                  color: Colors.blue.shade900,
                                                ),
                                          Text(
                                            "Add Prefix",
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
                                  visible: isVisible2,
                                  child: Row(
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
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Prefix",
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
                                                color: Colors.blue.shade900
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                              ),
                                              child: TextFormField(
                                                // controller: contactCont,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: InputDecoration(
                                                  hintText: 'BN/SL/:',
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
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
                                                  left: 10,
                                                  bottom: 10,
                                                  top: 10),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Starting Serial Number",
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
                                                  hintText: '1',
                                                  hintStyle: heading6.copyWith(
                                                      color: textGrey),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
                      ),
                    ),
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
                    contacts == null
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextFormField(
                              // controller: amountctrl,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue.shade900,
                                ),
                                hintText: 'Party Name:',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: contacts.length,
                            itemBuilder: (BuildContext context, int index) {
                              Uint8List image = contacts[index].photo;
                              String num = (contacts[index].phones.isNotEmpty)
                                  ? (contacts[index].phones.first.number)
                                  : "--";
                              return ListTile(
                                  leading: (contacts[index].photo == null)
                                      ? const CircleAvatar(
                                          child: Icon(Icons.person))
                                      : CircleAvatar(
                                          backgroundImage: MemoryImage(image)),
                                  title: Text(
                                      "${contacts[index].name.first} ${contacts[index].name.last}"),
                                  subtitle: Text(num),
                                  onTap: () {
                                    if (contacts[index].phones.isNotEmpty) {
                                      launch('tel: ${num}');
                                    }
                                  });
                            },
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
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                "Mobile Number",
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
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Mobile Number",
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
                            controller: amountctrl,
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
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: ElevatedButton(
                                    child: const Text("Add more details"),
                                    // textColor: Colors.white,
                                    // color: Colors.green,
                                    onPressed: () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CreateNewFiled()));
                                    },
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius:
                                    //         BorderRadius.circular(20.0)),
                                  ),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "ITEMS",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 12.5,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // isVisible = false;
                        // isVisible1 = false;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemsAdd()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        // color: Color.fromARGB(255, 210, 189, 214),
                        elevation: 20,
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Add items",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 12.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: GFButton(
                  color: Colors.blue.shade900,
                  text: 'Invoice PDF',
                  onPressed: () async {
                    final pdfFile = await generatePDF();
                    PdfApi.openFile(pdfFile);
                    // final date = DateTime.now();
                    // final dueDate = date.add(const Duration(days: 7));

                    // final invoice = Invoice(
                    //     supplier: Supplier(
                    //       // name: nameCont.text,
                    //       address: 'Sarah Street 9, Beijing, China',
                    //       paymentInfo: 'https://paypal.me/sarahfieldzz',
                    //     ),
                    //     customer: Customer(
                    //       // name: NameCont.text,
                    //       address: 'Apple Street, Cupertino, CA 95014',
                    //     ),
                    //     info: InvoiceInfo(
                    //       date: date,
                    //       dueDate: dueDate,
                    //       description: 'My description...',
                    //       number: '${DateTime.now().year}-9999',
                    //     ),
                    //     items: [
                    //       InvoiceItem(
                    //         // description: descripCount.text,
                    //         date: DateTime.now(),
                    //         // quantity: int.parse(quantity.text),
                    //         //vat: double.parse(vat.text),
                    //         //unitPrice: double.parse(unit.text),
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Water',
                    //         date: DateTime.now(),
                    //         quantity: 8,
                    //         vat: 0.19,
                    //         unitPrice: 0.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Orange',
                    //         date: DateTime.now(),
                    //         quantity: 3,
                    //         vat: 0.19,
                    //         unitPrice: 2.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Apple',
                    //         date: DateTime.now(),
                    //         quantity: 8,
                    //         vat: 0.19,
                    //         unitPrice: 3.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Mango',
                    //         date: DateTime.now(),
                    //         quantity: 1,
                    //         vat: 0.19,
                    //         unitPrice: 1.59,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Blue Berries',
                    //         date: DateTime.now(),
                    //         quantity: 5,
                    //         vat: 0.19,
                    //         unitPrice: 0.99,
                    //       ),
                    //       InvoiceItem(
                    //         description: 'Lemon',
                    //         date: DateTime.now(),
                    //         quantity: 4,
                    //         vat: 0.19,
                    //         unitPrice: 1.29,
                    //       ),
                    //     ]);

                    // final pdfFile = await PdfInvoiceApi.generate(invoice);

                    // PdfApi.openFile(pdfFile);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<File> generatePDF() async {
    final pdf = pw.Document();

    final iconImage = (await rootBundle.load(
      'assets/images/accent.png',
    ))
        .buffer
        .asUint8List();

    final tableHeaders = [
      'SR NO.',
      'DESCRIPTION',
      'AMOUNT',
    ];

    final tableData = [
      [
        '1',
        bankdetailsctrl.text,
        amountctrl.text,
      ],
    ];

    pdf.addPage(
      pw.MultiPage(
        // header: (context) {
        //   return pw.Text(
        //     'Flutter Approach',
        //     style: pw.TextStyle(
        //       fontWeight: pw.FontWeight.bold,
        //       fontSize: 15.0,
        //     ),
        //   );
        // },
        build: (context) {
          return [
            pw.Row(
              children: [
                pw.Image(
                  pw.MemoryImage(iconImage),
                  height: 72,
                  width: 72,
                ),
                pw.SizedBox(width: 1 * PdfPageFormat.mm),
                pw.Column(
                  mainAxisSize: pw.MainAxisSize.min,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'ITaxEasy',
                      style: pw.TextStyle(
                        fontSize: 25.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      'Govt. Contractor & \nGeneral Order Suppliers',
                      style: const pw.TextStyle(
                        fontSize: 15.0,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ],
                ),
                pw.Spacer(),
                pw.Column(
                  mainAxisSize: pw.MainAxisSize.min,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Name-  Khalid Pathan",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      'Email-  kk7355570@gmail.com',
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Row(children: [
                      pw.Text(
                        "GST NO:",
                        style: pw.TextStyle(
                          fontSize: 15.5,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        GSTctrl.text,
                        style: pw.TextStyle(
                          fontSize: 15.5,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Divider(),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Row(
              // mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  " Ref No:",
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  Refctrl.text,
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(width: 80 * PdfPageFormat.mm),
                pw.Text(
                  "Date:",
                  style: pw.TextStyle(
                    fontSize: 15.5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(width: 2 * PdfPageFormat.mm),
                // pw.Divider(),
                pw.Text(Datectrl.text),
                //  pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Spacer(),
              ],
            ),
            pw.Divider(),
            //  pw.SizedBox(height: 5 * PdfPageFormat.mm),
            pw.Center(
              child: pw.Text(
                'Tax Invoive',
                style: pw.TextStyle(
                  fontSize: 15.5,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.justify,
              ),
            ),
            pw.Divider(),
            pw.SizedBox(height: 1 * PdfPageFormat.mm),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(children: [
                  pw.Text(
                    "To:",
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    addressctrl.text,
                  ),
                  pw.Text(
                    "MR: 10 JUNCTION ",
                  ),
                  pw.Text(
                    "INDORE:(M.P.)-452016",
                  ),
                ]),
                // pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Divider(),
                pw.Column(children: [
                  pw.Row(children: [
                    pw.Text(
                      "Invoice NO:",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      Invoicectrl.text,
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ]),
                  pw.SizedBox(height: 5 * PdfPageFormat.mm),
                  pw.Row(children: [
                    pw.Text(
                      "Date",
                      style: pw.TextStyle(
                        fontSize: 15.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(width: 3 * PdfPageFormat.mm),
                    pw.Text(Datectrl.text),
                  ]),
                ]),
                //  pw.SizedBox(height: 1 * PdfPageFormat.mm),
                // pw.Spacer(),
              ],
            ),

            ///
            /// PDF Table Create
            ///
            pw.Table.fromTextArray(
              headers: tableHeaders,
              data: tableData,
              border: null,
              headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              headerDecoration:
                  const pw.BoxDecoration(color: PdfColors.grey300),
              cellHeight: 30.0,
              cellAlignments: {
                0: pw.Alignment.centerLeft,
                1: pw.Alignment.centerRight,
                2: pw.Alignment.centerRight,
              },
            ),
            pw.Divider(),
            pw.Container(
              alignment: pw.Alignment.centerRight,
              child: pw.Row(
                children: [
                  pw.Spacer(flex: 6),
                  pw.Expanded(
                    flex: 4,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'CGST @9%',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 464',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'SGST @9%',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 90.48',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'ROUND OFF',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              ' 0.12%',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(),
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                'Total amount due',
                                style: pw.TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.Text(
                              totalctrl.text,
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.SizedBox(height: 2 * PdfPageFormat.mm),
                        pw.Container(height: 1, color: PdfColors.grey400),
                        pw.SizedBox(height: 0.5 * PdfPageFormat.mm),
                        pw.Container(height: 1, color: PdfColors.grey400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            pw.Divider(),
            //  pw.SizedBox(height: 5 * PdfPageFormat.mm),
            pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                pw.SizedBox(height: 2 * PdfPageFormat.mm),
                pw.Row(children: [
                  pw.Text(
                    "Amount in Words  :-",
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(
                    width: 20,
                  ),
                  pw.Text(
                    amountwordsctrl.text,
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ]),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.Column(children: [
                      pw.Row(children: [
                        pw.Text(
                          "GST No:",
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          width: 5,
                        ),
                        pw.Text(
                          GSTctrl.text,
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ]),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Row(children: [
                        pw.Text(
                          "PAN No:",
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          width: 5,
                        ),
                        pw.Text(
                          panctrl.text,
                          style: pw.TextStyle(
                            fontSize: 15.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ]),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Column(children: [
                            pw.Row(children: [
                              pw.Text(
                                "Bank Details:",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                bankdetailsctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "Account No:",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                accountctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "IFSc",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                ifscctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Row(children: [
                              pw.Text(
                                "Branch",
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(
                                width: 5,
                              ),
                              pw.Text(
                                branchsctrl.text,
                                style: pw.TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]),
                            pw.SizedBox(
                              height: 10,
                            ),
                          ]),
                        ],
                      ),
                    ]),
                  ],
                ),
                pw.SizedBox(height: 1 * PdfPageFormat.mm),
              ],
            ),

            pw.SizedBox(height: 1 * PdfPageFormat.mm),
          ];
        },
        footer: (context) {
          return pw.Column(
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              pw.Divider(),
              pw.SizedBox(height: 2 * PdfPageFormat.mm),
              pw.Text(
                'ITaxEasy pvt.Lmt',
                style: pw.TextStyle(
                  fontSize: 15.5,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 1 * PdfPageFormat.mm),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text(
                    'Address: ',
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    'Noida sector 243',
                  ),
                ],
              ),
              pw.SizedBox(height: 1 * PdfPageFormat.mm),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text(
                    'Email: ',
                    style: pw.TextStyle(
                      fontSize: 15.5,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    'kk7355570@gmail.com',
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    return PdfApi.saveDocument(name: 'GSTCalculator.pdf', pdf: pdf);
  }

  savePDF() async {
    try {
      final dir = await getExternalStorageDirectory();
      final file = File('${dir.path}/filename.pdf');
      await file.writeAsBytes(await pdf.save());
      showPrintedMessage('success', 'saved to documents');
      print(file.path);
      OpenFile.open(file.path);
    } catch (e) {
      showPrintedMessage('error', e.toString());
    }
  }

  showPrintedMessage(String title, String msg) {
    // Flushbar(
    //   title: title,
    //   message: msg,
    //   duration: Duration(seconds: 3),
    //   icon: Icon(
    //     Icons.info,
    //     color: Colors.blue,
    //   ),
    // )..show(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title + msg),
    ));
  }

  // void getContact() async {
  //   if (await FlutterContacts.requestPermission()) {
  //     contacts = await FlutterContacts.getContacts(
  //         withProperties: true, withPhoto: true);
  //     print(contacts);
  //     setState(() {});
  //   }
  // }
}
