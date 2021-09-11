import 'package:flutter/material.dart';

class PrimeiraParte extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final double size = 38;
  final double height = 1.28;
  final Color textoMeioCinza = Color(0xFFC4C4C4);
  PrimeiraParte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NÃO VENDEMOS SERVIÇOS,',
            style: TextStyle(
              color: laranjaum,
              fontFamily: font,
              fontWeight: FontWeight.w400,
              fontSize: size,
              height: height,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Text(
            'NÓS ENTREGAMOS SOLUÇÕES!',
            style: TextStyle(
              color: laranjaum,
              fontFamily: font,
              fontWeight: FontWeight.w900,
              fontSize: size,
              height: height,
            ),
          ),
        ],
      ),
    );
  }
}
