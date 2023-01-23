// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../Theme/colors.dart';
// import '../on_board_screens/Dashbord3.dart';

// class ShareButoon extends StatefulWidget {
//   const ShareButoon({Key key}) : super(key: key);

//   @override
//   State<ShareButoon> createState() => _ShareButoonState();
// }

// class _ShareButoonState extends State<ShareButoon> {
//   @override
//   Widget buildSpeedDial() => SpeedDial(
//         overlayColor: Colors.grey.shade100,
//         backgroundColor: Colors.blue.shade900,
//         spacing: 12,
//         // childrenButtonSize: 60,
//         spaceBetweenChildren: 8,
//         // animatedIcon: AnimatedIcons.menu_close,
//         icon: Icons.share,
//         children: [
//           SpeedDialChild(
//               onTap: () async {
//                 const url =
//                     "https://www.facebook.com/pg/sonaliitax/posts/?ref=page_internal";
//                 openUrl(url: url, inApp: true);
//               },
//               child: const Icon(
//                 FontAwesomeIcons.facebook,
//                 size: 30,
//                 color: Colors.indigo,
//               )),
//           SpeedDialChild(
//               onTap: () async {
//                 const url = "http://itaxeasy.com/";
//                 openUrl(url: url, inApp: true);
//               },
//               child: Icon(
//                 FontAwesomeIcons.twitter,
//                 size: 30,
//                 color: Colors.blue.shade900,
//               )),
//           SpeedDialChild(
//               onTap: () async {
//                 const url =
//                     "https://www.linkedin.com/company/itaxeasy-pvt-limited/";
//                 openUrl(url: url, inApp: true);
//               },
//               child: Icon(
//                 FontAwesomeIcons.linkedin,
//                 size: 30,
//                 color: Colors.blue.shade900,
//               )),
//           SpeedDialChild(
//             onTap: () async {
//               const phoneNumber = "8770877270";
//               const url = 'tel:$phoneNumber';

//               if (await canLaunch(url)) {
//                 await launch(url);
//               }
//             },
//             child: const Icon(FontAwesomeIcons.phone,
//                 size: 30, color: KColors.primary),
//           ),
//           SpeedDialChild(
//             onTap: () async {
//               const url =
//                   "https://www.youtube.com/channel/UCY5M7I3ZaL6HW1-QjJglLbw";
//               openUrl(url: url, inApp: true);
//             },
//             child: const Icon(
//               FontAwesomeIcons.youtube,
//               size: 30,
//               color: Colors.red,
//             ),
//           ),
//         ],
//       );

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
