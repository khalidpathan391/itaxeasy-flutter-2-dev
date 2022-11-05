// // import 'package:flutter/material.dart';
// // import 'package:gst_app/Models/api_response.dart';
// // import 'package:gst_app/Models/search-gst-number.dart';
// // import 'package:gst_app/Services/api_services.dart';
// //
// //
// //
// // class testFile extends StatefulWidget {
// //    testFile({Key key,this.gst}) : super(key: key);
// //   String gst;
// //
// //   @override
// //   _testFileState createState() => _testFileState();
// // }
// //
// // class _testFileState extends State<testFile> {
// //
// //   ApiResponse<SearchGstNumber> apiResponse;
// //
// //   ApiResponse<List<Adr>> apiResponse2;
// //   ApiServices apiServices = ApiServices();
// //
// //   bool isLoading = false;
// //   getDetails() async {
// //     setState(() {
// //       isLoading = true;
// //     });
// //     apiResponse = await apiServices.searchGstNumber(widget.gst);
// //     setState(() {
// //       isLoading = false;
// //     });
// //   }
// //   @override
// //   void initState() {
// //     getDetails();
// //     apiResponse2.data[index]
// //     super.initState();
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body:    Builder(
// //         builder: (_) {
// //       if (isLoading) {
// //         return const Center(
// //           child: CircularProgressIndicator(),
// //         );
// //       }
// //       if (apiResponse2.error) {
// //         return Text(apiResponse2.errorMessage);
// //       }
// //         return ListView.builder(
// //             itemCount: apiResponse2.data.length,
// //             itemBuilder: (context,index){
// //               return ListTile(
// //                 title: Text(apiResponse2.data[index].addr.st),
// //               );
// //             });
// //         }
// //       ),
// //     );
// //   }
// // }
// //
// //
//
//
//
//
//
// import 'package:flashy_tab_bar/flashy_tab_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Practice extends StatefulWidget {
//   @override
//   _PracticeState createState() => _PracticeState();
// }
//
// class _PracticeState extends State<Practice> {
//
//   int _selectedIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//           child: Text('FlashyTabBar (Flutter Version)'),
//         ),
//         bottomNavigationBar: FlashyTabBar(
//           animationCurve: Curves.linear,
//           selectedIndex: _selectedIndex,
//           showElevation: true, // use this to remove appBar's elevation
//           onItemSelected: (index) => setState(() {
//             _selectedIndex = index;
//           }),
//           items: [
//             FlashyTabBarItem(
//               icon: Icon(Icons.event),
//               title: Text('Events'),
//             ),
//             FlashyTabBarItem(
//               icon: Icon(Icons.search),
//               title: Text('Search'),
//             ),
//             FlashyTabBarItem(
//               icon: Icon(Icons.highlight),
//               title: Text('Highlights'),
//             ),
//             FlashyTabBarItem(
//               icon: Icon(Icons.settings),
//               title: Text('Settings'),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
//
// class ProfileWidget extends StatefulWidget {
//   @override
//   _ProfileWidgetState createState() => _ProfileWidgetState();
// }
//
// class _ProfileWidgetState extends State<ProfileWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // Figma Flutter Generator ProfileWidget - FRAME
//
//     return Container(
//         width: 375,
//         height: 1549,
//         decoration: BoxDecoration(
//           color : Color.fromRGBO(255, 255, 255, 1),
//         ),
//         child: Stack(
//             children: <Widget>[
//               Positioned(
//                   top: 0,
//                   left: 0,
//                   child: Container(
//                       width: 375,
//                       height: 812,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(255, 255, 255, 1),
//                       )
//                   )
//               ),Positioned(
//                   top: 76,
//                   left: 124,
//                   child: Container(
//                       width: 128,
//                       height: 128,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Ellipse.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                         borderRadius : BorderRadius.all(Radius.elliptical(128, 128)),
//                       )
//                   )
//               ),Positioned(
//                   top: 236,
//                   left: 142,
//                   child: Text('Jane', textAlign: TextAlign.center, style: TextStyle(
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                       fontFamily: 'Comfortaa',
//                       fontSize: 36,
//                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.normal,
//                       height: 1
//                   ),)
//               ),Positioned(
//                   top: 292,
//                   left: 121,
//                   child: Text('San francisco, ca', textAlign: TextAlign.center, style: TextStyle(
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                       fontFamily: 'Roboto',
//                       fontSize: 13,
//                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.normal,
//                       height: 1
//                   ),)
//               ),Positioned(
//                   top: 491,
//                   left: 16,
//                   child: Container(
//                       width: 167,
//                       height: 220,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle2.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 1130,
//                   left: 192,
//                   child: Container(
//                       width: 167,
//                       height: 220,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle25.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 491,
//                   left: 192,
//                   child: Container(
//                       width: 167,
//                       height: 310,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle21.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 811,
//                   left: 192,
//                   child: Container(
//                       width: 167,
//                       height: 310,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle23.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 1040,
//                   left: 16,
//                   child: Container(
//                       width: 167,
//                       height: 310,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle24.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 721,
//                   left: 16,
//                   child: Container(
//                       width: 167,
//                       height: 310,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Rectangle22.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 1382,
//                   left: 16,
//                   child: null
//               ),Positioned(
//                   top: 339,
//                   left: 16,
//                   child: null
//               ),Positioned(
//                   top: 407,
//                   left: 16,
//                   child: null
//               ),Positioned(
//                   top: 1466,
//                   left: 0,
//                   child: null
//               ),Positioned(
//                   top: 0,
//                   left: 0,
//                   child: null
//               ),
//             ]
//         )
//     );
//   }
// }
