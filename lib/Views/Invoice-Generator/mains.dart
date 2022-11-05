import 'package:flutter/material.dart';
import 'package:gst_app/Views/Invoice-Generator/page/pdf_page.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//
//   runApp(MyApp());
// }

class MyInvoice extends StatelessWidget {
  static const String title = 'Invoice';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: const PdfPage(),
      );
}
