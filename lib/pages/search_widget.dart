import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   automaticallyImplyLeading: true,
      //   actions: const [],
      //   centerTitle: true,
      //   elevation: 4,
      // ),
      // backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
