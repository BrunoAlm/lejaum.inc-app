import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lejaum/services/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarrosselPortfolio extends StatefulWidget {
  const CarrosselPortfolio({Key? key}) : super(key: key);

  @override
  _CarrosselPortfolioState createState() => _CarrosselPortfolioState();
}

class _CarrosselPortfolioState extends State<CarrosselPortfolio> {
  final Color quaseWhite = Color(0xFFF4F4F4);
  final Color laranjaum = Color(0xFFFF5400);
  final CarouselController _controller = CarouselController();
  int activeIndex = 0;
  final urlImages = [
    'assets/images/carrossel/azardi_shop.png',
    'assets/images/carrossel/bortolotti.png',
    'assets/images/carrossel/cafe_sovertinho.png',
    'assets/images/carrossel/milky_cream.png',
    'assets/images/carrossel/quarta_chopp.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildImageSlider(),
          const SizedBox(height: 30),
          buildIndicator(),
          const SizedBox(height: 30),
          buildButtons()
        ],
      ),
    );
  }

  Widget buildImageSlider() => CarouselSlider.builder(
        options: CarouselOptions(
          height: 338,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 1),
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
        ),
        carouselController: _controller,
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        },
      );

  Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: 338,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.grey,
      ),
      child: Stack(
        children: [
          Image.asset(
            urlImage,
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 215.98, left: 7.34, right: 10.04, bottom: 11.21),
              child: buildBlur(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  height: 110,
                  width: 252,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(7),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.66, top: 13),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Social Media',
                            style: Styles.carrosselTextTitulo,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Franquia Café Flor do Grão',
                            style: Styles.carrosselTextSubtitulo,
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(StadiumBorder()),
                            ),
                            child: Text(
                              'Ver Mais',
                              style: Styles.carrosselTextButton,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ));

  Widget buildBlur({
    required BorderRadius borderRadius,
    required Widget child,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            ),
            onPressed: previous,
            child: Icon(Icons.keyboard_arrow_left_rounded, size: 32),
          ),
          const SizedBox(width: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            ),
            onPressed: next,
            child: Icon(Icons.keyboard_arrow_right_rounded, size: 32),
          ),
        ],
      );

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
          activeDotColor: laranjaum,
          dotColor: quaseWhite,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );

  animateToSlide(int index) => _controller.animateToPage(index);

  void previous() => _controller.previousPage();

  void next() => _controller.nextPage();
}
