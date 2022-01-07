import 'package:flutter/material.dart';

class IconeBotaoEstilizado extends StatelessWidget {
  IconeBotaoEstilizado({
    Key? key,
    required this.texto,
    this.altura,
    this.largura,
    required this.pressionado,
    required this.icone,
    required this.cor,
    required this.textColor,
    this.tamanho_fonte,
    this.tamanho_icone,
  }) : super(key: key);

  final String? texto;
  final Function()? pressionado;
  final double? largura, altura;
  final IconData? icone;
  final Color? cor;
  final Color? textColor;
  final double? tamanho_fonte;
  final double? tamanho_icone;
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
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(cor!),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        onPressed: pressionado!,
        icon: Icon(icone, color: textColor!, size: tamanho_icone),
        label: Text(
          texto!,
          style: TextStyle(
            fontFamily: 'Georama',
            color: textColor!,
            fontSize: tamanho_fonte,
          ),
        ),
      ),
    );
  }
}

class BotaoEstilizado extends StatelessWidget {
  BotaoEstilizado({
    Key? key,
    required this.texto,
    this.altura,
    this.largura,
    required this.pressionado,
    required this.cor,
    required this.textColor,
    this.tamanho_fonte,
    this.tamanho_icone,
  }) : super(key: key);

  final String? texto;
  final Function()? pressionado;
  final double? largura, altura;
  final Color? cor;
  final Color? textColor;
  final double? tamanho_fonte;
  final double? tamanho_icone;
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
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(cor!),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        onPressed: pressionado!,
        child: Text(
          texto!,
          style: TextStyle(
            fontFamily: 'Georama',
            color: textColor!,
            fontSize: tamanho_fonte,
          ),
        ),
      ),
    );
  }
}
