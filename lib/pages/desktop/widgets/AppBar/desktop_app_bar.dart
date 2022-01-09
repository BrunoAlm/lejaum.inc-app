import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'botoes_app_bar.dart';

class DesktopAppBar extends StatefulWidget {
  DesktopAppBar({Key? key}) : super(key: key);

  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  final Color laranjaum = Color(0xFFFF5400);

  final Color quaseWhite = Color(0xFFE5E5E5);

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
        toolbarHeight: 70,
        elevation: 5,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const SizedBox(width: 145),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                children: [
                  const SizedBox(width: 25.08),
                  SvgPicture.asset("assets/images/icons/logo_icon.svg"),
                  const SizedBox(width: 3),
                  Text(
                    'lejaum',
                    style: TextStyle(
                      color: Color(0xFFE5E5E5),
                      fontSize: 30,
                      fontFamily: 'Georama',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            botaoAppBar('Início'),
            const SizedBox(width: 25.08),
            botaoAppBar('Soluções'),
            const SizedBox(width: 25.08),
            botaoAppBar('Portfólio'),
            const SizedBox(width: 25.08),
            botaoAppBar('FAQ'),
            const SizedBox(width: 25.08),
            botaoAppBar('Contato'),
            const SizedBox(width: 25.08),
          ],
        ),
      ),
    );
  }
}
