import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../services/styles_mobile.dart';

class ExpandeBonito extends StatefulWidget {
  ExpandeBonito({Key? key, required this.titulo, required this.subtitulo})
      : super(key: key);
  late final String titulo, subtitulo;
  @override
  _ExpandeBonitoState createState() => _ExpandeBonitoState();
}

class _ExpandeBonitoState extends State<ExpandeBonito> {
  late bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.titulo, style: StylesMobile.tituloIconTextSolucao),
      leading: Icon(
        _customTileExpanded
            ? FontAwesomeIcons.arrowAltCircleDown
            : FontAwesomeIcons.arrowAltCircleUp,
      ),
      trailing: const SizedBox(),
      childrenPadding: const EdgeInsets.only(top: 5),
      tilePadding: EdgeInsets.zero,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      // expandedAlignment: Alignment.centerLeft,
      children: <Widget>[
        Text(
          widget.subtitulo,
          style: StylesMobile.subtituloIconTextSolucao,
        ),
        // ListTile(title: Text('This is tile number 2')),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() => _customTileExpanded = expanded);
      },
    );
  }
}
