import 'package:adaptive_app/widgets/custom_list_view.dart';
import 'package:adaptive_app/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class MobileLayOut extends StatelessWidget {
  const MobileLayOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(
          height: 16,
        )),
        const CustomSliverGride(),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 16,
        )),
        CustomSliverListView()
      ],
    );
  }
}
