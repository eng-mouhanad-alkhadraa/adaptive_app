import 'package:adaptive_app/widgets/adapitve%20_layout.dart';

import 'package:adaptive_app/widgets/desktop_layout.dart';
import 'package:adaptive_app/widgets/mobile_layout.dart';
import 'package:adaptive_app/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AdaptiveLayOut(
          //عندما نحتاجه object يتم انشاء ال 
          mobilelayOut:(context)=>const MobileLayOut(),
          tabletlayout:(context)=>const TabletLayOut(),
          desktoplayout:(context)=>const DesktopLayOut(),
        ));
  }
}
