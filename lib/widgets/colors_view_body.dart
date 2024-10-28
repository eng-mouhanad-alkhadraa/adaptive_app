import 'package:adaptive_app/widgets/mobile_layout2.dart';
import 'package:adaptive_app/widgets/tablet_layout2.dart';
import 'package:adaptive_app/widgets/adapitve%20_layout.dart';
import 'package:adaptive_app/widgets/dasktop_layout2.dart';
import 'package:flutter/material.dart';

class ColorsViewBody extends StatelessWidget {
  const ColorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AdaptiveLayOut(
          //عندما نحتاجه object يتم انشاء ال
          mobilelayOut: (context) => const MobileLayOut2(),
          tabletlayout: (context) => const TabletLayOut2(),
          desktoplayout: (context) => const DesktopLayOut2(),
        ));
  }
}
