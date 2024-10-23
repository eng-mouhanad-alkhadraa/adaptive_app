import 'package:adaptive_app/models/drawer_item_model.dart';
import 'package:adaptive_app/widgets/custom_drawers_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  //  list لعمل نسخة وحدة من ال  static const
  // بغض النظر عن النسخ اللي حأنشأها من الكلاس هي تابعة للكلاس  هاد و ليس للنسخ المنشأة منه
  //static const بدلا من كتابة StatefulWidget  الطريقة الثانية نحول الكلاس  الى
  static const List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icon: Icons.info),
    DrawerItemModel(title: 'L O G O U T', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          SizedBox(height: 16),
          CustomDrawersItemsListView(items: items)
        ],
      ),
    );
  }
}
