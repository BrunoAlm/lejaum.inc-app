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
    Get.put(MobilePageViewController());
    var _altura = MediaQuery.of(context).size.height;
    var _tamanho_da_fonte_titulo =
        responsive.ResponsiveValue(context, defaultValue: 38.0, valueWhen: [
      responsive.Condition.smallerThan(name: responsive.MOBILE, value: 30.0),
      // responsive.Condition.largerThan(name: responsive.TABLET, value: 35.0),
      responsive.Condition.largerThan(name: responsive.DESKTOP, value: 60.0)
    ]).value;
    var _altura_do_botao =
        responsive.ResponsiveValue(context, defaultValue: 40.0, valueWhen: [
      responsive.Condition.smallerThan(name: responsive.MOBILE, value: 40.0),
      // responsive.Condition.largerThan(name: responsive.TABLET, value: 40.0),
      responsive.Condition.largerThan(name: responsive.DESKTOP, value: 40.0)
    ]).value;
    var _largura_do_botao =
        responsive.ResponsiveValue(context, defaultValue: 160.0, valueWhen: [
      responsive.Condition.smallerThan(name: responsive.MOBILE, value: 130.0),
      // responsive.Condition.largerThan(name: responsive.TABLET, value: 160.0),
      responsive.Condition.largerThan(name: responsive.DESKTOP, value: 160.0)
    ]).value;
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return Container(
        height: _altura,
        decoration: BoxDecoration(
          color: context.theme.backgroundColor,
          image: DecorationImage(
            image: AssetImage("assets/images/first_page_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: GetBuilder<MobilePageViewController>(
          builder: (_pageController) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: constraints.maxWidth,
                color: Styles.roxinho,
                child: Center(
                  child: Text(
                    'Estamos construindo o nosso site! Pode haver erros ou bugs!',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Georama',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NÃO VENDEMOS',
                      style: Styles.tituloFinoLinethrough.merge(
                        TextStyle(fontSize: _tamanho_da_fonte_titulo),
                      ),
                    ),
                    Text(
                      'SERVIÇOS,',
                      style: Styles.tituloFinoLinethrough.merge(
                        TextStyle(fontSize: _tamanho_da_fonte_titulo),
                      ),
                    ),
                    Text(
                      'NÓS ENTREGAMOS',
                      style: Styles.tituloExtraBold.merge(
                        TextStyle(fontSize: _tamanho_da_fonte_titulo),
                      ),
                    ),
                    Text(
                      'SOLUÇÕES!',
                      style: Styles.tituloExtraBold.merge(
                        TextStyle(fontSize: _tamanho_da_fonte_titulo),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconeBotaoEstilizado(
                          textColor: Colors.white,
                          texto: "Saber Mais",
                          altura: _altura_do_botao,
                          largura: _largura_do_botao,
                          pressionado: () =>
                              _pageController.controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutQuart,
                          ),
                          icone: Icons.arrow_circle_down_outlined,
                          cor: Styles.lowBlueGray,
                        ),
                        SizedBox(width: 20),
                        IconeBotaoEstilizado(
                          textColor: Styles.pretao,
                          texto: "Portfólio",
                          altura: _altura_do_botao,
                          largura: _largura_do_botao,
                          pressionado: () =>
                              _pageController.controller.animateToPage(
                            2,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutQuart,
                          ),
                          icone: Icons.arrow_circle_down_outlined,
                          cor: Styles.mareloMostarda,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconeBotaoEstilizado(
                          textColor: Colors.white,
                          cor: Styles.laranjaum,
                          texto: "Ver Planos",
                          altura: _altura_do_botao,
                          largura: _largura_do_botao,
                          pressionado: () =>
                              _pageController.controller.animateToPage(
                            6,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutQuart,
                          ),
                          icone: Icons.credit_card,
                        ),
                        SizedBox(width: 20),
                        IconeBotaoEstilizado(
                          textColor: Colors.white,
                          cor: Styles.verdeGood,
                          texto: "Whatsapp",
                          altura: _altura_do_botao,
                          largura: _largura_do_botao,
                          pressionado: abrirWhatsApp,
                          icone: FaIcon(FontAwesomeIcons.whatsapp).icon,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
