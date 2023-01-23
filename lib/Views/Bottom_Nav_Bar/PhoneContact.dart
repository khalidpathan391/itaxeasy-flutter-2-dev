// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:gst_app/Views/Business_Profile/models/contact.dart';

// import 'package:url_launcher/url_launcher.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Contact> contacts;
//   @override
//   void initState() {
//     super.initState();
//     getContact();
//   }

//   void getContact() async {
//     if (await FlutterContacts.requestPermission()) {
//       contacts = await FlutterContacts.getContacts(
//           withProperties: true, withPhoto: true);
//       print(contacts);
//       setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: (contacts) == null
//             ? Center(child: CircularProgressIndicator())
//             : ListView.builder(
//                 itemCount: contacts.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   Uint8List image = contacts[index].photo;
//                   String num = (contacts[index].phone.isNotEmpty)
//                       ? (contacts[index].phones.first.number)
//                       : "--";
//                   return ListTile(
//                       leading: (contacts[index].photo == null)
//                           ? const CircleAvatar(child: Icon(Icons.person))
//                           : CircleAvatar(backgroundImage: MemoryImage(image)),
//                       title: Text(
//                           "${contacts[index].name.first} ${contacts[index].name.last}"),
//                       subtitle: Text(num),
//                       onTap: () {
//                         if (contacts[index].phones.isNotEmpty) {
//                           launch('tel: ${num}');
//                         }
//                       });
//                 },
//               ));
//   }
// }
