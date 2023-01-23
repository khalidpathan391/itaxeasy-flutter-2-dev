
// import 'package:flutter/material.dart';

// class Dashbord1 extends StatefulWidget {
//   const Dashbord1({Key key}) : super(key: key);

//   @override
//   State<Dashbord1> createState() => _Dashbord1State();
// }

// class _Dashbord1State extends State<Dashbord1> {
//   @override
//   Widget build(BuildContext context) {
//     bool isSearched = false;
//     double width = MediaQuery.of(context).size.width - 140;
//     return Scaffold(
//       appBar: AppBar(
//         //  leading: Icon(Icons.menu),

//         title: Text('SELECT CATEGORY'),
//         actions: [
//           isSearched
//               ? Container(width: width * .7, child: TextField())
//               : SizedBox(),
//           IconButton(
//             padding: EdgeInsets.only(right: 20, left: 20),
//             icon: Icon(
//               Icons.search,
//               size: 30,
//             ),
//             onPressed: () {
//               setState(() {
//                 isSearched = !isSearched;
//               });
//             },
//           )
//         ],
//         backgroundColor: Colors.blue.shade900,
//       ),
//       body: Container(
//         margin: EdgeInsets.only(top: 10),
//         // margin: EdgeInsets.only(left: 70, right: 50, top: 70),
//         child: Column(
//           children: [
//             AnimatedTextKit(
//               animatedTexts: [
//                 TyperAnimatedText('I TAX',
//                     textStyle: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blue.shade900)),
//                 // TyperAnimatedText('HuB',
//                 //     textStyle:
//                 //         TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
//               ],
//             ),
//             Expanded(
//               child: AnimationLimiter(
//                 child: GridView.count(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 80,
//                   children: List.generate(5, (index) {
//                     return AnimationConfiguration.staggeredGrid(
//                         position: index,
//                         columnCount: 2,
//                         child: ScaleAnimation(
//                           duration: Duration(milliseconds: 3000),
//                           child: FadeInAnimation(
//                             child: Padding(
//                               padding: const EdgeInsets.all(30.0),
//                               child: Container(
//                                 // width: 80,
//                                 // height: 70,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white70,
//                                   boxShadow: [
//                                     BoxShadow(
//                                         color: Colors.blueGrey.shade200,
//                                         blurRadius: 8.0,
//                                         offset: Offset(3, 3))
//                                   ],
//                                   border: Border.all(
//                                     color: Colors.blueGrey,
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Center(
//                                     child: Card(
//                                   color: Colors.blue.shade100,
//                                   elevation: 20,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         boxShadow: [
//                                           BoxShadow(
//                                               color: Colors.white60,
//                                               blurRadius: 8.0,
//                                               offset: Offset(5, 5))
//                                         ]),
//                                     height: 40,
//                                     width: 40,
//                                     child: Icon(
//                                       Icons.money_off,
//                                       color: Colors.blue.shade900,
//                                     ),
//                                   ),
//                                 )),
//                               ),
//                             ),
//                           ),
//                         ));
//                   }),
//                 ),
//               ),
//             ),
//             BottomNavigationBar(
//               iconSize: 30,
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: Colors.white,
//               items: <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: GestureDetector(
//                       onTap: () {},
//                       child: Icon(Icons.home, color: Colors.blue.shade900)),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: GestureDetector(
//                       onTap: () {
//                         setState(() {});
//                       },
//                       child: Icon(Icons.people, color: Colors.blue.shade900)),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Stack(alignment: Alignment.topCenter, children: [
//                     FloatingActionButton(
//                         backgroundColor: Colors.blue.shade900,
//                         // focusColor: Colors.blue.shade900,
//                         onPressed: () {},
//                         child: const Icon(
//                           Icons.menu,
//                           color: Colors.white,
//                         )),
//                   ]),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Dashbord1()));
//                         });
//                       },
//                       child: Icon(Icons.settings, color: Colors.blue.shade900)),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: GestureDetector(
//                       onTap: () {
//                         setState(() {});
//                       },
//                       child: Icon(Icons.account_circle,
//                           color: Colors.blue.shade900)),
//                   label: '',
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
