import 'dart:html';
import 'package:responsive_framework/responsive_framework.dart' as responsive;
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

class BotaoAppBar extends StatefulWidget {
  const BotaoAppBar({Key? key, required this.texto}) : super(key: key);
  final texto;
  @override
  State<BotaoAppBar> createState() => _BotaoAppBarState();
}

class _BotaoAppBarState extends State<BotaoAppBar> {
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFE5E5E5);

  @override
  Widget build(BuildContext context) {
    // var _altura_do_botao =
    //     responsive.ResponsiveValue(context, defaultValue: 20.0, valueWhen: [
    //   responsive.Condition.largerThan(name: responsive.TABLET, value: 20.0),
    //   responsive.Condition.largerThan(name: 'DESKTOP1', value: 20.0)
    // ]).value;
    // var _largura_do_botao =
    //     responsive.ResponsiveValue(context, defaultValue: 70.0, valueWhen: [
    //   responsive.Condition.largerThan(name: responsive.TABLET, value: 70.0),
    //   responsive.Condition.largerThan(name: 'DESKTOP1', value: 20.0)
    // ]).value;
    double? _fonte =
        responsive.ResponsiveValue(context, defaultValue: 1.0, valueWhen: [
      responsive.Condition.equals(name: 'DESKTOP1', value: 14.0),
      responsive.Condition.equals(name: 'DESKTOP2', value: 17.0),
      responsive.Condition.equals(name: responsive.DESKTOP, value: 17.0),
    ]).value?.toDouble();
    print(_fonte);
    return HoverWidget(
      hoverChild: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          child: Text(
            widget.texto,
            style: TextStyle(
              color: laranjaum,
              fontFamily: "Georama",
              fontStyle: FontStyle.normal,
              fontSize: _fonte,
            ),
          ),
        ),
        style: ButtonStyle(
          // fixedSize: MaterialStateProperty.all(
          //     Size(_largura_do_botao!, _altura_do_botao!)),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => quaseWhite),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: quaseWhite, width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
      onHover: (event) {},
      child: TextButton(
        onPressed: () {},
        child: TextRenderer(
          element: ParagraphElement(),
          text: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            child: Text(
              widget.texto,
              style: TextStyle(
                color: quaseWhite,
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: _fonte,
              ),
            ),
          ),
        ),
        style: ButtonStyle(
          // fixedSize: MaterialStateProperty.all(
          //     Size(_largura_do_botao, _altura_do_botao)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: quaseWhite, width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
