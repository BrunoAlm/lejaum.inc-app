import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

Widget tipoInstanelsonDireita(double altura, Function()? pressionado) {
  return GestureDetector(
    onTap: pressionado,
    child: Container(
      height: altura,
      width: 100,
      color: Colors.transparent,
    ),
  );
}

Widget tipoInstanelsonEsquerda(double altura, Function()? pressionado) {
  return GestureDetector(
    onTap: pressionado,
    child: Container(
      height: altura,
      width: 100,
      color: Colors.transparent,
    ),
  );
}

Widget customButton(IconData? icone, void Function()? pressionado) {
  return ElevatedButton(
    style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding:
            MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 20)),
        backgroundColor:
            MaterialStateProperty.all(Colors.black.withOpacity(0.7))),
    child: Icon(icone),
    onPressed: pressionado,
  );
}

Widget borrada() => Center(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3.0,
            sigmaY: 3.0,
          ),
          child: Container(
            width: Get.width,
            height: Get.height,
            decoration: new BoxDecoration(color: Colors.black.withOpacity(0.8)),
          ),
        ),
      ),
    );
