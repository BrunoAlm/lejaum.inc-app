import 'package:flutter/material.dart';

class BotaoEstilizado extends StatelessWidget {
  final Color laranjaum = Color(0xFFFF5400);
  BotaoEstilizado(
      {Key? key, this.texto, this.altura, this.largura, this.pressionado})
      : super(key: key);
  final String? texto;
  final Function()? pressionado;
  final double? largura;
  final double? altura;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: altura,
          width: largura,
          decoration: BoxDecoration(
            color: laranjaum,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: laranjaum,
                spreadRadius: 2,
                blurRadius: 14,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ElevatedButton.icon(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
            onPressed: pressionado,
            icon: Icon(Icons.arrow_circle_down_outlined),
            label: Text(
              texto!,
              style: TextStyle(
                fontFamily: 'Georama',
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
