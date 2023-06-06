import 'package:flutter/material.dart';

import 'constants.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "WALLET",
        style: TextStyle(
            fontSize: 100, fontWeight: FontWeight.w700, color: Colors.white),
      )),
      decoration: BoxDecoration(
        gradient: darkGradient,
      ),
    );
  }
}
