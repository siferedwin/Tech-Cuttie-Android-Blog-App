import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  final String imageurl,title,desc;
  const Posts({
    Key? key,
    required this.imageurl,required this.title,required this.desc,
  }) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
