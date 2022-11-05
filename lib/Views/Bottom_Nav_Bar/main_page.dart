// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:glassmorphism/glassmorphism.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:gst_app/Views/GSTIN_SECTION/SignInAndRegister/SignIn.dart';
// import 'package:gst_app/Views/Purchases.dart';
// import 'package:gst_app/Views/Sale.dart';
// import 'package:gst_app/Views/itr.dart';
//
// import 'package:gst_app/views/Invoice-Generator/mains.dart';
// import 'package:material_dialogs/material_dialogs.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../Business_Profile/models/contact.dart';
// import '../Business_Profile/ui/widgets/cards.dart';
// import '../Business_Profile/ui/widgets/perspective_list_view.dart';
// import '../SideBar/side_menu.dart';
// import '../Theme/colors.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
//
//
// class SalesData {
//   SalesData(this.year, this.sales);
//   final String year;
//   final double sales;
// }
//
// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({Key key}) : super(key: key);
//
//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }
//
// class _DetailsScreenState extends State<DetailsScreen> with SingleTickerProviderStateMixin  {
//   AnimationController animationController;
//   FlutterSecureStorage storage = const FlutterSecureStorage();
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   String name;
//
//   void _openDrawer() {
//     if (_scaffoldKey.currentState != null &&
//         !_scaffoldKey.currentState.isDrawerOpen) {
//       _scaffoldKey.currentState.openDrawer();
//     }
//   }
//
//
//   Future<void> getName() async {
//     setState(() {
//       isLoading = true;
//     });
//     name = await storage.read(key: "username");
//     setState(() {
//       isLoading = false;
//     });
//   }
//
//   bool isLoading = false;
//
//   @override
//   void initState() {
//
//     getName();
//     animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 7),
//     );
//
//     animationController.repeat();
//     _tooltipBehavior = TooltipBehavior(enable: true);
//     super.initState();
//   }
//   TooltipBehavior _tooltipBehavior;
//
//   int _visibleItems;
//   double _itemExtent;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       floatingActionButton: buildSpeedDial(),
//       key: _scaffoldKey,
//       drawer: const SideMenu(),
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             AnimatedBuilder(
//               animation: animationController,
//               child: Center(
//                 child: Image.asset(
//                     "assets/images/itax.png"
//                 ),
//               ),
//               builder: (BuildContext context, Widget _widget) {
//                 return  Transform.rotate(
//                   angle: animationController.value * 6.3,
//                   child: _widget,
//                 );
//               },
//             ),
//             ListView(
//               physics:  const BouncingScrollPhysics(),
//               padding: const EdgeInsets.symmetric(vertical: 20),
//               children: <Widget>[
//                 // filpCard(context),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(29.5),
//                         ),
//                         child: IconButton(
//                           icon: Image.asset(
//                             "assets/icons/hamburger.png",
//                             color: Colors.purple,
//                             height: 20,
//                             width: 20,
//                           ),
//                           onPressed: _openDrawer,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(29.5),
//                         ),
//                         child: IconButton(
//                           icon: SvgPicture.asset(
//                             "assets/icons/Search.svg",
//                             color: Colors.purple,
//                             height: 18,
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hello,',
//                             style: GoogleFonts.roboto(
//                               fontSize: 17.0,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           isLoading
//                               ? const CircularProgressIndicator()
//                               : Text(
//                             name ?? '',
//                             semanticsLabel: name[0].toUpperCase(),
//                             style: GoogleFonts.recursive(
//                               fontSize: 23.0,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 // SizedBox(height: 10),
//                 // Text(
//                 //   "3-10 MIN Course",
//                 //   style: TextStyle(fontWeight: FontWeight.bold),
//                 // ),
//                 // SizedBox(height: 10),
//                 // SizedBox(
//                 //   width: size.width * .6, // it just take 60% of total width
//                 //   child: Text(
//                 //     "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
//                 //   ),
//                 // ),
//                 const SizedBox(height: 15),
//                 SizedBox(
//                   height: 200,
//                   child: ListView(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.only(left: 20),
//                     physics: const BouncingScrollPhysics(),
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white,
//                         ),
//                         width: 300,
//                       ),
//                       const SizedBox(width: 10),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white,
//                         ),
//                         width: 300,
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Text(
//                     "Quick Links",
//                     style: TextStyle(
//                       // fontSize:10,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SizedBox(
//                   height: 110,
//                   child: ListView(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.only(left: 20),
//                     physics: const BouncingScrollPhysics(),
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       buildItemCard(
//                         onTap: () => Get.to(() => GstLogin()),
//                         imagePath: "assets/images/tax.png",
//                         text: "GSTIN",
//                       ),
//                       const SizedBox(width: 10),
//                       buildItemCard(
//                         onTap: () => Get.to(() => const ITR()),
//                         imagePath: "assets/images/taxes (1).png",
//                         text: "ITR",
//                       ),
//                       const SizedBox(width: 10),
//                       buildItemCard(
//                         onTap: () => Get.to(() => const SaleUi()),
//                         imagePath: "assets/images/coupon.png",
//                         text: "Sale",
//                       ),
//                       const SizedBox(width: 10),
//                       buildItemCard(
//                         onTap: () => Get.to(() => const Purchases()),
//                         imagePath: "assets/images/rent.png",
//                         text: "Purchase",
//                       ),
//                       const SizedBox(width: 10),
//                       buildItemCard(
//                         onTap: () {
//                           // Navigator.push(context,
//                           //     MaterialPageRoute(builder: (context) => const EPayTax()));
//                           Dialogs.materialDialog(
//                             color: Colors.white,
//                             msg:
//                             'This feature will be available in the next release',
//                             title: 'Thank You',
//                             // animations: 'assets/cong_example.json',
//                             context: context,
//                             // actions: [
//                             //   IconsButton(
//                             //     onPressed: () {
//                             //     },
//                             //     text: 'OK',
//                             //     iconData: Icons.done,
//                             //     color: Colors.blue,
//                             //     textStyle: TextStyle(color: Colors.white),
//                             //     iconColor: Colors.white,
//                             //   ),
//                             // ]
//                           );
//                         },
//                         imagePath: "assets/images/banking.png",
//                         text: "Challan",
//                       ),
//                       const SizedBox(width: 10),
//                       buildItemCard(
//                         onTap: () => Get.to(() => MyInvoice()),
//                         imagePath: "assets/images/invoice.png",
//                         text: "E-Invoice",
//                       ),
//                       const SizedBox(width: 10),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 // Wrap(
//                 //   spacing: 20,
//                 //   runSpacing: 20,
//                 //   children: <Widget>[
//                 //     SeassionCard(
//                 //       img: "assets/images/tax.png",
//                 //       text: "GSTIN",
//                 //       press: () {
//                 //         Navigator.push(context,
//                 //             MaterialPageRoute(builder: (context) => GstLogin()));
//                 //       },
//                 //     ),
//                 //     SeassionCard(
//                 //       img: "assets/images/taxes (1).png",
//                 //       text: "ITR",
//                 //       press: () {
//                 //         Navigator.push(context,
//                 //             MaterialPageRoute(builder: (context) => const ITR()));
//                 //       },
//                 //     ),
//                 //     SeassionCard(
//                 //       img: "assets/images/coupon.png",
//                 //       text: "Sale",
//                 //       press: () {
//                 //         Navigator.push(
//                 //             context,
//                 //             MaterialPageRoute(
//                 //                 builder: (context) => const SaleUi()));
//                 //       },
//                 //     ),
//                 //     SeassionCard(
//                 //       img: "assets/images/rent.png",
//                 //       text: "Purchase",
//                 //       press: () {
//                 //         Navigator.push(
//                 //             context,
//                 //             MaterialPageRoute(
//                 //                 builder: (context) => const Purchases()));
//                 //       },
//                 //     ),
//                 //     SeassionCard(
//                 //       img: "assets/images/banking.png",
//                 //       text: "Challan",
//                 //       press: () {
//                 //         // Navigator.push(context,
//                 //         //     MaterialPageRoute(builder: (context) => const EPayTax()));
//                 //         Dialogs.materialDialog(
//                 //           color: Colors.white,
//                 //           msg: 'This feature will be available in the next release',
//                 //           title: 'Thank You',
//                 //           // animations: 'assets/cong_example.json',
//                 //           context: context,
//                 //           // actions: [
//                 //           //   IconsButton(
//                 //           //     onPressed: () {
//                 //           //     },
//                 //           //     text: 'OK',
//                 //           //     iconData: Icons.done,
//                 //           //     color: Colors.blue,
//                 //           //     textStyle: TextStyle(color: Colors.white),
//                 //           //     iconColor: Colors.white,
//                 //           //   ),
//                 //           // ]
//                 //         );
//                 //       },
//                 //     ),
//                 //     SeassionCard(
//                 //       img: "assets/images/invoice.png",
//                 //       text: "E-Invoice",
//                 //       press: () {
//                 //         Navigator.push(context,
//                 //             MaterialPageRoute(builder: (context) => MyInvoice()));
//                 //       },
//                 //     ),
//                 //   ],
//                 // ),
//                 // const SizedBox(height: 10),
//                 // const Padding(
//                 //   padding: EdgeInsets.symmetric(horizontal: 25),
//                 //   child: Text(
//                 //     "Quick Links",
//                 //     style: TextStyle(
//                 //       // fontSize:10,
//                 //       fontWeight: FontWeight.bold,
//                 //       fontFamily: "Poppins",
//                 //     ),
//                 //     // style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
//                 //   ),
//                 // ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(horizontal: 20),
//                 //   child: GestureDetector(
//                 //     onTap: () {
//                 //       Navigator.push(
//                 //         context,
//                 //         MaterialPageRoute(
//                 //           builder: (context) => const CompanySearch(),
//                 //         ),
//                 //       );
//                 //     },
//                 //     child: Container(
//                 //       margin: const EdgeInsets.symmetric(vertical: 10),
//                 //       padding: const EdgeInsets.all(10),
//                 //       height: 90,
//                 //       decoration: BoxDecoration(
//                 //         color: Colors.white,
//                 //         borderRadius: BorderRadius.circular(13),
//                 //         boxShadow: const [
//                 //           BoxShadow(
//                 //             offset: Offset(0, 17),
//                 //             blurRadius: 23,
//                 //             spreadRadius: -16,
//                 //             color: kShadowColor,
//                 //           ),
//                 //         ],
//                 //       ),
//                 //       child: Row(
//                 //         children: <Widget>[
//                 //           Image.asset(
//                 //             "assets/images/office-building.png",
//                 //           ),
//                 //           const SizedBox(width: 20),
//                 //           Expanded(
//                 //             child: Column(
//                 //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //               crossAxisAlignment: CrossAxisAlignment.start,
//                 //               children: const <Widget>[
//                 //                 Text(
//                 //                   "Ministry of Corporate Affairs",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                   // style: Theme.of(context).textTheme.subtitle,
//                 //                 ),
//                 //                 Text(
//                 //                   "Search And Register Your Company",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                 )
//                 //               ],
//                 //             ),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(horizontal: 20),
//                 //   child: GestureDetector(
//                 //     onTap: () {
//                 //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>InstantEPan()));
//                 //       Dialogs.materialDialog(
//                 //         color: Colors.white,
//                 //         msg: 'This feature will be available in the next release',
//                 //         title: 'Thank You',
//                 //         // animations: 'assets/cong_example.json',
//                 //         context: context,
//                 //         // actions: [
//                 //         //   IconsButton(
//                 //         //     onPressed: () {
//                 //         //     },
//                 //         //     text: 'OK',
//                 //         //     iconData: Icons.done,
//                 //         //     color: Colors.blue,
//                 //         //     textStyle: TextStyle(color: Colors.white),
//                 //         //     iconColor: Colors.white,
//                 //         //   ),
//                 //         // ]
//                 //       );
//                 //     },
//                 //     child: Container(
//                 //       padding: const EdgeInsets.all(10),
//                 //       height: 90,
//                 //       decoration: BoxDecoration(
//                 //         color: Colors.white,
//                 //         borderRadius: BorderRadius.circular(13),
//                 //         boxShadow: const [
//                 //           BoxShadow(
//                 //             offset: Offset(0, 17),
//                 //             blurRadius: 23,
//                 //             spreadRadius: -16,
//                 //             color: kShadowColor,
//                 //           ),
//                 //         ],
//                 //       ),
//                 //       child: Row(
//                 //         children: <Widget>[
//                 //           Image.asset(
//                 //             "assets/images/id-card.png",
//                 //           ),
//                 //           const SizedBox(width: 20),
//                 //           Expanded(
//                 //             child: Column(
//                 //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //               crossAxisAlignment: CrossAxisAlignment.start,
//                 //               children: const <Widget>[
//                 //                 Text(
//                 //                   "Easy Instant e-Pan",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                   // style: Theme.of(context).textTheme.subtitle,
//                 //                 ),
//                 //                 Text(
//                 //                   "Create your PAN CARD in Seconds",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                 )
//                 //               ],
//                 //             ),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(horizontal: 20),
//                 //   child: GestureDetector(
//                 //     onTap: () {
//                 //       Navigator.push(
//                 //           context,
//                 //           MaterialPageRoute(
//                 //               builder: (context) => const LinkAadhaarStatus()));
//                 //     },
//                 //     child: Container(
//                 //       margin: const EdgeInsets.symmetric(vertical: 20),
//                 //       padding: const EdgeInsets.all(10),
//                 //       height: 90,
//                 //       decoration: BoxDecoration(
//                 //         color: Colors.white,
//                 //         borderRadius: BorderRadius.circular(13),
//                 //         boxShadow: const [
//                 //           BoxShadow(
//                 //             offset: Offset(0, 17),
//                 //             blurRadius: 23,
//                 //             spreadRadius: -16,
//                 //             color: kShadowColor,
//                 //           ),
//                 //         ],
//                 //       ),
//                 //       child: Row(
//                 //         children: <Widget>[
//                 //           Image.asset(
//                 //             "assets/images/status.png",
//                 //           ),
//                 //           const SizedBox(width: 20),
//                 //           Expanded(
//                 //             child: Column(
//                 //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //               crossAxisAlignment: CrossAxisAlignment.start,
//                 //               children: const <Widget>[
//                 //                 Text(
//                 //                   "Link Aadhaar Status",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                   // style: Theme.of(context).textTheme.subtitle,
//                 //                 ),
//                 //                 Text(
//                 //                   "See your Aadhaar Status in Seconds",
//                 //                   style: TextStyle(
//                 //                     // fontSize:10,
//                 //                     fontWeight: FontWeight.bold,
//                 //                     fontFamily: "OpenSans",
//                 //                   ),
//                 //                 )
//                 //               ],
//                 //             ),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ),
//                 // )
//                 Padding(
//                     padding: const EdgeInsets.only(left: 30, right: 30),
//                     child: GlassmorphicContainer(
//                       width: 350,
//                       height: 350,
//                       borderRadius: 20,
//                       blur: 10,
//                       alignment: Alignment.bottomCenter,
//                       border: 2,
//                       linearGradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Color(0xFFffffff).withOpacity(0.1),
//                             Color(0xFFFFFFFF).withOpacity(0.05),
//                           ],
//                           stops: [
//                             0.1,
//                             1,
//                           ]),
//                       borderGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color(0xFFffffff).withOpacity(0.5),
//                           Color((0xFFFFFFFF)).withOpacity(0.5),
//                         ],
//                       ),
//                       child: SfCartesianChart(
//                           enableAxisAnimation: true,
//                           enableSideBySideSeriesPlacement: true,
//                           // backgroundColor: Colors.purple.withOpacity(0.2),
//                           primaryXAxis: CategoryAxis(), // legend: Legend(isVisible: true),
//                           tooltipBehavior: _tooltipBehavior,
//                           series: <LineSeries<SalesData, String>>[
//                             LineSeries<SalesData, String>(
//                                 dataSource: <SalesData>[
//                                   SalesData('Jan', 35),
//                                   SalesData('Feb', 20),
//                                   SalesData('Mar', 40),
//                                   SalesData('Apr', 32),
//                                   SalesData('May', 40),
//                                   SalesData('June', 48),
//                                 ],
//                                 xValueMapper: (SalesData sales, _) => sales.year,
//                                 yValueMapper: (SalesData sales, _) => sales.sales,
//                                 // Enable data label
//                                 dataLabelSettings:
//                                 const DataLabelSettings(isVisible: true))
//                           ]),
//                     )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget filpCard(BuildContext context){
//     return             PerspectiveListView(
//
//       visualizedItems: _visibleItems,
//       itemExtent: _itemExtent,
//       // initialIndex: 7,
//       enableBackItemsShadow: true,
//       backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
//       padding: const EdgeInsets.all(10),
//       onTapFrontItem: (value) {},
//       children: List.generate(Contact.contacts.length, (index) {
//         final borderColor = Colors.accents[index % Colors.accents.length];
//         final contact = Contact.contacts[index];
//         return ContactCard(
//           borderColor: borderColor,
//           contact: contact,
//         );
//       }),
//     );
//   }
//
//
//   Widget buildItemCard({
//     void Function() onTap,
//     String imagePath,
//     String text,
//   }) =>
//       GestureDetector(
//         onTap: onTap,
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Colors.white,
//           ),
//           width: 100,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 imagePath,
//                 height: 40,
//               ),
//               Text(
//                 text,
//                 style: GoogleFonts.recursive(
//                   fontSize: 13.0,
//                   fontWeight: FontWeight.w700,
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//
//   Widget buildSpeedDial() => SpeedDial(
//     overlayColor: Colors.purple.shade100,
//     backgroundColor: Colors.purple,
//     spacing: 12,
//     // childrenButtonSize: 60,
//     spaceBetweenChildren: 8,
//     // animatedIcon: AnimatedIcons.menu_close,
//     icon: Icons.share,
//     children: [
//       SpeedDialChild(
//           onTap: () async {
//             const url =
//                 "https://www.facebook.com/pg/sonaliitax/posts/?ref=page_internal";
//             openUrl(url: url, inApp: true);
//           },
//           child: const Icon(
//             FontAwesomeIcons.facebook,
//             size: 30,
//             color: Colors.indigo,
//           )),
//       SpeedDialChild(
//           onTap: () async {
//             const url = "http://itaxeasy.com/";
//             openUrl(url: url, inApp: true);
//           },
//           child: const Icon(
//             FontAwesomeIcons.twitter,
//             size: 30,
//             color: Colors.lightBlue,
//           )),
//       SpeedDialChild(
//           onTap: () async {
//             const url =
//                 "https://www.linkedin.com/company/itaxeasy-pvt-limited/";
//             openUrl(url: url, inApp: true);
//           },
//           child: const Icon(
//             FontAwesomeIcons.linkedin,
//             size: 30,
//             color: Colors.blue,
//           )),
//       SpeedDialChild(
//         onTap: () async {
//           const phoneNumber = "8770877270";
//           const url = 'tel:$phoneNumber';
//
//           if (await canLaunch(url)) {
//             await launch(url);
//           }
//         },
//         child: const Icon(FontAwesomeIcons.phone,
//             size: 30, color: KColors.primary),
//       ),
//       SpeedDialChild(
//         onTap: () async {
//           const url =
//               "https://www.youtube.com/channel/UCY5M7I3ZaL6HW1-QjJglLbw";
//           openUrl(url: url, inApp: true);
//         },
//         child: const Icon(
//           FontAwesomeIcons.youtube,
//           size: 30,
//           color: Colors.red,
//         ),
//       ),
//     ],
//   );
//
//   Future openUrl({
//     String url,
//     bool inApp = false,
//   }) async {
//     if (await canLaunch(url)) {
//       await launch(
//         url,
//         forceSafariVC: inApp,
//         forceWebView: inApp,
//         enableJavaScript: true,
//       );
//     }
//   }
//
//   Widget buildCARD(BuildContext context) {
//     return  PerspectiveListView(
//
//       visualizedItems: _visibleItems,
//       itemExtent: _itemExtent,
//       // initialIndex: 7,
//       enableBackItemsShadow: true,
//       backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
//       padding: const EdgeInsets.all(10),
//       onTapFrontItem: (value) {},
//       children: List.generate(Contact.contacts.length, (index) {
//         final borderColor = Colors.accents[index % Colors.accents.length];
//         final contact = Contact.contacts[index];
//         return ContactCard(
//           borderColor: borderColor,
//           contact: contact,
//         );
//       }),
//     );
//   }
// }
//
// class SeassionCard extends StatelessWidget {
//   final int seassionNum;
//   final bool isDone;
//   final String text;
//   final Function press;
//   final IconData src;
//   final String img;
//   const SeassionCard({
//     Key key,
//     this.src,
//     this.text,
//     this.img,
//     this.seassionNum,
//     this.isDone = false,
//     this.press,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraint) {
//       return ClipRRect(
//         borderRadius: BorderRadius.circular(13),
//         child: Container(
//           width: constraint.maxWidth / 2 -
//               10, // constraint.maxWidth provide us the available with for this widget
//           // padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(13),
//             boxShadow: const [
//               BoxShadow(
//                 offset: Offset(0, 17),
//                 blurRadius: 23,
//                 spreadRadius: -13,
//                 color: kShadowColor,
//               ),
//             ],
//           ),
//           child: Material(
//             color: Colors.transparent,
//             child: InkWell(
//               splashColor: Colors.purple.withOpacity(0.4),
//               onTap: press as void Function(),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   children: <Widget>[
//                     Container(
//                       height: 42,
//                       width: 43,
//                       decoration: BoxDecoration(
//                         color: isDone ? kBlueColor : Colors.white,
//                         // shape: BoxShape.circle,
//                         // border: Border.all(color: kBlueColor),
//                       ),
//                       child: Image.asset(img),
//                       // Icon(
//                       //   src,
//                       //   color: isDone ? Colors.white : kBlueColor,
//                       // ),
//                     ),
//                     const SizedBox(width: 10),
//                     Text(
//                       text,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontFamily: "Poppins",
//                       ),
//                       // style: Theme.of(context).textTheme.subtitle,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
//
//
// }
