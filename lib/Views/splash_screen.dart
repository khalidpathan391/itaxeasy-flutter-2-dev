import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/navbar.dart';

import 'GSTIN_SECTION/GSTR-3b/Chalaan.dart';
import 'GSTIN_SECTION/GSTR-3b/Gstr-4A.dart';
import 'GSTIN_SECTION/GSTR-3b/GstrSalePurchase.dart';
import 'GSTIN_SECTION/GSTR-3b/SalePurchaseAdd.dart';
import 'GSTIN_SECTION/ReturnDashboard.dart';
import 'on_board_screens/screens/landing_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  FlutterSecureStorage storage = const FlutterSecureStorage();

  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;


  dynamic token;

  getToken()async{
    token = await storage.read(key: "token");

  }

  @override
  void initState() {
    getToken();
    var d = const Duration(seconds: 2);
    Future.delayed(d, () async{
      print(token);
      print("---knickknack---");
      Navigator.pushAndRemoveUntil (context,
          MaterialPageRoute(builder: (context) {
            return token != null ? const Navbar(): LandingPage();
          }), (route) => false);
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>SalePurchase()));
    });

    super.initState();

    animationController =  AnimationController(
        vsync: this, duration:  const Duration(seconds: 2));
    animation =
     CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:  Image.asset('assets/images/itax.png',width: animation.value * 250,
            height: animation.value * 250,
        ),
      ),
    );
  }
  @override
  dispose() {
    animationController.dispose(); // you need this
    super.dispose();
  }
}
