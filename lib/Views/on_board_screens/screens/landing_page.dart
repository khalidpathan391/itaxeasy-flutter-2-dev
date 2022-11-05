import 'package:flutter/material.dart';
import 'package:gst_app/Views/on_board_screens/ui_view/slider_layout_view.dart';


class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // FlutterSecureStorage storage = FlutterSecureStorage();
  // dynamic token;



  // getToken()async{
  //   token = await storage.read(key: "token");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  onBordingBody(),
    );
  }

  Widget onBordingBody() => const SliderLayoutView();
}
