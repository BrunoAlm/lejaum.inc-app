import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, -1.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<IconData> _icones = [
    FontAwesomeIcons.star,
    FontAwesomeIcons.textHeight,
    FontAwesomeIcons.sign,
    FontAwesomeIcons.ad,
    FontAwesomeIcons.adversal,
    FontAwesomeIcons.ambulance,
    FontAwesomeIcons.balanceScale,
    FontAwesomeIcons.bars,
    FontAwesomeIcons.appleAlt,
    FontAwesomeIcons.calendarCheck,
  ];

  @override
  Widget build(BuildContext context) {
    var _altura_tela = MediaQuery.of(context).size.height;
    var _largura_tela = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: _altura_tela,
        child: Stack(
          children: [
            // generateBluredImage(),
            SizedBox(
              height: _altura_tela,
              width: _largura_tela,
              child: Container(
                decoration: BoxDecoration(
                  color: Styles.laranjaum,
                  image: DecorationImage(
                    image: AssetImage('images/pattern_icons.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              // child: GridView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   // itemCount: _icones.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 10,
              //     childAspectRatio: 2,
              //   ),
              //   itemBuilder: (context, index) {
              //     return SlideTransition(
              //         position: _offsetAnimation,
              //         child: Icon(
              //           _icones[1],
              //           color: Colors.white.withOpacity(0.3),
              //           size: 40,
              //         ));
              //   },
              // ),
            ),
            // SizedBox(
            //   height: _altura_tela,
            //   width: _largura_tela,
            //   child: FooSpritePaint2(),
            // ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/logo_icon.svg',
                            height: 90,
                            color: Styles.quaseWhite,
                          ),
                          AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText(
                                'lejaum',
                                speed: const Duration(milliseconds: 400),
                                curve: Curves.fastOutSlowIn,
                                textStyle: TextStyle(
                                  fontFamily: 'Georama',
                                  fontSize: 90,
                                  fontStyle: FontStyle.italic,
                                  color: Styles.quaseWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'agência de design e marketing',
                        style: TextStyle(
                          fontFamily: 'Georama',
                          fontSize: 22,
                          color: Styles.quaseWhite,
                        ),
                      ),
                      const SizedBox(height: 30),
                      BioButton(
                        onPressed: () => abrirSite('https://lejaum.me/'),
                        texto: 'Site Portfólio',
                        icon: Icons.web,
                      ),
                      const SizedBox(height: 15),
                      BioButton(
                        onPressed: abrirWhatsApp,
                        texto: 'Whatsapp',
                        icon: Icons.whatsapp,
                      ),
                      const SizedBox(height: 15),
                      BioButton(
                        onPressed: () =>
                            abrirSite('https://www.instagram.com/lejaum.me/'),
                        texto: 'Instagram',
                        icon: FontAwesomeIcons.instagram,
                      ),
                      const SizedBox(height: 15),
                      BioButton(
                        onPressed: () => abrirSite('mailto:head@lejaum.me'),
                        texto: 'E-mail',
                        icon: FontAwesomeIcons.envelope,
                      ),
                      // const SizedBox(height: 25),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     IconButton(
                      //       onPressed: abrirWhatsApp,
                      //       icon: Icon(
                      //         FontAwesomeIcons.whatsapp,
                      //         size: 30,
                      //       ),
                      //     ),
                      //     const SizedBox(width: 10),
                      //     IconButton(
                      //       onPressed: () => abrirSite(
                      //           'https://www.instagram.com/lejaum.me/'),
                      //       icon: Icon(
                      //         FontAwesomeIcons.instagram,
                      //         size: 30,
                      //       ),
                      //     ),
                      //     const SizedBox(width: 10),
                      //     IconButton(
                      //       onPressed: () => abrirSite('mailto:head@lejaum.me'),
                      //       icon: Icon(
                      //         FontAwesomeIcons.envelope,
                      //         size: 30,
                      //       ),
                      //     ),
                      //   ],
                      // )
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
    required this.icon,
  }) : super(key: key);

  final String texto;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(
        texto,
        style: TextStyle(
          fontFamily: 'Georama',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Styles.quaseWhite,
        ),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        primary: Colors.black.withOpacity(0.6),
        shape: StadiumBorder(),
        elevation: 0,
        maximumSize: Size(400, 60),
        minimumSize: Size(250, 60),
      ),
    );
  }
}

Widget generateBluredImage() {
  return Container(
    decoration: BoxDecoration(
      // image: DecorationImage(
      //   image: AssetImage('assets/images/icons/lejaum_logo_circle.png'),
      //   fit: BoxFit.fitWidth,
      // ),
      color: Styles.laranjaum,
    ),
    // child: BackdropFilter(
    //   filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
    //   child: Container(
    //     decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
    //   ),
    // ),
  );
}

// class Spotify extends StatelessWidget {
//   const Spotify({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var _altura_tela = MediaQuery.of(context).size.height;
//     var _altura = _altura_tela / 1.5;

//     ui.platformViewRegistry.registerViewFactory(
//         'playlist',
//         (int viewId) => IFrameElement()
//           ..width = '340'
//           ..height = '$_altura'
//           ..src =
//               "https://open.spotify.com/embed/playlist/7rs9fUROWJyaLCa4kjydGp?utm_source=generator&theme=0"
//           ..style.border = 'none');
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.white,
//               offset: Offset(0, 0),
//               blurRadius: 10,
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: SizedBox(
//             height: _altura,
//             width: 360,
//             child: HtmlElementView(viewType: 'playlist'),
//           ),
//         ),
//       ),
//     );
//   }
// }
