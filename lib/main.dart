import 'package:flutter/material.dart';
import 'package:footer_app_bar/components/bottom_navigation_bar_component.dart';
import 'package:footer_app_bar/controllers/buttom_navigator_controller.dart';
import 'package:provider/provider.dart';
import 'components/custom_scroll_view_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ButtonNavigatorController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Custom',
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollViewItem(),
      bottomNavigationBar: BottomNavigationBarComponentItem(),
    );
  }
}
