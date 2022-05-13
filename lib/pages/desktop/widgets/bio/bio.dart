import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Bio extends StatelessWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura_tela = MediaQuery.of(context).size.height;
    var _largura_tela = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: _altura_tela,
        child: Stack(
          children: [
            generateBluredImage(),
            Center(
              child: SizedBox(
                width: _largura_tela,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 40.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Styles.laranjaum,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/icons/logo_icon.svg',
                          height: 60,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '@lejaum',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Styles.quaseWhite,
                        ),
                      ),
                      const SizedBox(height: 30),
                      BioButton(
                        onPressed: () => abrirSite('https://lejaum.me/'),
                        texto: 'site',
                      ),
                      const SizedBox(height: 15),
                      BioButton(onPressed: abrirWhatsApp, texto: 'whatsapp'),
                      const SizedBox(height: 15),
                      BioButton(
                        onPressed: () =>
                            abrirSite('https://www.instagram.com/lejaum.me/'),
                        texto: 'instagram',
                      ),
                      const SizedBox(height: 15),
                      BioButton(
                        onPressed: () =>
                            abrirSite('https://www.behance.net/lejaum'),
                        texto: 'behance',
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: abrirWhatsApp,
                            icon: Icon(
                              FontAwesomeIcons.whatsapp,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () => abrirSite(
                                'https://www.instagram.com/lejaum.me/'),
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () => abrirSite('mailto:head@lejaum.me'),
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BioButton extends StatelessWidget {
  const BioButton({
    Key? key,
    required this.texto,
    required this.onPressed,
  }) : super(key: key);

  final String texto;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    return ElevatedButton(
      child: Text(
        texto,
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Styles.quaseWhite,
        ),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        primary: Colors.black.withOpacity(0.4),
        minimumSize:
            _largura > 400 ? Size(_largura / 3, 60) : Size(_largura / 2, 60),
      ),
    );
  }
}

Widget generateBluredImage() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/icons/lejaum_logo_circle.png'),
        fit: BoxFit.fitWidth,
      ),
    ),
    child: BackdropFilter(
      filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      ),
    ),
  );
}

class Spotify extends StatelessWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura_tela = MediaQuery.of(context).size.height;
    var _altura = _altura_tela / 1.5;

    ui.platformViewRegistry.registerViewFactory(
        'playlist',
        (int viewId) => IFrameElement()
          ..width = '340'
          ..height = '$_altura'
          ..src =
              "https://open.spotify.com/embed/playlist/7rs9fUROWJyaLCa4kjydGp?utm_source=generator&theme=0"
          ..style.border = 'none');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: _altura,
            width: 360,
            child: HtmlElementView(viewType: 'playlist'),
          ),
        ),
      ),
    );
  }
}
