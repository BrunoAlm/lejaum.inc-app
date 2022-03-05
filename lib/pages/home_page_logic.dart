import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/view/desktop_page.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
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
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            backgroundColor: Color(0xFF1A1918),
            appBar: constraints.maxWidth < 892
                ? PreferredSize(
                    child: MobileAppBar(),
                    preferredSize: Size(double.infinity,
                        constraints.maxWidth <= motog4 ? 60 : 70),
                  )
                : PreferredSize(
                    child: DesktopAppBar(),
                    preferredSize: Size(double.infinity, 60),
                  ),
            endDrawer: constraints.maxWidth < 892 ? DrawerLejaum() : null,
            body: constraints.maxWidth < 892 ? MobilePage() : DesktopPage(),

            //     Container(
            //   child: contraints.maxWidth < 800 ? MobilePage() : DesktopPage(),
            // ),
          );
        }, // Builder
      ),
    );
  }
}
