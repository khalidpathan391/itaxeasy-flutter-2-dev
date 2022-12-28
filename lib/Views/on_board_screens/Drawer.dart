import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    //final imageUrl ="https://www.facebook.com/imaxamerica/photos/a.372836146242713/731233933736264";
    return Drawer(
      child: Container(
        color: Colors.blue.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            FadeInDown(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 500),
              child: DrawerHeader(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Stack(fit: StackFit.loose, children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: ExactAssetImage('assets/images/as.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 90.0, right: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blue.shade900,
                            radius: 25.0,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ]),
              )),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profiles",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.settings_solid,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: Colors.white,
              ),
              title: Text(
                "About Us",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.white,
              ),
              title: Text(
                "Spread Tha Word",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Login",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
