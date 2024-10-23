
import 'package:adaptive_app/models/drawer_item_model.dart';
import 'package:adaptive_app/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawersItemsListView extends StatelessWidget {
  const CustomDrawersItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDraweritem(drawerItemModel: items[index]);
      },
    );
  }
}
