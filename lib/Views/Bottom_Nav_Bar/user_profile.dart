import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:animate_do/animate_do.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:getwidget/Components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:image_picker/image_picker.dart';

import '../../Models/LoginUser.dart';
import '../Business_Profile/BusinessProfile.dart';
import '../Business_Profile/Modification.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  FlutterSecureStorage storage = const FlutterSecureStorage();
  Data user;
  String state;
  bool isProfileCreated = false;
  bool isUserProfileChange = false;
  getuserLocal() async {
    String data = await storage.read(key: "user");
    user = Data.fromJson(json.decode(data));
    log(user.toJson().toString());
    setState(() {
      nameCount.text = user.firstName;
      lastName.text = user.lastName;
      emailCount.text = user.email;
      phoneCount.text = user.phone;
      pinCode.text = user.pincode;
    });
    apiServices.getuserProfile().then((value) {
      if (value.resposeCode == 200) {
        setState(() {
          isProfileCreated = true;
          pan.text = value.data["pan"];
          aadharcount.text = value.data["aadhar"];
        });

        // log("valued from api:" + value.data.toString());
      } else {
        setState(() {
          _status = false;
        });
      }
      log(value.data.toString());
    });
  }

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  TextEditingController nameCount = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController pan = TextEditingController();
  TextEditingController emailCount = TextEditingController();
  TextEditingController phoneCount = TextEditingController();
  TextEditingController pinCode = TextEditingController();
  TextEditingController statecount = new TextEditingController();
  TextEditingController aadharcount = new TextEditingController();
  // var _formKey = GlobalKey<FormState>();
  ApiServices apiServices = ApiServices();

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    onTap: () {
                      getImagefromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    getImagefromcamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  File _image;

  // File file = File( _image.path );
  Future getImagefromcamera() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }

  Future getImagefromGallery() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image :$e");
    }
  }

  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    getuserLocal();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text('PROFILE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.black)),
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Stack(fit: StackFit.loose, children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _image == null
                                ? Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/as.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                : ClipOval(
                                    child: Image.file(
                                      _image,
                                      width: 140.0,
                                      height: 140.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ],
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(top: 90.0, right: 100.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _showPicker(context);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue.shade900,
                                    radius: 25.0,
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ]),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GFButton(
                      color: Colors.blue.shade900,
                      padding: const EdgeInsets.all(10),
                      shape: GFButtonShape.pills,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusinessProfileUi(
                                      pan: pan.text,
                                      name:
                                          nameCount.text + " " + lastName.text,
                                    )));
                      },
                      text: "Business Profile"),
                ),
              ),
              Container(
                color: const Color(0xffFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _status ? _getEditIcon() : Container(),
                                ],
                              )
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Expanded(
                                child: Text(
                                  'First Name',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Last Name',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: TextField(
                                    onChanged: (val) {
                                      isUserProfileChange = true;
                                    },
                                    controller: nameCount,
                                    decoration: const InputDecoration(
                                        hintText: "Enter First Name"),
                                    enabled: !_status,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                child: TextField(
                                  controller: lastName,
                                  decoration: const InputDecoration(
                                      hintText: "Enter last Name"),
                                  enabled: !_status,
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Text(
                                  'PAN Number',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  maxLength: 10,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  // keyboardType: ,
                                  controller: pan,
                                  decoration: const InputDecoration(
                                    hintText: "Enter PAN Number",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'Email ID',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailCount,
                                  decoration: const InputDecoration(
                                      hintText: "Enter Email ID"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'Mobile',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10,
                                  controller: phoneCount,
                                  decoration: const InputDecoration(
                                      hintText: "Enter Mobile Number"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Expanded(
                                child: Text(
                                  'Pin Code',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'State',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    maxLength: 6,
                                    controller: pinCode,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Pin Code"),
                                    enabled: !_status,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                // child: TextField(
                                //   controller: statecount,
                                //   decoration: const InputDecoration(
                                //       hintText: "Enter State"),
                                //   enabled: !_status,
                                // ),
                                child: Container(
                                  // decoration: BoxDecoration(border:),
                                  // color: Colors.amber,
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    // Initial Value
                                    value: state,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String newValue) {
                                      setState(() {
                                        state = newValue;
                                      });
                                    },
                                    hint: Text("Choose State"),
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'Aadhaar Number',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  maxLength: 12,
                                  controller: aadharcount,
                                  decoration: const InputDecoration(
                                    hintText: "Enter Aadhaar Number",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                ),
                              ),
                            ],
                          )),
                      !_status ? _getActionButtons() : Container(),
                    ],
                  ),
                ),
              ),
              // Center(
              //   child: Container(
              //     width: 150,
              //     height: 45,
              //     child: FadeInRight(
              //       delay: const Duration(milliseconds: 500),
              //       duration: const Duration(milliseconds: 500),
              //       child: GFButton(
              //           color: Colors.blue.shade900,
              //           padding: const EdgeInsets.all(10),
              //           shape: GFButtonShape.pills,
              //           onPressed: () {
              //             // Navigator.push(
              //             //     context,
              //             //     MaterialPageRoute(
              //             //         builder: (context) =>
              //             //             ChalaanGenerated()));
              //           },
              //           text: "Register"),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 40,
              // )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: RaisedButton(
                child: const Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () async {
                  Map prm = {
                    "pan": pan.text,
                    "aadhar": aadharcount.text,
                  };
                  if (isUserProfileChange) {
                    Map prma = {
                      "first_name": nameCount.text,
                      "last_name": lastName.text,
                      "phone": phoneCount.text,
                      "email": emailCount.text,
                      "pincode": pinCode.text,
                    };
                    await apiServices.update(prma).then((value) async {
                      if (value.resposeCode == 200) {
                        user.firstName = nameCount.text;
                        user.lastName = lastName.text;
                        user.phone = phoneCount.text;
                        user.email = emailCount.text;
                        user.pincode = pinCode.text;
                        await storage.write(
                            key: "user", value: json.encode(user.toJson()));
                        setState(() {
                          _status = true;
                        });
                      }
                    });
                  }
                  if (isProfileCreated) {
                    await apiServices.updateuser(prm).then((value) {
                      if (value.resposeCode == 200) {
                        setState(() {
                          _status = true;
                          getuserLocal();
                        });
                      }
                    });
                  } else
                    final result = await apiServices.createuser(prm);
                  // setState(() {});
                  // if (_image != null) {
                  //   final result =
                  //       await apiServices.postFile("notes/", _image.path);
                  //   print(result.statusCode);
                  // } else {
                  //   print("-------------------------------");
                  //   print("failed");
                  //   print("---------------------");
                  // }
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                  if (nameCount.text.isEmpty ||
                      emailCount.text.isEmpty ||
                      lastName.text.isEmpty ||
                      phoneCount.text.isEmpty ||
                      pinCode.text.isEmpty ||
                      aadharcount.text.isEmpty ||
                      pan.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Please Fill The Given Field"),
                    ));
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(emailCount.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Email Id should be valid"),
                    ));
                  }
                  if (pinCode.text.length < 10) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("PAN No. Should be   10 digits"),
                    ));
                  }
                  if (aadharcount.text.length < 12) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Aadhar number Should be   12 digits"),
                    ));
                  }

                  if (phoneCount.text.length < 10) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Number should be 10  digits!"),
                    ));
                  }
                  if (pinCode.text.length < 6) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Number should be 6  digits!"),
                    ));
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: RaisedButton(
                child: const Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.blue.shade900,
        radius: 14.0,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
