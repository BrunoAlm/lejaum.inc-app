import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/widgets/tela4/widgets/expansivelzada.dart';
import '../../../services/themes.dart';

class Solucoes extends StatefulWidget {
  Solucoes({Key? key}) : super(key: key);

  @override
  State<Solucoes> createState() => _SolucoesState();
}

class _SolucoesState extends State<Solucoes> {
  @override
  Widget build(BuildContext context) {
    Get.put(TestTileController());

    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Soluções',
                style: StylesMobile.tituloExtraBold,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Veja abaixo algumas das soluções que nós podemos oferecer:',
                style: StylesMobile.subtitulo,
              ),
            ),
            const SizedBox(height: 10),
            Expansivelzada(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Nós somos a solução certa\npara você e sua empresa!',
                style: StylesMobile.subtituloBoldao,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
