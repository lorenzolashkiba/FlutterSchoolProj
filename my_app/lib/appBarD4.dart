import 'package:flutter/material.dart';

class AppBarD4 extends StatefulWidget implements PreferredSizeWidget {
  final String balance;
  final Color passedColor;
  const AppBarD4({Key? key, required this.balance, required this.passedColor})
      : super(key: key);

  @override
  State<AppBarD4> createState() => _AppBarD4State();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _AppBarD4State extends State<AppBarD4> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Center(
        child: Container(
          child: Text(
            'D4F',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: widget.passedColor),
          ),
        ),
      ),
      leadingWidth: 100,
      actions: <Widget>[
        Container(
          width: 150,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '${widget.balance}',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: widget.passedColor),
            ),
          ),
        )
      ],
    );
  }
}
