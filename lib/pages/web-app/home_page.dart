import 'package:flutter/material.dart';
import '../mobile/widgets/appbar/mobile_app_bar.dart';
import '../mobile/mobile_page.dart';
import 'AppBar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          endDrawer: contraints.maxWidth < 800 ? Drawer() : null,
          body: Container(

            child: contraints.maxWidth < 800 ? MobilePage() : null,
          ),
        );
      }, // Builder
    );
  }
}