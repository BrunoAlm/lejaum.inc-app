import 'package:flutter/material.dart';

import 'galeria/galeria.dart';

class Portfolio2 extends StatefulWidget {
  const Portfolio2({Key? key}) : super(key: key);

  @override
  State<Portfolio2> createState() => _Portfolio2State();
}

class _Portfolio2State extends State<Portfolio2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 49),
      child: Galeria2(),
    );
  }
}
