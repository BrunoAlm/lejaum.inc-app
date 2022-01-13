import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela2/view/oq_oferecemos.dart';

import '../widgets/home_page/home_page_desktop.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    print("Altura: $_altura");
    print("Largura: $_largura");
    return SizedBox(
      height: _altura - 60,
      width: _largura,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageDesktop(),
            TodasBoxesDesktop(),
          ],
        ),
      ),
    );
  }
}
