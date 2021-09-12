import 'package:flutter/material.dart';
import 'widgets/portfolio/portfolio.dart';
import 'widgets/primeira_parte/primeira_parte.dart';

class MobilePage extends StatefulWidget {
  MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimeiraParte(),
            Portfolio(),
          ],
        ),
      ),
    );
  }
}
