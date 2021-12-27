import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/desktop_page.dart';
import 'package:lejaum/pages/mobile/widgets/AppBar/mobile_app_bar.dart';
import 'desktop/widgets/AppBar/desktop_app_bar.dart';
import 'mobile/mobile_page.dart';

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
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: DesktopAppBar(),
                  preferredSize: Size(double.infinity, 70),
                ),
          endDrawer: contraints.maxWidth < 800 ? Drawer() : null,
          body: Container(
            child: contraints.maxWidth < 800 ? MobilePage() : DesktopPage(),
          ),
        );
      }, // Builder
    );
  }
}
