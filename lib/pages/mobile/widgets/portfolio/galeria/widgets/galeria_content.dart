import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio/galeria/services/galeria_content_list.dart';

class FlorDoGrao extends StatelessWidget {
  const FlorDoGrao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 300,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(), // this for snapping
        itemCount: flor_do_grao_list.length,
        itemBuilder: (_, index) => flor_do_grao_list[index],
      ),
    );
  }
}

class Airsoft extends StatelessWidget {
  const Airsoft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 300,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(), // this for snapping
        itemCount: airsoft_list.length,
        itemBuilder: (_, index) => airsoft_list[index],
      ),
    );
  }
}