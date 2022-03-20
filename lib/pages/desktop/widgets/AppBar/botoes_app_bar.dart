import 'dart:html';
// import 'package:responsive_framework/responsive_framework.dart' as responsive;
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:lejaum/pages/desktop/services/styles_desktop.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

class BotaoAppBar extends StatefulWidget {
  const BotaoAppBar({Key? key, required this.texto, required this.pressionado})
      : super(key: key);
  final String texto;
  final Function()? pressionado;
  @override
  State<BotaoAppBar> createState() => _BotaoAppBarState();
}

class _BotaoAppBarState extends State<BotaoAppBar> {
  final double _fontSize = StylesDesktop.appBarFontSize;

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: TextButton(
        onPressed: widget.pressionado,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Text(
            widget.texto,
            style: TextStyle(
              color: Styles.laranjaum,
              fontFamily: "Georama",
              fontStyle: FontStyle.normal,
              fontSize: _fontSize,
            ),
          ),
        ),
        style: TextButton.styleFrom(
          // fixedSize: MaterialStateProperty.all(
          //     Size(_largura_do_botao!, _altura_do_botao!)),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Styles.quaseWhite),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Styles.quaseWhite, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      onHover: (event) {},
      child: TextButton(
        onPressed: widget.pressionado,
        child: TextRenderer(
          element: ParagraphElement(),
          text: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              widget.texto,
              style: TextStyle(
                color: Styles.quaseWhite,
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: _fontSize,
              ),
            ),
          ),
        ),
        style: ButtonStyle(
          // fixedSize: MaterialStateProperty.all(
          //     Size(_largura_do_botao, _altura_do_botao)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: Styles.quaseWhite, width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
