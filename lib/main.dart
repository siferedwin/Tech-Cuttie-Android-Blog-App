import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/home_page_widget.dart';
import 'package:wordpress_api/wordpress_api.dart';
WordPressAPI api = WordPressAPI('techuttie.com');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Cuttie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomePageWidget(),
    );
  }
}
