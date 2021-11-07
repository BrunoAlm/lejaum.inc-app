import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Solucoes extends StatelessWidget {
  const Solucoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soluções',
              style: StylesMobile.tituloExtraBold,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo algumas das soluções que nós podemos oferecer:',
              style: StylesMobile.subtitulo,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1A1918),
                    child: SvgPicture.asset("/svgs/1.svg"),
                  ),
                ),
                Column(
                  children: [],
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1A1918),
                    child: SvgPicture.asset("/svgs/1.svg"),
                  ),
                ),
                Column(
                  children: [],
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1A1918),
                    child: SvgPicture.asset("/svgs/1.svg"),
                  ),
                ),
                Column(
                  children: [],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Nós somos a solução certa\npara você e sua empresa!',
              style: StylesMobile.subtituloBoldao,
            ),
          ],
        ),
      ),
    );
  }
}
