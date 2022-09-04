import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/services/styles_desktop.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
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

    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    var _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    var corDoTextoBotao = Theme.of(context).colorScheme.secondary;
    Get.put(DesktopListViewController());

    return GetBuilder<DesktopListViewController>(
      builder: (controller) => Stack(
        children: [
          Container(
            height: _altura - 60,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: ResizeImage(
                //     AssetImage("assets/images/first_page_bg.png"),
                //     width: (_largura * _pixelRatio).toInt(),
                //     height: (_altura * _pixelRatio).toInt(),
                //   ),
                //   colorFilter: ColorFilter.mode(
                //     Styles.quaseBlack.withOpacity(0.9),
                //     BlendMode.darken,
                //   ),
                //   fit: BoxFit.cover,
                // ),
                ),
            // child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            //   child: Container(
            //     decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            //   ),
            // ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: _altura,
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
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            OutlinedIconeBotaoEstilizado(
                              corDaBorda: corDoTextoBotao,
                              textColor: corDoTextoBotao,
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
                            ),
                            SizedBox(width: 20),
                            OutlinedIconeBotaoEstilizado(
                              corDaBorda: corDoTextoBotao,
                              textColor: corDoTextoBotao,
                              texto: "Portfólio",
                              altura: 35,
                              largura: 130,
                              pressionado: () {
                                Scrollable.ensureVisible(
                                  controller.portfolioKey.currentContext!,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutQuart,
                                );
                              },
                              icone: Icons.arrow_circle_down_outlined,
                            ),
                            SizedBox(width: 20),
                            OutlinedIconeBotaoEstilizado(
                              corDaBorda: corDoTextoBotao,
                              textColor: corDoTextoBotao,
                              texto: "Ver Planos",
                              altura: 35,
                              largura: 130,
                              pressionado: () {
                                Scrollable.ensureVisible(
                                  controller.plasnosKey.currentContext!,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutQuart,
                                );
                              },
                              icone: Icons.credit_card,
                            ),
                            SizedBox(width: 20),
                            OutlinedIconeBotaoEstilizado(
                              corDaBorda: corDoTextoBotao,
                              textColor: corDoTextoBotao,
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
                      child: Image.asset(
                        'assets/images/astronauta2.png',
                        // height: 450,
                        alignment: Alignment.center,
                        cacheWidth: 245,
                        cacheHeight: 450,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
