import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Views/splash_screen.dart';
import 'package:shake/shake.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }
//
// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   'high_importance_channel', // id
//   'High Importance Notifications', // title
//   'This channel is used for important notifications.', // description
//   importance: Importance.high,
// );
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await Firebase.initializeApp();
  //
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);

  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  //   void initState() {
  //   super.initState();
  //   var initializationSettingsAndroid =
  //       AndroidInitializationSettings('@mipmap/ic_launcher');
  //   var initializationSettings =
  //       InitializationSettings(android: initialzationSettingsAndroid);
  //
  //   flutterLocalNotificationsPlugin.initialize(initializationSettings);
  //
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification notification = message.notification;
  //     AndroidNotification android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       flutterLocalNotificationsPlugin.show(
  //           notification.hashCode,
  //           notification.title,
  //           notification.body,
  //           NotificationDetails(
  //             android: AndroidNotificationDetails(
  //               channel.id,
  //               channel.name,
  //               channel.description,
  //               icon: 'launch_background',
  //             ),
  //           ));
  //     }
  //   });
  //   getToken();
  //   // getTopics();
  // }
  ShakeDetector detector;
  @override
  void initState() {
    detector = ShakeDetector.autoStart(onPhoneShake: () async {
      await HapticFeedback.mediumImpact()
          .then((value) => SystemNavigator.pop());
    });
    super.initState();
  }

  @override
  void dispose() {
    detector.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iTaxEasy',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashScreen()
        // routes: {
        //   '/login': (context) => Login(),
        //   '/mainpage': (context) => Navbar(),
        // }
        );
  }

  // getToken() async {
  //   String token = await FirebaseMessaging.instance.getToken();
  //   print(token);
  // }
}

class MainPage {}

class SplashContent extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const SplashContent({
    Key key,
    @required this.title,
    @required this.text,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          SizedBox(
            height: 200,
            child: Image.asset(image),
          ),
          const SizedBox(height: 60),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 19,
            ),
          )
        ],
      ),
    );
  }
}

final splashContent = [
  {
    "title": "Start Learning",
    "text":
        "Start learning now by using this app, Get your choosen course and start the journey.",
    "image": "assets/images/1.png",
  },
  {
    "title": "Explore Courses",
    "text": "Choose which course is suitable for you to enroll in.",
    "image": "assets/images/2.png",
  },
  {
    "title": "At Any time.",
    "text": "Your courses is available at any time you want. Join us now !",
    "image": "assets/images/3.png"
  },
];
