import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class IconText extends StatelessWidget {
  IconText({
    Key? key,
    required this.titulo,
    required this.subtitulo,
  }) : super(key: key);
  final String titulo;
  final String subtitulo;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 5, 0),
            child: SvgPicture.asset('assets/svgs/seta_solucoes.svg'),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(titulo, style: StylesMobile.tituloIconTextSolucao),
                Text(
                  subtitulo,
                  style: StylesMobile.subtituloIconTextSolucao,
                  // softWrap: true,
                  // maxLines: 2,
                  overflow: TextOverflow.clip,
                  textScaleFactor: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
