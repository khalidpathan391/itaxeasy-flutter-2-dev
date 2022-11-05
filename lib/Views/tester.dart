//
//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// import 'VideoPlayer.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text('Flutter Video Player Demo'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           VideoItems(
//             videoPlayerController: VideoPlayerController.asset(
//               'assets/images/video.mp4',
//             ),
//             looping: true,
//             autoplay: true,
//           ),
//           // VideoItems(
//           //   videoPlayerController: VideoPlayerController.network(
//           //       'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
//           //   ),
//           //   looping: false,
//           //   autoplay: true,
//           // ),
//           // VideoItems(
//           //   videoPlayerController: VideoPlayerController.asset(
//           //     'assets/video.mp4',
//           //   ),
//           //   looping: false,
//           //   autoplay: true,
//           // ),
//           // VideoPlayer(controller).asset("assets/video.mp4"),
//           // VideoItems(
//           //   videoPlayerController: VideoPlayerController.asset(
//           //     'assets/video.mp4',
//           //   ),
//           //   autoplay: true,
//           // ),
//           VideoItems(
//             videoPlayerController: VideoPlayerController.network(
//                 "https://vimeo.com/718029885"
//             ),
//             looping: true,
//             autoplay: false,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class cards{
// String name;
// String image;
//  VoidCallback press;
//
//  cards({this.name, this.press,this.image});
// }
//
//
//   List<cards>  list = [
//     cards(
//       name: "Cash",
//       // image: "assets/images/cash.png",
//       press: (){
//          // Navigator.push(context, MaterialPageRoute(builder: (context)=>GstLogin()));
//       },
//     ),
//     cards(
//       name: "Payment",
//       // image:"assets/images/payment.png",
//       press: (){},
//     ),
//     cards(
//       name: "Add",
//       // image: "assets/images/add.png",
//       press: (){},
//     ),
//     cards(
//       name: "Debtor",
//       // image:"assets/images/debtor.png",
//       press: (){},
//     ),
//     cards(
//       name: "Creditor",
//       // image: "assets/images/creditor.png",
//       press: (){},
//     ),
//
//
// ];
//
//
//
// List<cards>  easyTax = [
//   cards(
//     name: "GST",
//     // image: "assets/images/cash.png",
//     press: (){},
//   ),
//   cards(
//     name: "ITR",
//     // image:"assets/images/payment.png",
//     press: (){},
//   ),
//   cards(
//     name: "ADD",
//     // image: "assets/images/add.png",
//     press: (){},
//   ),
//
//   cards(
//     name: "INVOICE",
//     // image:"assets/images/debtor.png",
//     press: (){},
//   ),
//   cards(
//     name: "E-TDS",
//     // image: "assets/images/creditor.png",
//     press: (){},
//   ),
//
//
// ];
//
//
