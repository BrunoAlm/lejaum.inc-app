import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/desktop_page.dart';
import 'desktop/widgets/AppBar/desktop_app_bar.dart';
import 'mobile/view/mobile_page.dart';
import 'mobile/widgets/tela1/view/mobile_app_bar.dart';
import 'mobile/widgets/tela1/view/drawerzin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        return Scaffold(
          backgroundColor: Color(0xFF1A1918),
          appBar: contraints.maxWidth < 800
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 70),
                )
              : PreferredSize(
                  child: DesktopAppBar(),
                  preferredSize: Size(double.infinity, 70),
                ),
          endDrawer:
              contraints.maxWidth < 800 ? DrawerLejaum() : null,
          body: Container(
            child: contraints.maxWidth < 800 ? MobilePage() : DesktopPage(),
          ),
        );
      }, // Builder
    );
  }
}
