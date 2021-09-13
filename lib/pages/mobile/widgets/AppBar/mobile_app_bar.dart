import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileAppBar extends StatelessWidget {
  final Color laranjaum = Color(0xFFFF5400);
  MobileAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: laranjaum,
            spreadRadius: 2,
            blurRadius: 14,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: laranjaum),
        backgroundColor: laranjaum,
        title: Row(
          children: [
            // Image.asset("assets/images/logo_icon.png"),
            SvgPicture.asset("assets/images/icons/logo_icon.svg"),
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
      ),
    );
  }
}
