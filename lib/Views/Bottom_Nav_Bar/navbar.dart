import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Controllers/menu_controller.dart';
import 'package:gst_app/Views/Bottom_Nav_Bar/user_profile.dart';
import 'package:gst_app/Views/Theme/colors.dart';

import 'package:iconsax/iconsax.dart';

import 'package:provider/provider.dart';

import 'E-Invoicing.dart';
import 'MainPage.dart';
import 'Statistics.dart';
import 'customer/customer_view.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Itax Easy',
        theme: ThemeData(
          primaryColor: const Color(0xFFC41A3B),
          primaryColorDark: KColors.icon,
          primaryColorLight: const Color(0xFFFBE0E6),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF1B1F32)),
        ),
        home: const Navlist(),
      ),
    );
  }
}

class Navlist extends StatefulWidget {
  const Navlist({Key key}) : super(key: key);

  @override
  _NavlistState createState() => _NavlistState();
}

class _NavlistState extends State<Navlist> with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   centerTitle: true,
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        child: const Icon(
          Iconsax.document,
          size: 30,
        ),
        onPressed: () {
          _tabController.animateTo(2);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: FadeInDown(
        child: TabBarView(
          children: const <Widget>[
            DetailsScreen(),
            ListCustomer(),
            EInvoicingUi(),
            Statistics(),
            ProfilePage(),
            // More(),
          ],
          // If you want to disable swiping in tab the use below code
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
        ),
      ),
      bottomNavigationBar: FadeInRight(
        delay: const Duration(milliseconds: 430),
        duration: const Duration(milliseconds: 630),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
          padding: const EdgeInsets.all(16.0),
          child: TabBar(
            // automaticIndicatorColorAdjustment: true,
            // overlayColor:  MaterialStateProperty.all<Color>(Colors.black),
            labelColor: Theme.of(context).primaryColorDark,
            unselectedLabelColor: KColors.icon,
            labelStyle: const TextStyle(fontSize: 10.0),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xffFFFFFF), width: 0),
              insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
            ),
            indicatorColor: Theme.of(context).primaryColor,
            tabs: <Widget>[
              const Tab(
                icon: Icon(
                  Icons.home_rounded,
                  size: 35.0,
                ),
                // text: 'Home',
              ),
              const Tab(
                icon: Icon(
                  Icons.groups,
                  size: 35.0,
                ),
                // text: 'Customers',
              ),
              Visibility(
                visible: isVisible,
                child: const Tab(
                  icon: Icon(
                    Icons.settings,
                    size: 28.0,
                    color: Colors.transparent,
                  ),
                  // text: 'Test',
                ),
              ),
              const Tab(
                icon: Icon(
                  Icons.settings,
                  size: 35.0,
                ),
                // text: 'Services',
              ),
              const Tab(
                icon: Icon(
                  Icons.person,
                  size: 35.0,
                ),
                // text: 'Profile',
              ),
              // Tab(
              //   icon: Icon(
              //     Icons.more,
              //     size: 24.0,
              //   ),
              //   text: 'More',
              // ),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
