import 'package:flutter/material.dart';
import 'package:gst_app/Views/Business_Profile/ui/contact_list_page.dart';

class TemplateGalleryApp extends StatelessWidget {
  const TemplateGalleryApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff23202a),
        appBarTheme: AppBarTheme(
          color: Colors.blue.shade900,
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white70,
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.grey[800]),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      home: const ContactListPage(),
    );
  }
}
