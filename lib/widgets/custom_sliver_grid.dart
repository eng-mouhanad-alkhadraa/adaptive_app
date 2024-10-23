import 'package:adaptive_app/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomSliverGride extends StatelessWidget {
  const CustomSliverGride({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return CustomItem();
      },
      itemCount: 4,
    );
  }
}
