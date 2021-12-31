import 'package:flutter/material.dart';

class BotaoEstilizado extends StatelessWidget {
  BotaoEstilizado({
    Key? key,
    required this.texto,
    this.altura,
    this.largura,
    required this.pressionado,
    required this.icone,
    required this.cor,
    required this.textColor,
  }) : super(key: key);

  final String? texto;
  final Function()? pressionado;
  final double? largura, altura;
  final IconData? icone;
  final Color? cor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      decoration: BoxDecoration(
        color: cor!,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: cor!,
            spreadRadius: 2,
            blurRadius: 14,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(cor!),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        onPressed: pressionado!,
        icon: Icon(icone, color: textColor!),
        label: Text(
          texto!,
          style: TextStyle(
            fontFamily: 'Georama',
            color: textColor!,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
