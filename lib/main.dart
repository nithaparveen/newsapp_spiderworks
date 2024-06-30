import 'package:flutter/material.dart';
import 'package:newsapp_spiderworks/presentation/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:newsapp_spiderworks/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:newsapp_spiderworks/presentation/detail_screen/controller/news_details_controller.dart';
import 'package:newsapp_spiderworks/presentation/home_screen/controller/news_controler.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BottomNavigationController()),
      ChangeNotifierProvider(create: (context) => NewsController()),
      ChangeNotifierProvider(create: (context) => NewsDetailsController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
