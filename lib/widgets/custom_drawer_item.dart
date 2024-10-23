import 'package:adaptive_app/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDraweritem extends StatelessWidget {
  const CustomDraweritem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(drawerItemModel.title,)),
      ),
    );
  }
}
