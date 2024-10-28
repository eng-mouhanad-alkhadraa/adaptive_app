import 'package:adaptive_app/widgets/colors_view_body.dart';
import 'package:flutter/material.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors view '),
      ),
      body: ColorsViewBody(),
    );
  }
}
