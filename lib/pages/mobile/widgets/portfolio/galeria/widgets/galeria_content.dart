import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio/galeria/services/galeria_content_list.dart';

class FlorDoGrao extends StatelessWidget {
  const FlorDoGrao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(), // this for snapping
        itemCount: flor_do_grao_list.length,
        itemBuilder: (_, index) => flor_do_grao_list[index],
      ),
    );
  }
}

class Airsoft extends StatelessWidget {
  const Airsoft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: largura,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(), // this for snapping
        itemCount: airsoft_list.length,
        itemBuilder: (_, index) => airsoft_list[index],
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
        physics: const ScrollPhysics(), // this for snapping
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
            physics: const ScrollPhysics(), // this for snapping
            itemCount: janfie_list.length,
            itemBuilder: (context, index) => janfie_list[index],
          ),
        ),
        // Container(
        //   height: 300,
        //   child: SingleChildScrollView(
        //     physics: NeverScrollableScrollPhysics(),
        //     child: BotaoEstilizado(),
        //   ),
        // ),
      ],
    );
  }
}
