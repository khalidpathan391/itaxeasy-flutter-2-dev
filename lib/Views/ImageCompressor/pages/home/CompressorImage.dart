import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_luban/flutter_luban.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:collection/collection.dart';
import 'package:path_provider/path_provider.dart';

import 'widgets/pinch_zoom_image.dart';


enum CompressMethods {imageCompress,nativeImage,luban}


class CompressorImage extends StatefulWidget {
  /* ---------------------------------------------------------------------------- */
  const CompressorImage({Key key}) : super(key: key);
  /* ---------------------------------------------------------------------------- */
  @override
  State<CompressorImage> createState() => _CompressorImageState();
}

/* ============================================================================================= */

class _CompressorImageState extends State<CompressorImage> {
  var _method = CompressMethods.imageCompress;
  File imageFile;
  Image image, imageCompressed;
  _ImageInfo info, info2;
  var _sliderValue = 80.0;
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  PlatformFile _file;
  /* ---------------------------------------------------------------------------- */
  @override
  void dispose() {
    _clearCacheFiles();
    super.dispose();
  }
  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black38,
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded( // =============> ORIGINAL IMAGE ===========================
                        child: Row(
                          children: [
                            Expanded(
                              child: image != null
                                ? WPinchZoomImage(child: image)
                                : SizedBox(height: 0),
                            ),
                            SizedBox(width: 8),
                            SizedBox(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Original image', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.red,
                                  )),
                                  SizedBox(height: 8),
                                  if (info != null) ...[
                                    Obx(() => _showInfoItem('${info.name}', 'Filename')),
                                    Obx(() => _showInfoItem('${info.width} px', 'Width')),
                                    Obx(() => _showInfoItem('${info.height} px', 'Height')),
                                    Obx(() => _showInfoItem(info.size.value, 'Size')),
                                    Obx(() => _showInfoItem('${info.mimeType}', 'Mime type')),
                                    Obx(() => _showInfoItem('${info.headerBytesHex}', 'Header bytes')),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 10),
                      Divider(height: 10, indent: 10, endIndent: 10, color: Colors.black26),
                      Expanded( // =============> COMPRESSED IMAGE ===========================
                        child: Row(
                          children: [
                            Expanded(
                              child: imageCompressed != null
                                ? WPinchZoomImage(child: imageCompressed)
                                : SizedBox(height: 0),
                            ),
                            SizedBox(width: 8),
                            SizedBox(
                              width: 150,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Compressed image', style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.red,
                                    )),


                                    SizedBox(height: 8),
                                    if (info2 != null) ...[
                                      _showInfoItem(describeEnum(_method), 'Method'),
                                      Obx(() => _showInfoItem('${info2.width} px', 'Width')),
                                      Obx(() => _showInfoItem('${info2.height} px', 'Height')),
                                      Obx(() => _showInfoItem(info2.size.value, 'Size')),
                                      Obx(() => _showInfoItem('${info2.mimeType}', 'Mime type')),
                                      Obx(() => _showInfoItem('${info2.headerBytesHex}', 'Header bytes')),
                                    ],

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Methods:', style: TextStyle(fontWeight: FontWeight.bold)),
                        ...CompressMethods.values.map((e) => RadioListTile<CompressMethods>(
                          title: Text(describeEnum(e)),
                          value: e,
                          groupValue: _method,
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (value) {
                            setState(() => _method = e);
                            if (imageCompressed != null) compressImage();
                          },
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Column(
                      children: [
                        SizedBox(height: 4),
                        Column(
                          children: [
                            Text('Quality (${_sliderValue.truncate()}%)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Slider(
                              value: _sliderValue,
                              min: 0,
                              max: 100,
                              divisions: 20,
                              // label: '${_sliderValue.round()}%',
                              onChanged: (value) => setState(() => _sliderValue = value),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: getImageWithFilePicker,
                          child: Text('Select image'),
                          style: TextButton.styleFrom(
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: compressImage,
                          child: Text('Apply Method'),
                          style: TextButton.styleFrom(
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                        TextButton(
                          onPressed: _clearCacheFiles,
                          child: Text('Clear cache'),
                          style: TextButton.styleFrom(
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  /* ---------------------------------------------------------------------------- */
  void getImageWithImagePicker() async {
    try {
      var _image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (_image != null) {
        var _tempImage = File(_image.path);
        imageFile = _tempImage;
        info = _ImageInfo(_tempImage);
        image = _buildImage(_tempImage);
        setState(() {});
      }
    } catch (e) {
      print('La imagen no pudo ser cargada.\n$e');
    }
  }
  /* ---------------------------------------------------------------------------- */
  Image _buildImage(File source) {
    var _image = RegExp(r'^https?:\/\/').hasMatch(source.path.toLowerCase())
      ? Image.network(source.path, fit: BoxFit.contain)
      : Image.file(source, fit: BoxFit.contain);
    return _image;
  }
  /* ---------------------------------------------------------------------------- */
  Widget _showInfoItem(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.purple)),
      dense: true,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity(vertical: -4),
    );
  }
  /* ---------------------------------------------------------------------------- */
  void getImageWithFilePicker() async {
    try {
      var _picker = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        onFileLoading: (status) => print('>>>> STATUS: $status'),
        allowedExtensions: ['jpeg','png'],
      );
      if (_picker != null && _picker.files.isNotEmpty) {
        _file = _picker.files.first;
        imageFile = File(_file.path);
        image = Image.file(imageFile, fit: BoxFit.contain);
        info = _ImageInfo(imageFile);
        info2 = null;
        imageCompressed = null;
        setState(() {});
      }
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    }
  }
  /* ---------------------------------------------------------------------------- */
  void _logException(String message) {
    // print(message);
    scaffoldMessengerKey.currentState
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
  /* ---------------------------------------------------------------------------- */
  void _clearCacheFiles() async {
    await FilePicker.platform
      .clearTemporaryFiles()
      .then((result) {
        print(result != null && result
          ? 'Temporary files removed with success.'
          : 'Failed to clean temporary files');
      })
      .catchError(
        (e) { print('Unsupported operation:: $e'); },
        test: (e) => e is PlatformException,
      )
      .catchError((e) { print(e); });
  }
  /* ---------------------------------------------------------------------------- */
  void compressImage() {
    if (imageFile == null) return;

    if (info.sizeKB >= 100) {
      switch (_method) {
        case CompressMethods.imageCompress: compressWithImageCompress(); break;
        case CompressMethods.nativeImage: compressWithNativeImage(); break;
        case CompressMethods.luban: compressWithLuban(); break;
        default:
      }
    } else {
      imageCompressed = image;
      info2 = null;
    }
  }
  /* ---------------------------------------------------------------------------- */
  void compressWithImageCompress() async {
    await FlutterImageCompress.compressWithFile(
      imageFile.absolute.path,
      minWidth : 320,
      minHeight: 240,
      quality: _sliderValue.truncate(),
    )
      .then((response) {
        info2 = _ImageInfo.fromRaw(response);
        imageCompressed = Image(
          image: MemoryImage(Uint8List.fromList(response)),
          fit: BoxFit.contain,
        );
        setState(() {});
      })
      .catchError((e) {
        imageCompressed = null;
        print(e);
      });
  }
  /* ---------------------------------------------------------------------------- */
  void compressWithNativeImage() async {
    const _width = 320;
    const _height = 240;
     int _neoWidth, _neoHeight;

    if (info.height.value > info.width.value) {
      _neoWidth = _width;
      _neoHeight = (info.height.value * _width / info.width.value).round();
    } else {
      _neoWidth = (info.width.value * _height / info.height.value).round();
      _neoHeight = _height;
    }

    await FlutterNativeImage.compressImage(
      imageFile.path,
      quality: _sliderValue.truncate(),
      targetWidth: _neoWidth,
      targetHeight: _neoHeight,
    )
      .then((response) {
        info2 = _ImageInfo(response);
        imageCompressed = Image.file(response, fit: BoxFit.contain);
        setState(() {});
      })
      .catchError((e) {
        imageCompressed = null;
        print(e);
      });
  }
  /* ---------------------------------------------------------------------------- */
  void compressWithLuban() async {
    final tempDir = await getTemporaryDirectory();

    var compressObject = CompressObject(
      imageFile: imageFile,
      path: tempDir.path,
      mode: CompressMode.LARGE2SMALL,
      quality: _sliderValue.truncate(), //first compress quality, default 80
      step: 9, //compress quality step, The bigger the fast, Smaller is more accurate, default 6
    );

    await Luban.compressImage(compressObject)
      .then((path) {
        if (path == null) return;
        var _tmpFile = File(path);
        info2 = _ImageInfo(_tmpFile);
        imageCompressed = Image.file(_tmpFile, fit: BoxFit.contain);
        setState(() {});
      })
      .catchError((e) {
        imageCompressed = null;
        print(e);
      });
  }
  /* ---------------------------------------------------------------------------- */
  /* ---------------------------------------------------------------------------- */
}

const _headerBytes = {
  'jpg' : [0xFF,0xD8,0xFF,0xE1],
  'jpeg': [0xFF,0xD8,0xFF,0xE0],
  'png' : [0x89,0x50,0x4E,0x47],
};

class _ImageInfo extends GetxController {
  var name = ''.obs;
  var width = 0.obs;
  var height = 0.obs;
  var sizeMB = 0.0;
  var sizeKB = 0.0;
  var size = ''.obs;
  var mimeType = ''.obs;
  var headerBytes = <int>[];
  var headerBytesHex = ''.obs;
  /* ---------------------------------------------------------------------------- */
  _ImageInfo(File image, [String filename]) {
    name.value = filename ?? p.basename(image.path);
    getMoreInfo(image);
  }
  /* ---------------------------------------------------------------------------- */
  _ImageInfo.fromRaw(Uint8List raw) {
    getInfoFromRaw(raw);
    mimeType.value = ListEquality().equals(headerBytes, _headerBytes['png'])
      ? 'image/png'
      : 'image/jpeg';
  }
  /* ---------------------------------------------------------------------------- */
  void getMoreInfo(File image) {
    var raw = image.readAsBytesSync();
    getInfoFromRaw(raw);
    mimeType.value = lookupMimeType(image.path, headerBytes: headerBytes) ?? '<unknown>';
  }
  /* ---------------------------------------------------------------------------- */
  void getInfoFromRaw(Uint8List raw) async {
    var decodeImage = await decodeImageFromList(raw);
    width.value = decodeImage.width;
    height.value = decodeImage.height;
    var bytes = raw.lengthInBytes;
    sizeKB = bytes / 1024;
    sizeMB = sizeKB / 1024;
    setSize();
    headerBytes = raw.take(4).toList(); //raw.getRange(0, raw.indexOf(0)).toList();
    headerBytesHex.value = headerBytes.map((e) => e.toRadixString(16).toUpperCase()).join(' ');
  }
  /* ---------------------------------------------------------------------------- */
  void setSize() {
    size.value = sizeMB >= 1.0
      ? '${sizeMB.toStringAsFixed(2)} MB'
      : '${sizeKB.toStringAsFixed(2)} KB';
  }
}