import 'package:flutter/material.dart';
import 'package:lejaum/pages/services/styles.dart';

class Porfolio extends StatelessWidget {
  const Porfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 49, left: 25),
      child: Text(
        'Portfólio',
        style: Styles.tituloExtraBold,
      ),
    );
  }
}
