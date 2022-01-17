import 'package:flutter/material.dart';

// String _logo_image = "assets/images/galeria/flor_do_grao/logo.png";
String _img1 = "assets/images/galeria/flor_do_grao/img1.webp";
String _img2 = "assets/images/galeria/flor_do_grao/img2.webp";
String _img3 = "assets/images/galeria/flor_do_grao/img3.webp";
String _img4 = "assets/images/galeria/flor_do_grao/img4.webp";
String _img5 = "assets/images/galeria/flor_do_grao/img5.webp";
String _img6 = "assets/images/galeria/flor_do_grao/img6.webp";
String _img7 = "assets/images/galeria/flor_do_grao/img7.webp";
String _img8 = "assets/images/galeria/flor_do_grao/img8.webp";

Widget grao_zoom_1() => Container(
      width: 142.43 * 2,
      height: 251.35 * 2,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img1, fit: BoxFit.fill),
      ),
    );
Widget grao_zoom_2() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img2, fit: BoxFit.fill),
      ),
    );
Widget grao_zoom_3() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img3, fit: BoxFit.fill)),
    );
Widget grao_zoom_4() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img4, fit: BoxFit.fill)),
    );
Widget grao_zoom_5() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img5, fit: BoxFit.fill)),
    );
Widget grao_zoom_6() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img6, fit: BoxFit.fill)),
    );
Widget grao_zoom_7() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 205.75 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img7, fit: BoxFit.fill)),
    );
Widget grao_zoom_8() => Container(
      width: 205.75 * 2,
      height: 251.35 * 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img8, fit: BoxFit.fill)),
    );
