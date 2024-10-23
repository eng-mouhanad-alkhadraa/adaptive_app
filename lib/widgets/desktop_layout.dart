import 'package:adaptive_app/widgets/custom_desktop_widget.dart';
import 'package:adaptive_app/widgets/custom_drawer.dart';
import 'package:adaptive_app/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayOut extends StatelessWidget {
  const DesktopLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayOut(),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}
