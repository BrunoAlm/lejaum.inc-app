import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart' as responsive;
import '../services/galeria_content_list.dart';

class FlorDoGrao extends StatelessWidget {
  const FlorDoGrao({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _altura =
        responsive.ResponsiveValue(context, defaultValue: 251.35, valueWhen: [
      responsive.Condition.equals(
          name: responsive.MOBILE, value: 251.35 * 0.85),
      responsive.Condition.equals(name: 'MOBILE2', value: 251.35 * 1.2),
      responsive.Condition.equals(name: 'AIPEDE', value: 251.35 * 1.5),
      // responsive.Condition.equals(name: responsive.DESKTOP, value: 60.0)
    ]).value;
    var _largura =
        responsive.ResponsiveValue(context, defaultValue: 142.43, valueWhen: [
      responsive.Condition.equals(
          name: responsive.MOBILE, value: 142.43 * 0.85),
      responsive.Condition.equals(name: 'MOBILE2', value: 142.43 * 1.2),
      responsive.Condition.equals(name: 'AIPEDE', value: 142.43 * 1.5),
      // responsive.Condition.equals(name: responsive.DESKTOP, value: 60.0)
    ]).value;

    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return const FlorDoGraoZoom();
        // }));
      },
      child: Hero(
        tag: 'florDoGrao',
        child: Container(
          height: _altura,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: flor_do_grao_list_image.length,
            itemBuilder: (_, index) => Container(
              width: _largura,
              height: _altura,
              margin: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  flor_do_grao_list_image[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class FlorDoGraoZoom extends StatelessWidget {
//   const FlorDoGraoZoom({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var largura = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//         Navigator.pop(context);
//       },
//       child: Center(
//         child: Hero(
//           tag: 'florDoGrao',
//           child: Container(
//             height: 500,
//             width: largura,
//             margin: const EdgeInsets.only(bottom: 10),
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 physics: const BouncingScrollPhysics(), // this for snapping
//                 itemCount: flor_do_grao_zoom_list.length,
//                 itemBuilder: (_, index) => flor_do_grao_zoom_list[index]),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Airsoft extends StatelessWidget {
  const Airsoft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura =
        responsive.ResponsiveValue(context, defaultValue: 244.92, valueWhen: [
      responsive.Condition.equals(
          name: responsive.MOBILE, value: 244.92 * 0.85),
      responsive.Condition.equals(name: 'MOBILE2', value: 244.92 * 1.2),
      responsive.Condition.equals(name: 'AIPEDE', value: 244.92 * 1.5),
      // responsive.Condition.equals(name: responsive.DESKTOP, value: 60.0)
    ]).value;
    var _largura =
        responsive.ResponsiveValue(context, defaultValue: 243.9, valueWhen: [
      responsive.Condition.equals(name: responsive.MOBILE, value: 243.9 * 0.85),
      responsive.Condition.equals(name: 'MOBILE2', value: 243.9 * 1.2),
      responsive.Condition.equals(name: 'AIPEDE', value: 243.9 * 1.5),
      // responsive.Condition.equals(name: responsive.DESKTOP, value: 60.0)
    ]).value;
    return SizedBox(
      height: _altura,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: airsoft_list_image.length,
        itemBuilder: (_, index) => Container(
          height: _altura,
          width: _largura,
          margin: EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(airsoft_list_image[index], fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}

class Azardi extends StatelessWidget {
  const Azardi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: azardi_list.length,
        itemBuilder: (_, index) => azardi_list[index],
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
    return Row(
      children: [
        SizedBox(
          height: 250,
          width: largura,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: janfie_list.length,
            itemBuilder: (context, index) => janfie_list[index],
          ),
        ),
      ],
    );
  }
}

class Italo extends StatelessWidget {
  const Italo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          height: 250,
          width: largura,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: italo_list.length,
            itemBuilder: (context, index) => italo_list[index],
          ),
        ),
      ],
    );
  }
}

class Lejaum extends StatelessWidget {
  const Lejaum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          height: 250,
          width: largura,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: lejaum_list.length,
            itemBuilder: (context, index) => lejaum_list[index],
          ),
        ),
      ],
    );
  }
}
