import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../galeria/widgets/galeria_widgets.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
// import 'package:lejaum/pages/mobile/widgets/tela3-4-5/widgets/galeria_widgets.dart';
import 'package:sizer/sizer.dart';

import 'social_media_1_image_list.dart';

class SocialMedia1 extends StatelessWidget {
  const SocialMedia1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_da_tela = MediaQuery.of(context).size.height;
    var _altura_do_slider = _altura_da_tela <= motog4 ? 35.h : 39.h;
    var _largura_do_slider = _altura_do_slider / 1.764;

    return Container(
      height: _altura_do_slider,
      width: _largura_da_tela,
      margin: const EdgeInsets.only(bottom: 10),
      child: GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: social_media1_images.length,
          itemBuilder: (_, index) => Container(
            width: _largura_do_slider,
            height: _altura_do_slider,
            margin: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () {
                  swipe.imagemClicada = index;
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => SocialMedia1Zoom(),
                      opaque: false,
                    ),
                  );
                },
                child: Hero(
                  tag: 'sm1_hero_$index',
                  child: Image.asset(
                    social_media1_images[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class SocialMedia1Zoom extends StatefulWidget {
  SocialMedia1Zoom({Key? key}) : super(key: key);

  @override
  State<SocialMedia1Zoom> createState() => _SocialMedia1ZoomState();
}

class _SocialMedia1ZoomState extends State<SocialMedia1Zoom> {
  // bool _visible = true;

  @override
  // void initState() {
  //   super.initState(); //when this route starts, it will execute this code
  //   Future.delayed(const Duration(seconds: 4), () {
  //     //asynchronous delay
  //     if (this.mounted) {
  //       //checks if widget is still active and not disposed
  //       setState(() {
  //         //tells the widget builder to rebuild again because ui has updated
  //         _visible =
  //             true; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
  //       });
  //     }
  //   });
  //   if (!this.mounted) {
  //     _visible = false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;

    return GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
      return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: altura),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          onHorizontalDragEnd: (details) {
            swipe.swipe(
              details,
              social_media1_images.length,
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              borrada(),
              Positioned(
                top: 5,
                child: DotsIndicator(
                  decorator: DotsDecorator(
                      activeColor: Styles.laranjaum,
                      shape: StadiumBorder(),
                      size: Size(30, 5),
                      activeSize: Size(30, 8),
                      activeShape: StadiumBorder(),
                      spacing: const EdgeInsets.all(1)),
                  dotsCount: social_media1_images.length,
                  position: swipe.imagemClicada.toDouble(),
                ),
              ),
              Hero(
                tag: 'sm1_hero_${swipe.imagemClicada}',
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    social_media1_images[swipe.imagemClicada],
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: TipoInstanelsonDireita(pressionado: () {
                      swipe.imagemClicada < 1
                          ? setState(() {
                              swipe.imagemClicada =
                                  social_media1_images.length - 1;
                            })
                          : setState(() {
                              swipe.imagemClicada--;
                            });
                    }),
                  ),
                  SizedBox(width: largura * 0.25),
                  Flexible(
                    child: tipoInstanelsonEsquerda(altura, () {
                      swipe.imagemClicada == social_media1_images.length - 1
                          ? setState(() {
                              swipe.imagemClicada = 0;
                            })
                          : setState(() {
                              swipe.imagemClicada++;
                            });
                    }),
                  ),
                ],
              ),
              // Positioned(
              //   // top: altura - 80,
              //   bottom: 75,
              //   child: Visibility(
              //     visible: _visible,
              //     child: Container(
              //         color: Colors.black38,
              //         height: 55,
              //         width: largura,
              //         child: Center(child: TutorialDoSlide())),
              //   ),
              // ),
            ],
          ),
        ),
        // ),
      );
    });
  }
}

class TutorialDoSlide extends StatefulWidget {
  const TutorialDoSlide({Key? key}) : super(key: key);

  @override
  _TutorialDoSlideState createState() => _TutorialDoSlideState();
}

class _TutorialDoSlideState extends State<TutorialDoSlide>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 800),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 40;
    const double bigLogo = 40;
    return LayoutBuilder(builder: (context, constraints) {
      final Size biggest = constraints.biggest;
      return Stack(
        textDirection: TextDirection.ltr,
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromSize(
                  Rect.fromLTWH(
                      biggest.width * .45 + 30, 0, smallLogo, smallLogo),
                  biggest),
              end: RelativeRect.fromSize(
                  Rect.fromLTWH(biggest.width - bigLogo, 0, bigLogo, bigLogo),
                  biggest),
            ).animate(CurvedAnimation(
              parent: _controller,
              curve: Curves.fastOutSlowIn,
            )),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: smallLogo,
              ),
            ),
          ),
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromSize(
                  Rect.fromLTWH(
                      biggest.width * 0.45 - 30, 0, smallLogo, smallLogo),
                  biggest),
              end: RelativeRect.fromSize(
                  const Rect.fromLTWH(0, 0, bigLogo, bigLogo), biggest),
            ).animate(CurvedAnimation(
              parent: _controller,
              curve: Curves.fastOutSlowIn,
            )),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: smallLogo,
              ),
            ),
          ),
        ],
      );
    });
  }
}
