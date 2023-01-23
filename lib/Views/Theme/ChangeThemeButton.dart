import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gst_app/Views/Theme/Provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future<String> getCurrentUid() async => (await _auth.currentUser()).uid;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        log("hi");
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        // .auth
        // .getCurrentUid();
        provider.toggleTheme(value);
      },
    );
  }
}
