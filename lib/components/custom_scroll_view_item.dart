import 'package:flutter/material.dart';
import 'package:footer_app_bar/controllers/buttom_navigator_controller.dart';
import 'package:provider/provider.dart';

class CustomScrollViewItem extends StatefulWidget {
  @override
  _CustomScrollViewItemState createState() => _CustomScrollViewItemState();
}

class _CustomScrollViewItemState extends State<CustomScrollViewItem> {
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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Collapsing Toolbar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              )),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('$index'),
                ),
              );
            },
            childCount: 200,
          ),
        ),
      ],
    );
  }
}
