import 'package:adaptive_app/views/colors_view.dart';
import 'package:adaptive_app/widgets/custom_drawer.dart';
import 'package:adaptive_app/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: Color(0xffDBDBDB),
      appBar: bulidAppBar(context),
      body: HomeViewBody(),
    );
  }

  AppBar? bulidAppBar(BuildContext context) {
    // - 32 < 900
    return MediaQuery.sizeOf(context).width - 32 < 900
        ? AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ColorsView();
                      },
                    ));
                  },
                  icon: Icon(Icons.color_lens))
            ],
            title: Text('Adaptive App'),
            backgroundColor: Colors.black54,
            leading: GestureDetector(
              onTap: () {
                ScaffoldKey.currentState!.openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if (constraints.maxWidth < 900) {
//         return
//       } else {
//         return SizedBox();
//       }
//     });
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(56);
// }
