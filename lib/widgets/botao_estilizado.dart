import 'package:flutter/material.dart';

class BotaoEstilizado extends StatelessWidget {
  final Color laranjaum = Color(0xFFFF5400);
  BotaoEstilizado({Key? key, this.texto}) : super(key: key);
  final String? texto;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 50),
          child: Container(
            height: 37,
            width: 145,
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
              onPressed: () {},
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
        ),
      ],
    );
  }
}
