import 'package:flutter/material.dart';

class BotaoSaibaMais extends StatelessWidget {
  final Color laranjaum = Color(0xFFFF5400);
  BotaoSaibaMais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 50),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 37,
              width: 138,
              decoration: BoxDecoration(
                color: laranjaum,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: laranjaum,
                    blurRadius: 35,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_circle_down_outlined),
                  const SizedBox(width: 5),
                  Text(
                    'Saber Mais',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
