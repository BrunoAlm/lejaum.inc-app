import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/primeira_parte/primeira_parte.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimeiraParteDesktop(),
          ],
        ),
      ),
    );
  }
}
