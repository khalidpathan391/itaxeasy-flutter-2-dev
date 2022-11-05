import 'package:flutter/material.dart';

import 'ImageCompressor/config/app.dart';
import 'ImageCompressor/pages/home/CompressorImage.dart';
import 'ImageCompressor/shared/constants.dart';




class ImageCompressor extends StatelessWidget {
  const ImageCompressor({Key key}) : super(key: key);
  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return _buildMaterialApp(context);
  }
  /* ---------------------------------------------------------------------------- */
  Widget _buildMaterialApp(BuildContext context) {
    var _textTheme = WApp.material.googleTextTheme(context);
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: _textTheme.copyWith(
          bodyText2: _textTheme.bodyText2.copyWith(fontSize: kFontSize),
          button: _textTheme.button.copyWith(fontSize: kFontSize),
          caption: _textTheme.caption.copyWith(fontSize: kFontSize - 1),
          subtitle1: _textTheme.subtitle1.copyWith(fontSize: kFontSize + 1),
          subtitle2: _textTheme.subtitle2.copyWith(fontSize: kFontSize - 1),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:  CompressorImage(),
    );
  }
}