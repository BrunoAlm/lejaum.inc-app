import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/services/abrir_whatsapp.dart';
import '../../../../widgets/botao_estilizado.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimeiraParteMobile extends StatelessWidget {
  PrimeiraParteMobile({Key? key, this.segundaTela, this.portfolio})
      : super(key: key);
  final Function()? segundaTela;
  final Function()? portfolio;
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(bottom: 120),
      height: _altura,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/first_page_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'NÃO VENDEMOS',
            style: StylesMobile.tituloFinoLinethrough,
          ),
          Text(
            'SERVIÇOS,',
            style: StylesMobile.tituloFinoLinethrough,
          ),
          Text(
            'NÓS ENTREGAMOS',
            style: StylesMobile.tituloExtraBold,
          ),
          Text(
            'SOLUÇÕES!',
            style: StylesMobile.tituloExtraBold,
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
                pressionado: segundaTela!,
                icone: Icons.arrow_circle_down_outlined,
                cor: StylesMobile.lowBlueGray,
              ),
              SizedBox(width: 20),
              BotaoEstilizado(
                textColor: StylesMobile.blackText,
                texto: "Portfólio",
                altura: 40,
                largura: 160,
                pressionado: portfolio!,
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
                pressionado: () {},
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
    );
  }
}
