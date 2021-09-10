import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFF5400),
      title: Text(
        'lejaum',
        style: TextStyle(
          color: Color(0xFFE5E5E5),
          fontSize: 30,
          fontFamily: 'Georama',
          fontStyle: FontStyle.italic,
        ),
      ),
      
    );
  }
}
