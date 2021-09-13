import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

Widget botaoAppBar(String texto) {
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFE5E5E5);
  return HoverWidget(
    hoverChild: TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
        child: Text(
          texto,
          style: TextStyle(
            color: laranjaum,
            fontFamily: "Georama",
            fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => quaseWhite),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
        child: Text(
          texto,
          style: TextStyle(
            color: quaseWhite,
            fontFamily: "Georama",
            fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
        ),
      ),
      style: ButtonStyle(
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
