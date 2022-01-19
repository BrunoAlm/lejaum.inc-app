import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart' as responsive;
import '../services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';

class SocialMedia1 extends StatelessWidget {
  const SocialMedia1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _altura = 37.h;
    var _largura = _altura / 1.764;

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: _altura,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 10),
        child: ListView.builder(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SocialMedia1Zoom(index: index);
                    }),
                  );
                },
                child: Hero(
                  tag: 'sm1_hero',
                  child: Image.asset(
                    social_media1_images[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMedia1Zoom extends StatelessWidget {
  const SocialMedia1Zoom({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Center(
        child: Hero(
          tag: 'sm1_hero',
          child: Container(
            child: Image.asset(
              social_media1_images[index],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMedia2 extends StatelessWidget {
  const SocialMedia2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = 37.h;
    var _largura = _altura / 1.0041;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: _altura,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SocialMedia2Zoom(index: index);
                    }),
                  );
                },
                child: Hero(
                    tag: 'sm2_hero',
                    child: Image.asset(social_media2_images[index],
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMedia2Zoom extends StatelessWidget {
  const SocialMedia2Zoom({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Center(
        child: Hero(
          tag: 'sm2_hero',
          child: Container(
            child: Image.asset(
              social_media2_images[index],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class Arzadi extends StatelessWidget {
  const Arzadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = 37.h;
    var largura = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 10),
      height: _altura,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: arzadi_list.length,
        itemBuilder: (_, index) => arzadi_list[index],
      ),
    );
  }
}

class Janfie extends StatefulWidget {
  const Janfie({Key? key}) : super(key: key);

  @override
  State<Janfie> createState() => _JanfieState();
}

class _JanfieState extends State<Janfie> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var _altura = 37.h;
    return Container(
      height: _altura,
      width: largura,
      margin: const EdgeInsets.only(left: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: janfie_list.length,
        itemBuilder: (context, index) => janfie_list[index],
      ),
    );
  }
}

class Italo extends StatelessWidget {
  const Italo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Container(
      height: 250,
      width: largura,
      margin: const EdgeInsets.only(left: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: italo_list.length,
        itemBuilder: (context, index) => italo_list[index],
      ),
    );
  }
}

class Lejaum extends StatelessWidget {
  const Lejaum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Container(
      height: 250,
      width: largura,
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: lejaum_list.length,
        itemBuilder: (context, index) => lejaum_list[index],
      ),
    );
  }
}
