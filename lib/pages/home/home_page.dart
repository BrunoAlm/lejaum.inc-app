import 'package:flutter/material.dart';

import 'widgets/mobile_app_bar.dart';
import 'widgets/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        return Scaffold(
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
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2C394B),
                image: DecorationImage(
                  image: AssetImage("assets/images/first_page_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      }, // Builder
    );
  }
}
