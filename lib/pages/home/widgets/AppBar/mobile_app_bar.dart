import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(),
      backgroundColor: Color(0xFFFF5400),
      title: Row(
        children: [
          // Image.asset("assets/images/logo_icon.png"),
          SvgPicture.asset("assets/images/logo_icon.svg"),
          const SizedBox(width: 3),
          Text(
            'lejaum',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontFamily: 'Georama',
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
