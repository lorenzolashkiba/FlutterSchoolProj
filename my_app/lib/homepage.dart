import 'package:flutter/material.dart';
import 'package:google_mao/home.dart';
import 'package:google_mao/order_traking_page.dart';
import 'package:google_mao/appBarD4.dart';
import 'package:google_mao/shop.dart';
import 'package:google_mao/wallet.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    OrderTrackingPage(),
    Shop(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: const AppBarD4(balance: "1,109.10", passedColor: Colors.white),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: baseGradient,
        ),
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          color: thirdColor,
          activeColor: thirdColor,
          textStyle: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: thirdColor),
          iconSize: 30,
          haptic: true,
          tabBorderRadius: 30,
          tabBackgroundColor: hoverSecondaryColor,
          tabMargin: const EdgeInsetsDirectional.fromSTEB(0, 10, 10, 20),
          padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 10, 15),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.map,
              text: 'Map',
            ),
            GButton(
              icon: Icons.store,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.wallet,
              text: 'Wallet',
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
