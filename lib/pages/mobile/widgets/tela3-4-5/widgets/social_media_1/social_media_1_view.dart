import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/widgets/galeria_widgets.dart';
import '../../services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

import 'social_media_1_image_list.dart';

class SocialMedia1 extends StatelessWidget {
  const SocialMedia1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DirecaoDoSwipe());
    var _altura = 37.h;
    var _largura = _altura / 1.764;

    return Container(
      height: _altura,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10),
      child: GetBuilder<DirecaoDoSwipe>(builder: (swipe) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: social_media1_images.length,
          itemBuilder: (_, index) => Container(
            width: _largura,
            height: _altura,
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
            social_media1_images.length,
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
                  dotsCount: social_media1_images.length,
                  position: swipe.imagemClicada.toDouble(),
                ),
              ),
              Hero(
                tag: 'sm1_hero_${swipe.imagemClicada}',
                child: ZoomOverlay(
                  animationDuration: Duration(milliseconds: 200),
                  minScale: 0.5,
                  maxScale: 3,
                  child: Image.asset(
                    social_media1_images[swipe.imagemClicada],
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
                                  social_media1_images.length - 1;
                            })
                          : setState(() {
                              swipe.imagemClicada--;
                            });
                    }),
                  ),
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
            ],
          ),
        ),
      );
    });
  }
}