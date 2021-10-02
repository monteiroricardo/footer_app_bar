import 'package:flutter/material.dart';
import 'package:footer_app_bar/controllers/buttom_navigator_controller.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarComponentItem extends StatefulWidget {
  @override
  _BottomNavigationBarComponentItemState createState() =>
      _BottomNavigationBarComponentItemState();
}

class _BottomNavigationBarComponentItemState
    extends State<BottomNavigationBarComponentItem> {
  final List<Color> backgroundColorList = [
    Colors.purple,
    Colors.deepOrange,
    Colors.red.shade800,
  ];

  final textLabelList = ['Home', 'Feed', 'Profile'];

  @override
  Widget build(BuildContext context) {
    final ButtonNavigatorController controller =
        Provider.of<ButtonNavigatorController>(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      // type: BottomNavigationBarType.fixed,
      selectedFontSize: 20,
      unselectedFontSize: 15,
      // backgroundColor: Colors.blue[500],
      // unselectedItemColor: Colors.black,
      // selectedItemColor: Colors.white,
      // iconSize: 25,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      currentIndex: controller.currentIndex,
      onTap: (index) => controller.setCurrentIndex(index), //CallBack

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: textLabelList[controller.currentIndex],
          backgroundColor: backgroundColorList[controller.currentIndex],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.feed_outlined),
          label: textLabelList[controller.currentIndex],
          backgroundColor: backgroundColorList[controller.currentIndex],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: textLabelList[controller.currentIndex],
          backgroundColor: backgroundColorList[controller.currentIndex],
        ),
      ],
    );
  }
}
