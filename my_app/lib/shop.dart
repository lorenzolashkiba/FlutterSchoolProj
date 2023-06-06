import 'package:flutter/material.dart';

import 'constants.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "SHOP",
        style: TextStyle(
            fontSize: 100, fontWeight: FontWeight.w700, color: Colors.white),
      )),
      decoration: BoxDecoration(
        gradient: darkGradient,
      ),
    );
  }
}
