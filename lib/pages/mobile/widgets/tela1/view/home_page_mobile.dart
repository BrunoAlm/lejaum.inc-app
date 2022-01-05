import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:responsive_framework/responsive_framework.dart' as responsive;
import '../../../../../widgets/botao_estilizado.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(TestPageController());
    var _altura = MediaQuery.of(context).size.height;
    var _tamanho_da_fonte_titulo =
        responsive.ResponsiveValue(context, defaultValue: 38.0, valueWhen: [
      responsive.Condition.smallerThan(name: responsive.MOBILE, value: 25.0),
      responsive.Condition.largerThan(name: responsive.TABLET, value: 35.0),
      responsive.Condition.largerThan(name: responsive.DESKTOP, value: 60.0)
    ]).value;
    return Container(
      padding: EdgeInsets.only(bottom: 120),
      height: _altura,
      decoration: BoxDecoration(
        color: context.theme.backgroundColor,
        image: DecorationImage(
          image: AssetImage("assets/images/first_page_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: GetBuilder<TestPageController>(
        builder: (_pageController) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'NÃO VENDEMOS',
              style: StylesMobile.tituloFinoLinethrough.merge(
                TextStyle(fontSize: _tamanho_da_fonte_titulo),
              ),
            ),
            Text(
              'SERVIÇOS,',
              style: StylesMobile.tituloFinoLinethrough.merge(
                TextStyle(fontSize: _tamanho_da_fonte_titulo),
              ),
            ),
            Text(
              'NÓS ENTREGAMOS',
              style: StylesMobile.tituloExtraBold.merge(
                TextStyle(fontSize: _tamanho_da_fonte_titulo),
              ),
            ),
            Text(
              'SOLUÇÕES!',
              style: StylesMobile.tituloExtraBold.merge(
                TextStyle(fontSize: _tamanho_da_fonte_titulo),
              ),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotaoEstilizado(
                  textColor: Colors.white,
                  texto: "Saber Mais",
                  altura: 40,
                  largura: 160,
                  pressionado: () => _pageController.controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart,
                  ),
                  icone: Icons.arrow_circle_down_outlined,
                  cor: StylesMobile.lowBlueGray,
                ),
                SizedBox(width: 20),
                BotaoEstilizado(
                  textColor: StylesMobile.blackText,
                  texto: "Portfólio",
                  altura: 40,
                  largura: 160,
                  pressionado: () => _pageController.controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart,
                  ),
                  icone: Icons.arrow_circle_down_outlined,
                  cor: StylesMobile.mareloMostarda,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotaoEstilizado(
                  textColor: Colors.white,
                  cor: StylesMobile.laranjaum,
                  texto: "Ver Planos",
                  altura: 40,
                  largura: 160,
                  pressionado: () => _pageController.controller.animateToPage(
                    6,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart,
                  ),
                  icone: Icons.credit_card,
                ),
                SizedBox(width: 20),
                BotaoEstilizado(
                  textColor: Colors.white,
                  cor: StylesMobile.verdeGood,
                  texto: "Whatsapp",
                  altura: 40,
                  largura: 160,
                  pressionado: abrirWhatsApp,
                  icone: FaIcon(FontAwesomeIcons.whatsapp).icon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
