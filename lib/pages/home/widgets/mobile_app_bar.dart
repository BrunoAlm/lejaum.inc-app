import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(),
      backgroundColor: Color(0xFFFF5400),
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'lejaum',
          style: TextStyle(
            color: Color(0xFFE5E5E5),
            fontFamily: 'Georama',
            fontStyle: FontStyle.italic,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
