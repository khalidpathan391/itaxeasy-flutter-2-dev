import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../Calculator/ifsc_calcii/Theme.dart';
import '../api/pdf_api.dart';
import '../api/pdf_invoice_api.dart';
import '../model/customer.dart';
import '../model/invoice.dart';
import '../model/supplier.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({Key key}) : super(key: key);

  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  Invoice invoice = const Invoice();
  TextEditingController nameCont = TextEditingController();
  TextEditingController descripCount = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController unit = TextEditingController();
  TextEditingController NameCont = TextEditingController();
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    // IconButton(
                    //   onPressed: () {
                    //     Navigator.of(context).pop();
                    //   },
                    //   icon: const Icon(Icons.arrow_back),
                    // ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Sale Voucher',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "GSTIN No:",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "________________",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name of the party",
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
                    controller: NameCont,
                    decoration: InputDecoration(
                      hintText: 'Name',
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
                      "Address",
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
                    controller: nameCont,
                    decoration: InputDecoration(
                      hintText: 'Address',
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
                      "GSTIN No ",
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
                    // controller: nameCont,
                    decoration: InputDecoration(
                      hintText: 'GSTIN No of the party',
                      hintStyle: heading6.copyWith(color: textGrey),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    GFRadio(
                      size: 20,
                      value: 0,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: null,
                      activeBorderColor: GFColors.SUCCESS,
                      radioColor: GFColors.SUCCESS,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Intra",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GFRadio(
                      size: 20,
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: null,
                      activeBorderColor: GFColors.SUCCESS,
                      radioColor: GFColors.SUCCESS,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Inter",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GFRadio(
                      size: 20,
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: null,
                      activeBorderColor: GFColors.SUCCESS,
                      radioColor: GFColors.SUCCESS,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "UT",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Item Name",
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
                    controller: descripCount,
                    decoration: InputDecoration(
                      hintText: 'Item Name',
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
                      "Quantity",
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
                    controller: quantity,
                    decoration: InputDecoration(
                      hintText: 'Quantity',
                      hintStyle: heading6.copyWith(color: textGrey),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    groupValue == 1
                        ? Expanded(
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "IGST",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    groupValue == 0
                        ? Expanded(
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "CGST",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    groupValue == 0
                        ? Expanded(
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "SGST",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    groupValue == 2
                        ? Expanded(
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "UTGST",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
                Row(
                  children: [
                    groupValue == 1
                        ? Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: vat,
                                decoration: InputDecoration(
                                  hintText: 'IGST',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    SizedBox(width: 5),
                    groupValue == 0
                        ? Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: vat,
                                decoration: InputDecoration(
                                  hintText: 'CGST',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    SizedBox(width: 5),
                    groupValue == 0
                        ? Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: vat,
                                decoration: InputDecoration(
                                  hintText: 'SGST',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                    groupValue == 2
                        ? Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: vat,
                                decoration: InputDecoration(
                                  hintText: 'UTGST',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Price",
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
                    controller: unit,
                    decoration: InputDecoration(
                      hintText: 'Price',
                      hintStyle: heading6.copyWith(color: textGrey),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: GFButton(
                    color: Colors.blue.shade900,
                    text: 'Invoice PDF',
                    onPressed: () async {
                      final date = DateTime.now();
                      final dueDate = date.add(const Duration(days: 7));

                      final invoice = Invoice(
                        supplier: Supplier(
                          name: nameCont.text,
                          address: 'Sarah Street 9, Beijing, China',
                          paymentInfo: 'https://paypal.me/sarahfieldzz',
                        ),
                        customer: Customer(
                          name: NameCont.text,
                          address: 'Apple Street, Cupertino, CA 95014',
                        ),
                        info: InvoiceInfo(
                          date: date,
                          dueDate: dueDate,
                          description: 'My description...',
                          number: '${DateTime.now().year}-9999',
                        ),
                        items: [
                          InvoiceItem(
                            description: descripCount.text,
                            date: DateTime.now(),
                            quantity: int.parse(quantity.text),
                            vat: double.parse(vat.text),
                            unitPrice: double.parse(unit.text),
                          ),
                          // InvoiceItem(
                          //   description: 'Water',
                          //   date: DateTime.now(),
                          //   quantity: 8,
                          //   vat: 0.19,
                          //   unitPrice: 0.99,
                          // ),
                          // InvoiceItem(
                          //   description: 'Orange',
                          //   date: DateTime.now(),
                          //   quantity: 3,
                          //   vat: 0.19,
                          //   unitPrice: 2.99,
                          // ),
                          // InvoiceItem(
                          //   description: 'Apple',
                          //   date: DateTime.now(),
                          //   quantity: 8,
                          //   vat: 0.19,
                          //   unitPrice: 3.99,
                          // ),
                          // InvoiceItem(
                          //   description: 'Mango',
                          //   date: DateTime.now(),
                          //   quantity: 1,
                          //   vat: 0.19,
                          //   unitPrice: 1.59,
                          // ),
                          // InvoiceItem(
                          //   description: 'Blue Berries',
                          //   date: DateTime.now(),
                          //   quantity: 5,
                          //   vat: 0.19,
                          //   unitPrice: 0.99,
                          // ),
                          // InvoiceItem(
                          //   description: 'Lemon',
                          //   date: DateTime.now(),
                          //   quantity: 4,
                          //   vat: 0.19,
                          //   unitPrice: 1.29,
                          // ),
                        ],
                      );

                      final pdfFile = await PdfInvoiceApi.generate(invoice);

                      PdfApi.openFile(pdfFile);
                    },
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
