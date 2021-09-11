import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte.dart';

class MobilePage extends StatelessWidget {
  MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimeiraParte(),
            Porfolio(),
          ],
        ),
      ),
    );
  }
}
