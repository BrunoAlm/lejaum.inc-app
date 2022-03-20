import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/social_media_1/social_media_1_view.dart';
// import 'package:lejaum/pages/desktop/widgets/tela3/widgets/galeria/widgets/galeria_widgets.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
// import 'package:lejaum/pages/mobile/widgets/tela3-4-5/widgets/galeria_widgets.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/galeria/widgets/galeria_widgets.dart';
// import 'package:lejaum/pages/mobile/widgets/tela3-4-5/widgets/social_media_1/social_media_1_view.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';
import 'social_media_2_image_list.dart';

class SocialMedia2 extends StatelessWidget {
  const SocialMedia2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_da_tela = MediaQuery.of(context).size.height;
    var _altura_do_slider = _altura_da_tela <= motog4 ? 35.h : 39.h;
    var _largura_do_slider = _altura_do_slider / 1.0041;

    return SizedBox(
      height: _altura_do_slider,
      width: _largura_da_tela,
      child: GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: social_media2_images.length,
          itemBuilder: (_, index) => Container(
            height: _altura_do_slider,
            width: _largura_do_slider,
            margin: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () {
                  swipe.imagemClicada = index;
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => SocialMedia2Zoom(),
                      opaque: false,
                    ),
                  );
                },
                child: Hero(
                    tag: 'sm2_hero_$index',
                    child: Image.asset(social_media2_images[index],
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class SocialMedia2Zoom extends StatefulWidget {
  SocialMedia2Zoom({Key? key}) : super(key: key);

  @override
  State<SocialMedia2Zoom> createState() => _SocialMedia2ZoomState();
}

class _SocialMedia2ZoomState extends State<SocialMedia2Zoom> {
  bool _visible = true;

  @override
  void initState() {
    super.initState(); //when this route starts, it will execute this code
    Future.delayed(const Duration(seconds: 4), () {
      //asynchronous delay
      if (this.mounted) {
        //checks if widget is still active and not disposed
        setState(() {
          //tells the widget builder to rebuild again because ui has updated
          _visible =
              false; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
        });
      }
    });
    if (!this.mounted) {
      _visible = false;
    }
  }

  // var direcaoDoSwipe = DirecaoDoSwipe();
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
              social_media2_images.length,
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
                  dotsCount: social_media2_images.length,
                  position: swipe.imagemClicada.toDouble(),
                ),
              ),
              Hero(
                tag: 'sm2_hero_${swipe.imagemClicada}',
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    social_media2_images[swipe.imagemClicada],
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
                                  social_media2_images.length - 1;
                            })
                          : setState(() {
                              swipe.imagemClicada--;
                            });
                    }),
                  ),
                  SizedBox(width: largura * 0.45),
                  Flexible(
                    child: tipoInstanelsonEsquerda(altura, () {
                      swipe.imagemClicada == social_media2_images.length - 1
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
              //   bottom: 228,
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
      );
    });
  }
}
