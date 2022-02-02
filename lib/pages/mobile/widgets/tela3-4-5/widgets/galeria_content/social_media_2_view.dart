import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';
import '../galeria_widgets.dart';
import 'social_media_2_image_list.dart';

class SocialMedia2 extends StatelessWidget {
  const SocialMedia2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var _altura = 37.h;
    var _largura = _altura / 1.0041;
    return SizedBox(
      height: _altura,
      width: Get.width,
      child: GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: social_media2_images.length,
          itemBuilder: (_, index) => Container(
            height: _altura,
            width: _largura,
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
                    child: ZoomOverlay(
                      child: Image.asset(social_media2_images[index],
                          fit: BoxFit.fill),
                    )),
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
  // var direcaoDoSwipe = DirecaoDoSwipe();
  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var altura = MediaQuery.of(context).size.height;
    return GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
      return GestureDetector(
        onTap: () => Navigator.pop(context),
        onHorizontalDragEnd: (details) {
          swipe.swipe(
            details,
            social_media2_images.length,
          );
        },
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
                child: ZoomOverlay(
                  animationDuration: Duration(milliseconds: 200),
                  minScale: 0.5,
                  maxScale: 3,
                  child: Image.asset(
                    social_media2_images[swipe.imagemClicada],
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: tipoInstanelsonDireita(altura, () {
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
            ],
          ),
        ),
      );
    });
  }
}
