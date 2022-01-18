import 'package:flutter/material.dart';
import '../widgets/airsoft/airsoft_content.dart';
import '../widgets/arzadi/arzadi_content.dart';
import '../widgets/italo/italo_content.dart';
import '../widgets/janfie/janfie_content.dart';
import '../widgets/lejaum/lejaum_content.dart';

List<String> flor_do_grao_list_image = [
  "assets/images/galeria/flor_do_grao/img1.webp",
  "assets/images/galeria/flor_do_grao/img2.webp",
  "assets/images/galeria/flor_do_grao/img3.webp",
  "assets/images/galeria/flor_do_grao/img4.webp",
  "assets/images/galeria/flor_do_grao/img5.webp",
  "assets/images/galeria/flor_do_grao/img6.webp",
  "assets/images/galeria/flor_do_grao/img7.webp",
  "assets/images/galeria/flor_do_grao/img8.webp",
];

List<String> airsoft_list_image = [
  "assets/images/galeria/airsoft/img1.webp",
  "assets/images/galeria/airsoft/img2.webp",
  "assets/images/galeria/airsoft/img3.webp",
  "assets/images/galeria/airsoft/img4.webp",
  "assets/images/galeria/airsoft/img5.webp",
];
List<Widget> airsoft_list = [
  airsoft1(),
  airsoft2(),
  airsoft3(),
  airsoft4(),
  airsoft5(),
];

List<Widget> azardi_list = [
  logo_azardi(),
  azardi1(),
  azardi2(),
  azardi3(),
];

List<Widget> janfie_list = [logo_janfie(), janfie1(), janfie2(), janfie3()];

List<Widget> italo_list = [
  logo_italo(),
  italo1(),
  italo2(),
  italo3(),
];
List<Widget> lejaum_list = [
  logo_lejaum(),
  lejaum1(),
  lejaum2(),
  lejaum3(),
];
