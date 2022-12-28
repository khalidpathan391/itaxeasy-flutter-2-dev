import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Calculator%20Screen/CalculatorHuf.dart';
import 'package:gst_app/Calculator%20Screen/Domestic.dart';
import 'package:gst_app/Calculator%20Screen/individual.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/MainPage.dart';
import 'package:gst_app/Views/Calculator/Emi-Cal.dart';
import 'package:gst_app/Views/Calculator/Fi%20Cal.dart';
import 'package:gst_app/Views/Calculator/Mis.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/bank-verification.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/ifsc_coder.dart';
import 'package:gst_app/Views/Calculator/simple_calculators.dart';
import 'package:gst_app/Views/Login_And_Register/UpdateUser.dart';
import 'package:gst_app/Views/on_board_screens/Dashboard1.dart';
import 'package:gst_app/Views/on_board_screens/Dashbord3.dart';
import 'package:gst_app/Views/on_board_screens/Form%202.dart';
import 'package:gst_app/Views/on_board_screens/IBIZ.dart';
import 'package:gst_app/Views/on_board_screens/ITR%20Files.dart';
import 'package:gst_app/Views/on_board_screens/Invoice.dart';
import 'package:gst_app/Views/on_board_screens/MyInvoice.dart';
import 'package:gst_app/Views/on_board_screens/Purchase%20Voucher.dart';

import 'package:gst_app/Views/on_board_screens/Regme.dart';
import 'package:gst_app/Views/on_board_screens/SaleVoucher.dart';

import 'package:gst_app/Views/pdf%20converter.dart';

import 'package:material_dialogs/material_dialogs.dart';
import '../../Services/Invoice_Services.dart';
import '../AccountMisuse.dart';
import '../Bottom_Nav_Bar/services.dart';
import '../Business_Profile/Alteration.dart';
import '../Business_Profile/Creation.dart';
import '../Business_Profile/Modification.dart';
import '../Business_Profile/OptionList.dart';
import '../Calculator/BusinessLoan.dart';
import '../Calculator/Cagr.dart';
import '../Calculator/CapitalGain.dart';
import '../Calculator/CarLoanEmi.dart';
import '../Calculator/DepriciationCal.dart';
import '../Calculator/Gst-Calculator.dart';
import '../Calculator/Home-Loan-Emi.dart';
import '../Calculator/Lump-Sum.dart';
import '../Calculator/Nps-Ui.dart';
import '../Calculator/PersonalLoanEmi.dart';
import '../Calculator/TDS.dart';
import '../Calculator/compound-interest.dart';
import '../Calculator/fixed-deposit.dart';
import '../Calculator/hra.dart';
import '../Calculator/new-regime.dart';
import '../Calculator/old-regime.dart';
import '../Calculator/recursiveDeposit.dart';
import '../Calculator/simple-interest.dart';
import '../Calculator/sip-gain.dart';
import '../Generators.dart';
import '../Gst-Return/Track-Gst-Return.dart';
import '../ImageCompressor.dart';
import '../ImageToPdf.dart';
import '../Instant_E_PAN/instant_e_pan.dart';
import '../Invoice-Generator/mains.dart';
import '../Invoice-Generator/page/pdf_page.dart';
import '../Login_And_Register/login_page.dart';
import '../OCR.dart';
import '../PinCodeInfo.dart';
import '../Search-Gst-Pan-UI.dart';
import '../SecuritySettings.dart';
import '../TdsOnCashWithdrawel.dart';
import '../Theme/colors.dart';
import '../company_search.dart';
import '../e-pay-tax.dart';
import '../e_verify_return.dart';
import '../itr_status.dart';
import '../know_your_ao.dart';
import '../know_your_tan.dart';
import '../link_aadhaar.dart';
import '../on_board_screens/invoicegen.dart';
import '../on_board_screens/payment.dart';
import '../pan_details.dart';
import '../search-by-gstin.dart';
import '../itd.dart';
import '../link_aadhaar_status.dart';
import '../tester.dart';
import '../verify_your_pan.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Drawer(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Container(
            child: ListView(
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: DrawerHeader(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Stack(fit: StackFit.loose, children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 140.0,
                              height: 140.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      ExactAssetImage('assets/images/as.png'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ],
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.only(top: 90.0, right: 100.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.blue.shade900,
                                radius: 25.0,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ]),
                  )),
                ),

                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     iconColor: Colors.white,
                //     title: DrawerListTile(
                //       title: "Easy GSTIN Search",
                //       svgSrc: "assets/icons/taxxx.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: ExpansionTile(
                //             iconColor: Colors.white,
                //             textColor: Colors.white,
                //             title: DrawerListTile(
                //               title: "Search by GSTIN",
                //               svgSrc: "assets/icons/taxxx.svg",
                //               press: () {
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => GST()));
                //               },
                //             ),
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Search by Pan",
                //             svgSrc: "assets/icons/taxxx.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => GSTByPan()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Track GST Return",
                //             svgSrc: "assets/icons/taxxx.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const TrackGST()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     iconColor: Colors.blue.shade900,
                //     title: DrawerListTile(
                //       title: "Easy ITR Links",
                //       svgSrc: "assets/icons/tax2.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy ITR Status",
                //             svgSrc: "assets/icons/itr.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => ItrStatus()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy E-Pan",
                //             svgSrc: "assets/icons/cardss.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => InstantEPan()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: " Easy e-Verify Return",
                //             svgSrc: "assets/icons/verify.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => VerifyReturn()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: " Easy e-Pay Tax",
                //             svgSrc: "assets/icons/paytax.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => EPayTax()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Know TAN Details",
                //             svgSrc: "assets/icons/tan.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => KnowYourTan()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Verify your PAN",
                //             svgSrc: "assets/icons/pan.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const VerifyYourPan()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy TDS On Cash Withdrawal",
                //             svgSrc: "assets/icons/casshhh.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const TDS()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title:
                //                 "Easy Authenticate notice/order issued by ITD",
                //             svgSrc: "assets/icons/auth.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const ITD()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Tax Information & Services",
                //             svgSrc: "assets/icons/info.svg",
                //             press: () {
                //               Dialogs.materialDialog(
                //                 color: Colors.white,
                //                 msg:
                //                     'This feature will be available in the next release',
                //                 title: 'Thank You',
                //                 // animations: 'assets/cong_example.json',
                //                 context: context,
                //                 // actions: [
                //                 //   IconsButton(
                //                 //     onPressed: () {
                //                 //     },
                //                 //     text: 'OK',
                //                 //     iconData: Icons.done,
                //                 //     color: Colors.blue,
                //                 //     textStyle: TextStyle(color: Colors.white),
                //                 //     iconColor: Colors.white,
                //                 //   ),
                //                 // ]
                //               );
                //               // Navigator.push(context, MaterialPageRoute(builder: (context)=>tester()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: " Easy Know your AO",
                //             svgSrc: "assets/icons/ao.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => KnowYourAo()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Pan Details",
                //             svgSrc: "assets/icons/infooo.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => PanDetailsUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     iconColor: Colors.blue.shade900,
                //     title: DrawerListTile(
                //       title: "Easy Bank Links",
                //       svgSrc: "assets/icons/bank.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "IFSC Code",
                //             svgSrc: "assets/icons/code.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => IfscFinder()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Verify Bank Account",
                //             svgSrc: "assets/icons/bank.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const BankVerification()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Bank Statement",
                //             svgSrc: "assets/icons/verify.svg",
                //             press: () {
                //               Dialogs.materialDialog(
                //                 color: Colors.white,
                //                 msg:
                //                     'This feature will be available in the next release',
                //                 title: 'Thank You',
                //                 // animations: 'assets/cong_example.json',
                //                 context: context,
                //                 // actions: [
                //                 //   IconsButton(
                //                 //     onPressed: () {
                //                 //     },
                //                 //     text: 'OK',
                //                 //     iconData: Icons.done,
                //                 //     color: Colors.blue,
                //                 //     textStyle: TextStyle(color: Colors.white),
                //                 //     iconColor: Colors.white,
                //                 //   ),
                //                 // ]
                //               );
                //               // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     iconColor: Colors.blue.shade900,
                //     title: DrawerListTile(
                //       title: "Easy Aadhaar Links",
                //       svgSrc: "assets/icons/easyadhaar.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Link Aadhaar Status",
                //             svgSrc: "assets/icons/cardstatus.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const LinkAadhaarStatus()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Easy Link Aadhaar",
                //             svgSrc: "assets/icons/aadhaar.svg",
                //             press: () {
                //               // Dialogs.materialDialog(
                //               //   color: Colors.white,
                //               //   msg: 'This feature will be available in the next release',
                //               //   title: 'Thank You',
                //               //   // animations: 'assets/cong_example.json',
                //               //   context: context,
                //               //   // actions: [
                //               //   //   IconsButton(
                //               //   //     onPressed: () {
                //               //   //     },
                //               //   //     text: 'OK',
                //               //   //     iconData: Icons.done,
                //               //   //     color: Colors.blue,
                //               //   //     textStyle: TextStyle(color: Colors.white),
                //               //   //     iconColor: Colors.white,
                //               //   //   ),
                //               //   // ]
                //               // );
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => LinkAadhaar()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: " Easy Ministry of Corporate Affairs (MCA)",
                //       svgSrc: "assets/icons/company.svg",
                //       press: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const CompanySearch()));
                //       },
                //     ),
                //   ),
                // ),

                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     title: DrawerListTile(
                //       title: "Easy Financial Calculators",
                //       svgSrc: "assets/icons/calci.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "GST Calculator",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const GstUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       // FadeInLeftBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Calculator",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleCalculator()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       // FadeInRightBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Income Tax/New Regime",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) =>
                //       //                     const NewRegimeUi()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       // FadeInLeftBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Income Tax/Old Regime",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) =>
                //       //                     const OldRegimeUi()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Fixed Deposit",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const FixedDepositUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Simple Interest",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const SimpleInterestUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Compound Interest",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const CompoundInterestUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "EMI ",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const EmiUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Compound annual growth rate",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const CagrUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "SIP Gain",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const SipGainUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Lump Sum",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const LumpSumUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Recursive Deposite",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const RecursiveDepositeUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       // FadeInRightBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "House Rent Allowance",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) => const HraUI()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Monthly Income Scheme",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const MisUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Business Loan Calculator",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const BusinessLoanUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       // FadeInLeftBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Depreciation Calculator ",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) =>
                //       //                     const DepricationUi()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Home Loan EMI",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const HomeLoanEMIUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Car Loan EMI",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const CarLoanUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       FadeInRightBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Personal Loan EMI",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) =>
                //                           const PersonalLoanUI()));
                //             },
                //           ),
                //         ),
                //       ),
                //       // FadeInLeftBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Tax Deducted at Source (TDS)",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) => const TdsUi()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       // FadeInRightBig(
                //       //   delay: const Duration(milliseconds: 500),
                //       //   duration: const Duration(milliseconds: 500),
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.only(left: 16),
                //       //     child: DrawerListTile(
                //       //       title: "Capital Gain",
                //       //       svgSrc: "assets/icons/calci.svg",
                //       //       press: () {
                //       //         Navigator.push(
                //       //             context,
                //       //             MaterialPageRoute(
                //       //                 builder: (context) =>
                //       //                     const CapitalGainUi()));
                //       //       },
                //       //     ),
                //       //   ),
                //       // ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "National Pension System (NPS)",
                //             svgSrc: "assets/icons/calci.svg",
                //             press: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => const NpsUi()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Account Misuse",
                //       svgSrc: "assets/icons/account.svg",
                //       press: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const AccountMisuse()));
                //       },
                //     ),
                //   ),
                // ),

                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Security Settings",
                //       svgSrc: "assets/icons/forms.svg",
                //       press: () {
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=> SecuritySettings()));
                //
                //       },
                //     ),
                //   ),
                // ),

                //
                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Trademark",
                //       svgSrc: "assets/icons/mark.svg",
                //       press: () {},
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "QR Code Scanner",
                //       svgSrc: "assets/icons/qrcode.svg",
                //       press: () async{
                //         // await storage.delete(key: "token");
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=>const QrCode()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Services",
                //       svgSrc: "assets/icons/qrcode.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const ContactUs()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "PinCode Info",
                //       svgSrc: "assets/icons/qrcode.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => PincodeInfoUi()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "ITR Files",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => ITRFiles()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Detail",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => DetailsScreen()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Calculator Individual",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (context) => Select()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Calculator Domestic",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => Domestic()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "PDF Converter",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => Converter()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInRightBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: ExpansionTile(
                //     iconColor: Colors.blue.shade900,
                //     title: DrawerListTile(
                //       title: "Easy Convertors",
                //       svgSrc: "assets/icons/qrcode.svg",
                //       press: () {},
                //     ),
                //     children: [
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Image Compressor",
                //             svgSrc: "assets/icons/qrcode.svg",
                //             press: () {
                //               // await storage.delete(key: "token");
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => ImageCompressor()));
                //             },
                //           ),
                //         ),
                //       ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "OCR",
                //       svgSrc: "assets/icons/ocr.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const OCRSystem()));
                //       },
                //     ),
                //   ),
                // ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Merge PDF/PDFto image  or File Size",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Generators()));
                      },
                    ),
                  ),
                ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Image To Pdf",
                //       svgSrc: "assets/icons/generatorpdf.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) =>
                //                     const ImageToPdf()));
                //       },
                //     ),
                //   ),
                // ),
                //       FadeInLeftBig(
                //         delay: const Duration(milliseconds: 500),
                //         duration: const Duration(milliseconds: 500),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 16),
                //           child: DrawerListTile(
                //             title: "Invoice Generator",
                //             svgSrc: "assets/icons/pdf.svg",
                //             press: () async {
                //               // await storage.delete(key: "token");
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => MyInvoice()));
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Fi Cal",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         await storage.delete(key: "token");
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => FinencialCalculator()));
                //       },
                //     ),
                //   ),
                // ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "we Pay",
                      svgSrc: "assets/icons/ao.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentGateway()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Dark/Light Theme",
                      svgSrc: "assets/icons/ao.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ITRFiles()));
                      },
                    ),
                  ),
                ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Regma2",
                //       svgSrc: "assets/icons/ao.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (context) => Regma2()));
                //       },
                //     ),
                //   ),
                // ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Form1",
                //       svgSrc: "assets/icons/settings.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileWidget()));
                //       },
                //     ),
                //   ),
                // ),

                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Settings",
                      svgSrc: "assets/icons/settings.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileWidget()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "About us",
                      svgSrc: "assets/icons/ao.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ITRFiles()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Print",
                      svgSrc: "assets/icons/ao.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ITRFiles()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Salary And Income",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfileUi()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionList()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Alteration()));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Salery()));
                      },
                    ),
                  ),
                ),
                // FadeInLeftBig(
                //   delay: const Duration(milliseconds: 500),
                //   duration: const Duration(milliseconds: 500),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 16),
                //     child: DrawerListTile(
                //       title: "Option List",
                //       svgSrc: "assets/icons/generatorpdf.svg",
                //       press: () async {
                //         // await storage.delete(key: "token");
                //         // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfileUi()));
                //         // Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionList()));
                //         // Navigator.push(context, MaterialPageRoute(builder: (context)=> Alteration()));
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => OptionList()));
                //       },
                //     ),
                //   ),
                // ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "PDF PAGE",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfileUi()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionList()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Alteration()));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PdfPage()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Modification",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfileUi()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionList()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Alteration()));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Modification()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Creation",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfileUi()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionList()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Alteration()));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Creation()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Alternation",
                      svgSrc: "assets/icons/settings.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>b2bRequest()));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Alteration()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Dashbord3",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashbord3()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Dashbord1",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashbord1()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Form1",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvoiceGen()));
                      },
                    ),
                  ),
                ),
                FadeInLeftBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "Form2",
                      svgSrc: "assets/icons/generatorpdf.svg",
                      press: () async {
                        // await storage.delete(key: "token");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PurchaseInvoice()));
                      },
                    ),
                  ),
                ),
                FadeInRightBig(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: DrawerListTile(
                      title: "SignOut",
                      svgSrc: "assets/icons/logout.svg",
                      press: () async {
                        await storage.deleteAll();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                            (route) => false);
                      },
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

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    this.title,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.blue.shade900,
        height: 25,
      ),
      title: Text(
        title,
        style: GoogleFonts.dmSans(
            color: KColors.headline, fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }
}
