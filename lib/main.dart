import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_cuttie/pages/login_sign_up_widget.dart';

bool isReady = false;
var brightness = SchedulerBinding.instance!.window.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;
bool isBrightMode = brightness != Brightness.dark;
bool isProcessing = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // ignore: unused_local_variable
  FirebaseFirestore base;
  base = FirebaseFirestore.instance;
  FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.deepPurple));

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
        //
        //     light THEME
        //

        primaryColor: Colors.deepPurple,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        dividerColor: Colors.deepPurple,
        colorScheme: const ColorScheme.light(
          primary: Colors.deepPurple,
        ),

        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          elevation: 0, centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lobster().fontFamily,
            fontSize: 42,
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(30),
          //   ),
          // ),
          // toolbarHeight: 17,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          primary: Colors.deepPurple,
          shadowColor: Colors.red,
          backgroundColor: Colors.transparent,
          textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lobster().fontFamily),
          shape: const StadiumBorder(),
          side: const BorderSide(
              color: Colors.deepPurple, width: 3, style: BorderStyle.solid),
          elevation: 0,
        )),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          selectedLabelStyle: TextStyle(
              color: const Color(0xFFFFFFFF),
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 18.0),
          unselectedLabelStyle: TextStyle(
              color: Colors.grey[100],
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              // fontFamily: 'Montserrat',
              fontSize: 18.0),
          selectedItemColor: const Color(0xFFFFFFFF),
          unselectedItemColor: Colors.grey[400],
          showUnselectedLabels: true,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.deepPurple,
          shape: StadiumBorder(),
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
        floatingActionButtonTheme: const FloatingActionButtonThemeData(),
        fontFamily: GoogleFonts.varela().fontFamily,
        highlightColor: Colors.deepPurple[700],
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
          size: 16,
        ),
        inputDecorationTheme: const InputDecorationTheme(),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: Colors.deepPurple[300],
          color: Colors.deepPurple,
        ),
        popupMenuTheme: const PopupMenuThemeData(),
        scaffoldBackgroundColor: Colors.white,
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(5),
          interactive: true,
          thickness: MaterialStateProperty.all(5.0),
        ),
        visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
        primarySwatch: const MaterialColor(
          0xFFF5E0C3,
          <int, Color>{
            50: Color(0x1A0C9E3D),
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
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          textStyle: TextStyle(
              fontSize: 20,
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        )),
        primaryColorLight: Colors.white,
        canvasColor: Colors.white,
        bottomAppBarColor: Colors.deepPurple,
        focusColor: Colors.deepPurple[700],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              textStyle: TextStyle(
                fontSize: 20,
                fontFamily: GoogleFonts.lobster().fontFamily,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      //
      //     DARK THEME
      //

      darkTheme: ThemeData(
        primaryColor: Colors.deepPurple,
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        dividerColor: Colors.deepPurple,
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.deepPurple,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lobster().fontFamily,
            fontSize: 42,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          textStyle: TextStyle(
              fontSize: 20,
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        )),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          selectedLabelStyle: TextStyle(
              color: const Color(0xFF000000),
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 18.0),
          unselectedLabelStyle: TextStyle(
              fontFamily: GoogleFonts.lobster().fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
              // fontFamily: 'Montserrat',
              fontSize: 18.0),
          selectedItemColor: const Color(0xFFFFFFFF),
          unselectedItemColor: Colors.grey[400],
          showUnselectedLabels: true,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.deepPurple,
          shape: StadiumBorder(),
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              textStyle: TextStyle(
                fontFamily: GoogleFonts.lobster().fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
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
        scaffoldBackgroundColor: Colors.black,
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(5),
          interactive: true,
          thickness: MaterialStateProperty.all(5.0),
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
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          primary: Colors.deepPurple,
          backgroundColor: Colors.transparent,
          textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lobster().fontFamily),
          shape: const StadiumBorder(),
          side: const BorderSide(
              color: Colors.deepPurple, width: 3, style: BorderStyle.solid),
          elevation: 0,
        )),
      ),
      themeMode: ThemeMode.system,
      home: const LoginSignUpWidget(),
    );
  }
}
