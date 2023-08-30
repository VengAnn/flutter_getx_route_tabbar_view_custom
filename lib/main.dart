import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/Views/Screens/home_screen.dart';
import 'package:getx_1/Views/Screens/page_5.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     // systemNavigationBarColor: Colors.blue, // navigation bar color
  //     // statusBarColor: Colors.amber, // status bar color
  //     ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/go-page5', page: () => const Page5()),
      ],
    );
  }
}
