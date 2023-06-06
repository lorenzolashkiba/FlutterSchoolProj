import 'package:flutter/material.dart';
import 'package:google_mao/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "HOME",
        style: TextStyle(
            fontSize: 100, fontWeight: FontWeight.w700, color: Colors.white),
      )),
      decoration: const BoxDecoration(
        gradient: darkGradient,
      ),
    );
  }
}
