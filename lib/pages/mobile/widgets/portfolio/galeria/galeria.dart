import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.pink,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(),
      ),
    );
  }
}
