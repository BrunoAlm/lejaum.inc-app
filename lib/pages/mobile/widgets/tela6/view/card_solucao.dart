import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/widgets/expansivelzada.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/widgets/expansivelzada2.dart';

class CardSolucao extends StatefulWidget {
  const CardSolucao({Key? key}) : super(key: key);

  @override
  _CardSolucaoState createState() => _CardSolucaoState();
}

class _CardSolucaoState extends State<CardSolucao> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            constraints: BoxConstraints(minWidth: constraints.maxWidth * 0.8),
            child: Expansivelzada(),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: constraints.maxWidth * 0.8),
            child: Expansivelzada2(),
          ),
        ],
      );
    });
  }
}
