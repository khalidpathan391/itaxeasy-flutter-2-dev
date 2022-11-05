import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKeys = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  GlobalKey<ScaffoldState> get scaffoldKeys => _scaffoldKeys;

  void controlMenu() {
    if (!_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void controlMenus() {
    if (!scaffoldKeys.currentState.isDrawerOpen) {
      scaffoldKeys.currentState.openDrawer();
    }
  }
}
