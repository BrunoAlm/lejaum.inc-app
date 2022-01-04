import 'package:flutter/material.dart';

import '../services/galeria_content_list.dart';

var altura = 250;

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
        physics: const BouncingScrollPhysics(), // this for snapping
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
        physics: const BouncingScrollPhysics(), // this for snapping
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
