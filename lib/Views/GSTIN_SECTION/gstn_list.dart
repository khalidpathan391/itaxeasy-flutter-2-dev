import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import '../components/constants.dart';
import 'GSTR-3b/Chalaan.dart';
import 'GSTR-3b/Gstr-4A.dart';
import 'GSTR-3b/GstrSalePurchase.dart';
import 'GSTR-3b/SalePurchaseAdd.dart';
import 'GSTR1/prepare_online.dart';

class GstnList extends StatefulWidget {
  const GstnList({Key key}) : super(key: key);

  @override
  _GstnListState createState() => _GstnListState();
}

class _GstnListState extends State<GstnList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                              'Gstin List',
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
                    height: 48,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              const Text(
                                "Details of outward supplies of\ngoods or services.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "GSTR1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
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
                                                  const PrepareOnline()));
                                    },
                                    text: "PREPARE ONLINE"),
                              ),
                              FadeInRight(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                    },
                                    text: "PREPARE OFFLINE"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              const Text(
                                "Auto Drafted details\n(For view only)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "GSTR2A",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
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
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                ListTile(
                                                  leading:
                                                      new Icon(Icons.photo),
                                                  title:
                                                      new Text('View GSTR2A'),
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      Icon(Icons.music_note),
                                                  title:
                                                      Text('Download GSTR2A'),
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    text: "VIEW"),
                              ),
                              FadeInRight(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 500),
                                child: GFButton(
                                    color: Colors.blue.shade900,
                                    padding: const EdgeInsets.all(10),
                                    shape: GFButtonShape.pills,
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              const Text(
                                "Auto - drafted ITC Statement\nfor the month",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "GSTR2B",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
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
                                                  SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                                  SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              const Text(
                                "Auto - drafted ITC Statement\nfor the quarter",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "GSTR-2B",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "Quaterly View",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
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
                                              builder: (context) => Gstr4a()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                                  ChalaanGenerated()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(defaultPadding * 0.75),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Documents.svg",
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              const Text(
                                "Auto - drafted ITC Statement\nfor the quarter",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 14.5,
                                ),
                              ),
                              // Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "GSTR3B",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
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
                                                  SalePurchaseADD()));
                                    },
                                    text: "VIEW"),
                              ),
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
                                                  SalePurchase()));
                                    },
                                    text: "DOWNLOAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
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
