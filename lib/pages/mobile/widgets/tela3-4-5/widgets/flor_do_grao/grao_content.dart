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

class Grao1 extends StatelessWidget {
  const Grao1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142.43,
      height: 251.35,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img1, fit: BoxFit.fill),
      ),
    );
  }
}

class Grao2 extends StatelessWidget {
  const Grao2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43,
      height: 251.35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img2, fit: BoxFit.fill),
      ),
    );
  }
}

class Grao3 extends StatelessWidget {
  const Grao3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img3, fit: BoxFit.fill)),
    );
  }
}

class Grao4 extends StatelessWidget {
  const Grao4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img4, fit: BoxFit.fill)),
    );
  }
}

class Grao5 extends StatelessWidget {
  const Grao5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img5, fit: BoxFit.fill)),
    );
  }
}

class Grao6 extends StatelessWidget {
  const Grao6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 142.43,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img6, fit: BoxFit.fill)),
    );
  }
}

class Grao7 extends StatelessWidget {
  const Grao7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 205.75,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img7, fit: BoxFit.fill)),
    );
  }
}

class Grao8 extends StatelessWidget {
  const Grao8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205.75,
      height: 251.35,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(_img8, fit: BoxFit.fill)),
    );
  }
}
