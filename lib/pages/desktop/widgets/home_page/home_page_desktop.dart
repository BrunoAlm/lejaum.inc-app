import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    Get.put(DesktopListViewController());
    // var _tamanho_da_fonte_titulo =
    //     responsive.ResponsiveValue(context, defaultValue: 38.0, valueWhen: [
    //   responsive.Condition.smallerThan(name: responsive.MOBILE, value: 30.0),
    //   responsive.Condition.largerThan(name: responsive.TABLET, value: 35.0),
    //   responsive.Condition.largerThan(name: responsive.DESKTOP, value: 60.0)
    // ]).value;
    // var _altura_do_botao =
    //     responsive.ResponsiveValue(context, defaultValue: 40.0, valueWhen: [
    //   responsive.Condition.smallerThan(name: responsive.MOBILE, value: 40.0),
    //   responsive.Condition.largerThan(name: responsive.TABLET, value: 40.0),
    //   responsive.Condition.largerThan(name: responsive.DESKTOP, value: 40.0)
    // ]).value;
    // var _largura_do_botao =
    //     responsive.ResponsiveValue(context, defaultValue: 160.0, valueWhen: [
    //   responsive.Condition.smallerThan(name: responsive.MOBILE, value: 130.0),
    //   responsive.Condition.largerThan(name: responsive.TABLET, value: 160.0),
    //   responsive.Condition.largerThan(name: responsive.DESKTOP, value: 160.0)
    // ]).value;

    return GetBuilder<DesktopListViewController>(
      builder: (controller) => Container(
        height: _altura - 60,
        decoration: BoxDecoration(
          color: context.theme.backgroundColor,
          image: DecorationImage(
            image: AssetImage("assets/images/first_page_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              // width: ,
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
            Padding(
              padding: EdgeInsets.only(left: 160.0, top: _altura * 0.25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NÃO VENDEMOS SERVIÇOS,',
                    style: Styles.tituloFinoLinethrough.merge(
                      TextStyle(fontSize: 58),
                    ),
                  ),
                  Text(
                    'NÓS ENTREGAMOS SOLUÇÕES!',
                    style: Styles.tituloExtraBold.merge(
                      TextStyle(fontSize: 58),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconeBotaoEstilizado(
                        textColor: Colors.white,
                        texto: "Saber Mais",
                        altura: 40,
                        largura: 140,
                        pressionado: () {
                          Scrollable.ensureVisible(
                            controller.boxesKey.currentContext!,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutQuart,
                          );
                          // controller.scrollController.animateTo(2,
                          //     duration: Duration(milliseconds: 500),
                          //     curve: Curves.easeInOutQuart);
                        },
                        icone: Icons.arrow_circle_down_outlined,
                        cor: Styles.lowBlueGray,
                      ),
                      SizedBox(width: 20),
                      IconeBotaoEstilizado(
                        textColor: Styles.pretao,
                        texto: "Portfólio",
                        altura: 40,
                        largura: 140,
                        pressionado: () {},
                        icone: Icons.arrow_circle_down_outlined,
                        cor: Styles.mareloMostarda,
                      ),
                      SizedBox(width: 20),
                      IconeBotaoEstilizado(
                        textColor: Colors.white,
                        cor: Styles.laranjaum,
                        texto: "Ver Planos",
                        altura: 40,
                        largura: 140,
                        pressionado: () {},
                        icone: Icons.credit_card,
                      ),
                      SizedBox(width: 20),
                      IconeBotaoEstilizado(
                        textColor: Colors.white,
                        cor: Styles.verdeGood,
                        texto: "Whatsapp",
                        altura: 40,
                        largura: 140,
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
  }
}
