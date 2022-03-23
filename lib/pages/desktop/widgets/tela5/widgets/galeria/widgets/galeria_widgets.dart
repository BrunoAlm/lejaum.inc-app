import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class TipoInstanelsonDireita extends StatefulWidget {
  const TipoInstanelsonDireita({Key? key, required this.pressionado})
      : super(key: key);
  final Function()? pressionado;
  @override
  State<TipoInstanelsonDireita> createState() => _TipoInstanelsonDireitaState();
}

class _TipoInstanelsonDireitaState extends State<TipoInstanelsonDireita> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.pressionado,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}

Widget tipoInstanelsonEsquerda(double altura, Function()? pressionado) {
  return GestureDetector(
    onTap: pressionado,
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ),
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
