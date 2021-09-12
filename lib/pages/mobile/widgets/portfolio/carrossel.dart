import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarrosselPortfolio extends StatefulWidget {
  const CarrosselPortfolio({Key? key}) : super(key: key);

  @override
  _CarrosselPortfolioState createState() => _CarrosselPortfolioState();
}

class _CarrosselPortfolioState extends State<CarrosselPortfolio> {
  final Color quaseWhite = Color(0xFFF4F4F4);
  final Color laranjaum = Color(0xFFFF5400);
  final controller = CarouselController();
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          carrossel(),
          const SizedBox(height: 10),
          buildIndicator(),
          const SizedBox(height: 10),
          buildButtons(),
        ],
      ),
    );
  }

  Widget carrossel() => CarouselSlider.builder(
        options: CarouselOptions(
          height: 400,
          autoPlay: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
        ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        },
      );

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Image.asset(
          urlImage,
          // centerSlice:
          //     Rect.fromCenter(center: Offset(0, 0), width: 270, height: 400),
          repeat: ImageRepeat.noRepeat,
          // fit: BoxFit.cover,
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

  animateToSlide(int index) => controller.animateToPage(index);

  void previous() => controller.nextPage(duration: Duration(milliseconds: 500));

  void next() => controller.previousPage(duration: Duration(milliseconds: 500));
}
