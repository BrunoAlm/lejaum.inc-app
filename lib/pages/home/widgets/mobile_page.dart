import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  final String font = 'Georama';
  final double size = 38;
  final double height = 1.28;
  final Color laranjaum = Color(0xFFFF5400);

  MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1918),
      body: Column(
        children: [
          Padding(
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
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Container(
                  height: 32,
                  width: 133,
                  decoration: BoxDecoration(
                    color: laranjaum,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: laranjaum,
                        blurRadius: 4,
                        offset: Offset(0, 0),
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
                          fontFamily: font,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
