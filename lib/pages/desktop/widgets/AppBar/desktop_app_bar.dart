import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/widgets/botao_troca_modo.dart';
import 'package:seo_renderer/seo_renderer.dart';

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
        toolbarHeight: 60,
        elevation: 5,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(width: 145),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/icons/logo_icon.svg"),
                  const SizedBox(width: 3),
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      'lejaum',
                      style: TextStyle(
                        color: Styles.quaseWhite,
                        fontSize: 30,
                        fontFamily: 'Georama',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            BotaoAppBar(texto: 'Início'),
            const SizedBox(width: 20.0),
            BotaoAppBar(texto: 'Soluções'),
            const SizedBox(width: 20.0),
            BotaoAppBar(texto: 'Portfólio'),
            const SizedBox(width: 20.0),
            BotaoAppBar(texto: 'Ver Planos'),
            const SizedBox(width: 20.0),
            BotaoAppBar(texto: 'Contato'),
            const SizedBox(width: 20.0),
            BotaoDarkModeDesktop(),
            const SizedBox(width: 145),
          ],
        ),
      ),
    );
  }
}
