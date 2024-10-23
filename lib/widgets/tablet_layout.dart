import 'package:adaptive_app/widgets/custom_list.dart';
import 'package:adaptive_app/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(
          height: 16,
        )),
        const CustomList(),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 16,
        )),
        CustomSliverListView()
      ],
    );
  }
}
