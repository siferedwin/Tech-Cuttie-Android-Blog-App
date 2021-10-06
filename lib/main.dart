import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
            primaryColor: Colors.deepPurple,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            dividerColor: Colors.deepPurple,
            colorScheme: const ColorScheme.light(
              primary: Colors.deepPurple,
            ),
            appBarTheme: const AppBarTheme(
              color: Colors.deepPurple,
              elevation: 0,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.deepPurple,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  // fontFamily: 'Montserrat',
                  fontSize: 14.0),
              unselectedLabelStyle: TextStyle(
                  color: Colors.grey[100],
                  // fontFamily: 'Montserrat',
                  fontSize: 12.0),
              selectedItemColor: const Color(0xFFFFFFFF),
              unselectedItemColor: Colors.grey[400],
              showUnselectedLabels: true,
            ),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepPurple,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              textTheme: ButtonTextTheme.accent,
            ),
            cardTheme: CardTheme(
              color: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            dialogTheme: const DialogTheme(
              alignment: Alignment.center,
              backgroundColor: Colors.white,
            ),
            dividerTheme: const DividerThemeData(
              color: Colors.deepPurple,
            ),
            elevatedButtonTheme: const ElevatedButtonThemeData(),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(),
            fontFamily: GoogleFonts.varela().fontFamily,
            highlightColor: Colors.deepPurple[700],
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 16,
            ),
            inputDecorationTheme: const InputDecorationTheme(),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              circularTrackColor: Colors.deepPurple[700],
              color: Colors.deepPurple,
            ),
            popupMenuTheme: const PopupMenuThemeData(),
            scaffoldBackgroundColor: Colors.white,
            scrollbarTheme: const ScrollbarThemeData(),
            visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
            primarySwatch: const MaterialColor(
              0xFFF5E0C3,
              <int, Color>{
                50: Color(0x1aF5E0C3),
                100: Color(0xa1F5E0C3),
                200: Color(0xaaF5E0C3),
                300: Color(0xafF5E0C3),
                400: Color(0xffF5E0C3),
                500: Color(0xffEDD5B3),
                600: Color(0xffDEC29B),
                700: Color(0xffC9A87C),
                800: Color(0xffB28E5E),
                900: Color(0xff936F3E)
              },
            ),
            primaryColorBrightness: Brightness.light,
            primaryColorLight: Colors.white,
            canvasColor: Colors.white,
            bottomAppBarColor: Colors.deepPurple,
            focusColor: Colors.deepPurple[700],
          ),
          darkTheme: ThemeData(
            primaryColor: Colors.deepPurple,
            brightness: Brightness.dark,
            backgroundColor: Colors.black,
            dividerColor: Colors.deepPurple,
            colorScheme: const ColorScheme.dark(
              primary: Colors.deepPurple,
            ),
            appBarTheme: const AppBarTheme(
              color: Colors.deepPurple,
              elevation: 0,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.deepPurple,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                  color: Color(0xFF000000),
                  // fontFamily: 'Montserrat',
                  fontSize: 14.0),
              unselectedLabelStyle: TextStyle(
                  color: Colors.grey[700],
                  // fontFamily: 'Montserrat',
                  fontSize: 12.0),
              selectedItemColor: const Color(0xFFFFFFFF),
              unselectedItemColor: Colors.grey[400],
              showUnselectedLabels: true,
            ),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepPurple,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              textTheme: ButtonTextTheme.accent,
            ),
            cardTheme: CardTheme(
              color: Colors.grey[900],
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            dialogTheme: const DialogTheme(
              alignment: Alignment.center,
              backgroundColor: Colors.black,
            ),
            dividerTheme: const DividerThemeData(
              color: Colors.deepPurple,
            ),
            elevatedButtonTheme: const ElevatedButtonThemeData(),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(),
            fontFamily: GoogleFonts.varela().fontFamily,
            highlightColor: Colors.deepPurple[700],
            iconTheme: const IconThemeData(
              color: Colors.black,
              size: 16,
            ),
            inputDecorationTheme: const InputDecorationTheme(),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              circularTrackColor: Colors.deepPurple[700],
              color: Colors.deepPurple,
            ),
            popupMenuTheme: const PopupMenuThemeData(),
            scaffoldBackgroundColor: Colors.black,
            scrollbarTheme: const ScrollbarThemeData(
              
            ),
            visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
            primarySwatch: const MaterialColor(
              0xFFF5E0C3,
              <int, Color>{
                50: Color(0x1aF5E0C3),
                100: Color(0xa1F5E0C3),
                200: Color(0xaaF5E0C3),
                300: Color(0xafF5E0C3),
                400: Color(0xffF5E0C3),
                500: Color(0xffEDD5B3),
                600: Color(0xffDEC29B),
                700: Color(0xffC9A87C),
                800: Color(0xffB28E5E),
                900: Color(0xff936F3E)
              },
            ),
            primaryColorBrightness: Brightness.dark,
            primaryColorLight: Colors.black,
            canvasColor: Colors.black,
            bottomAppBarColor: Colors.deepPurple,
            focusColor: Colors.deepPurple[700],
            
          ),
          themeMode: ThemeMode.system,
          home: const HomePageWidget(),
        );
      }
    
  }

