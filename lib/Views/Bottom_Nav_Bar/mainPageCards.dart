// import 'package:flutter/material.dart';
//
// import '../GSTIN_SECTION/gstn.dart';
// import '../Theme/colors.dart';
// import '../Theme/extention.dart';
// import '../itr.dart';
//
// class PopularCourseListView extends StatefulWidget {
//   const PopularCourseListView({Key key, }) : super(key: key);
//
//   // final Function() callBack;
//
//   @override
//   _PopularCourseListViewState createState() => _PopularCourseListViewState();
// }
//
// class _PopularCourseListViewState extends State<PopularCourseListView>
//     with TickerProviderStateMixin {
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(top: 8),
//         child: GridView.count(
//           padding: const EdgeInsets.all(8),
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           crossAxisCount: 2,
//           mainAxisSpacing: 32.0,
//           crossAxisSpacing: 32.0,
//           childAspectRatio: 0.8,
//           children: <Widget>[
//
//             InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const Gstn()));
//               },
//               splashColor: Colors.transparent,
//               // onTap: callback,
//               child: SizedBox(
//                 height: 280,
//                 child: Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Expanded(
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: HexColor('#F8FAFB'),
//                               borderRadius: const BorderRadius.all(
//                                   Radius.circular(16.0)),
//                               // border: new Border.all(
//                               //     color: DesignCourseAppTheme.notWhite),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 Expanded(
//                                   child: SizedBox(
//                                     width: double.infinity,
//                                     child: Column(
//                                       children: const <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 16, left: 16, right: 16),
//                                           child: Text(
//                                             "Goods and Services Tax",
//                                             textAlign: TextAlign.left,
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 19,
//                                               fontFamily: "Poppins",
//                                               letterSpacing: 0.27,
//                                               color: DesignCourseAppTheme
//                                                   .darkerText,
//                                             ),
//                                           ),
//                                         ),
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 48,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 48,
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding:
//                       const EdgeInsets.only(top: 24, right: 16, left: 16),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                                 color: DesignCourseAppTheme.grey
//                                     .withOpacity(0.2),
//                                 offset: const Offset(0.0, 0.0),
//                                 blurRadius: 6.0),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           child: AspectRatio(
//                               aspectRatio: 1.28,
//                               child: Image.asset('assets/design_course/interFace4.png')),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const ITR()));
//               },
//               splashColor: Colors.transparent,
//               // onTap: callback,
//               child: SizedBox(
//                 height: 280,
//                 child: Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Expanded(
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: HexColor('#F8FAFB'),
//                               borderRadius: const BorderRadius.all(
//                                   Radius.circular(16.0)),
//                               // border: new Border.all(
//                               //     color: DesignCourseAppTheme.notWhite),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 Expanded(
//                                   child: SizedBox(
//                                     width: double.infinity,
//                                     child: Column(
//                                       children: const <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 16, left: 16, right: 16),
//                                           child: Text(
//                                             "Income Tax Return",
//                                             textAlign: TextAlign.left,
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 19,
//                                               fontFamily: "Poppins",
//                                               letterSpacing: 0.27,
//                                               color: DesignCourseAppTheme
//                                                   .darkerText,
//                                             ),
//                                           ),
//                                         ),
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 48,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 48,
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding:
//                       const EdgeInsets.only(top: 24, right: 16, left: 16),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                                 color: DesignCourseAppTheme.grey
//                                     .withOpacity(0.2),
//                                 offset: const Offset(0.0, 0.0),
//                                 blurRadius: 6.0),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           child: AspectRatio(
//                               aspectRatio: 1.28,
//                               child: Image.asset("assets/design_course/interFace3.png")),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.transparent,
//               // onTap: callback,
//               child: SizedBox(
//                 height: 280,
//                 child: Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Expanded(
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: HexColor('#F8FAFB'),
//                               borderRadius: const BorderRadius.all(
//                                   Radius.circular(16.0)),
//                               // border: new Border.all(
//                               //     color: DesignCourseAppTheme.notWhite),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 Expanded(
//                                   child: SizedBox(
//                                     width: double.infinity,
//                                     child: Column(
//                                       children: const <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 16, left: 16, right: 16),
//                                           child: Text(
//                                             "E-Invoicing",
//                                             textAlign: TextAlign.left,
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 19,
//                                               fontFamily: "Poppins",
//                                               letterSpacing: 0.27,
//                                               color: DesignCourseAppTheme
//                                                   .darkerText,
//                                             ),
//                                           ),
//                                         ),
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 48,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 48,
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding:
//                       const EdgeInsets.only(top: 24, right: 16, left: 16),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                                 color: DesignCourseAppTheme.grey
//                                     .withOpacity(0.2),
//                                 offset: const Offset(0.0, 0.0),
//                                 blurRadius: 6.0),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           child: AspectRatio(
//                               aspectRatio: 1.28,
//                               child: Image.asset("assets/design_course/interFace3.png")),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.transparent,
//               // onTap: callback,
//               child: SizedBox(
//                 height: 280,
//                 child: Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Expanded(
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: HexColor('#F8FAFB'),
//                               borderRadius: const BorderRadius.all(
//                                   Radius.circular(16.0)),
//                               // border: new Border.all(
//                               //     color: DesignCourseAppTheme.notWhite),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 Expanded(
//                                   child: Column(
//                                     children: const <Widget>[
//                                       Padding(
//                                         padding: EdgeInsets.only(
//                                             top: 16, left: 16, right: 16),
//                                         child: Text(
//                                           "Profit and Loss A/C",
//                                           textAlign: TextAlign.left,
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 19,
//                                             fontFamily: "Poppins",
//                                             letterSpacing: 0.27,
//                                             color: DesignCourseAppTheme
//                                                 .darkerText,
//                                           ),
//                                         ),
//                                       ),
//
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 48,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 48,
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding:
//                       const EdgeInsets.only(top: 24, right: 16, left: 16),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                                 color: DesignCourseAppTheme.grey
//                                     .withOpacity(0.2),
//                                 offset: const Offset(0.0, 0.0),
//                                 blurRadius: 6.0),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius:
//                           const BorderRadius.all(Radius.circular(16.0)),
//                           child: AspectRatio(
//                               aspectRatio: 1.28,
//                               child: Image.asset("assets/design_course/interFace4.png")),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }
//
//
