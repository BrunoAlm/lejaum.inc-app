import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:google_tag_manager/google_tag_manager.dart' as gtm;

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    pushGtm() {
      gtm.pushEvent('EventAppWeb', data: {'eventoApp': 'VerPlanosBtn'});
    }

    var _largura_btn = 150;
    var _altura = MediaQuery.of(context).size.height;
    Get.put(DesktopListViewController());

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
                  'Versão completa do portfólio na versão mobile, pois estamos construindo o nosso site! Pode haver partes incompletas!',
                  softWrap: true,
                  style: TextStyle(
                    color: Styles.quaseWhite,
                    fontFamily: 'Georama',
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _altura - 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NÃO VENDEMOS SERVIÇOS,',
                        style: Styles.tituloFinoLinethrough.merge(
                          TextStyle(fontSize: 48),
                        ),
                      ),
                      Text(
                        'NÓS ENTREGAMOS SOLUÇÕES!',
                        style: Styles.tituloExtraBold.merge(
                          TextStyle(fontSize: 48),
                        ),
                      ),
                      const SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconeBotaoEstilizado(
                            textColor: Colors.white,
                            texto: "Saber Mais",
                            altura: 35,
                            largura: 130,
                            pressionado: () {
                              Scrollable.ensureVisible(
                                controller.boxesKey.currentContext!,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOutQuart,
                              );
                            },
                            icone: Icons.arrow_circle_down_outlined,
                            cor: Styles.lowBlueGray,
                          ),
                          SizedBox(width: 20),
                          IconeBotaoEstilizado(
                            textColor: Styles.pretao,
                            texto: "Portfólio",
                            altura: 35,
                            largura: 130,
                            pressionado: () {},
                            icone: Icons.arrow_circle_down_outlined,
                            cor: Styles.mareloMostarda,
                          ),
                          SizedBox(width: 20),
                          IconeBotaoEstilizado(
                            textColor: Colors.white,
                            cor: Styles.laranjaum,
                            texto: "Ver Planos",
                            altura: 35,
                            largura: 130,
                            pressionado: () {
                              pushGtm();
                            },
                            icone: Icons.credit_card,
                          ),
                          SizedBox(width: 20),
                          IconeBotaoEstilizado(
                            textColor: Colors.white,
                            cor: Styles.verdeGood,
                            texto: "Whatsapp",
                            altura: 35,
                            largura: 130,
                            pressionado: abrirWhatsApp,
                            icone: FaIcon(FontAwesomeIcons.whatsapp).icon,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset('assets/images/astronauta.png',
                        height: 450, alignment: Alignment.center),
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
