import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

import '../../../services/styles_mobile.dart';

class ExpandeBonito extends StatefulWidget {
  ExpandeBonito({Key? key, required this.titulo, required this.subtitulo})
      : super(key: key);
  late final String titulo, subtitulo;
  @override
  _ExpandeBonitoState createState() => _ExpandeBonitoState();
}

class _ExpandeBonitoState extends State<ExpandeBonito> {

  @override
  Widget build(BuildContext context) {
    Get.put(TestTileController());
    return GetBuilder<TestTileController>(
      builder: (controller) => ExpansionTile(
        title: Text(widget.titulo, style: StylesMobile.tituloIconTextSolucao),
        leading: Icon(
          controller.expandiu
              ? FontAwesomeIcons.arrowAltCircleDown
              : FontAwesomeIcons.arrowAltCircleUp,
        ),
        trailing: const SizedBox(),
        childrenPadding: const EdgeInsets.symmetric(vertical: 10),
        tilePadding: EdgeInsets.zero,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        // expandedAlignment: Alignment.centerLeft,
        children: <Widget>[
          Text(
            widget.subtitulo,
            style: StylesMobile.subtituloIconTextSolucao,
          ),
          // ListTile()
          // ListTile(title: Text('This is tile number 2')),
        ],
        onExpansionChanged: (value) {
          controller.expande();
          setState(() {});
        },
      ),
    );
  }
}
