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
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        backgroundColor: const Color(0xFFE5E5E5),
        dividerColor: Colors.white54,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purpleAccent),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        backgroundColor: const Color(0xFF212121),
        dividerColor: Colors.black12,
      ),
      themeMode: ThemeMode.system,
      home: const HomePageWidget(),
    );
  }
}
