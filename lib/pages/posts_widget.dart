import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';

class HomePost extends StatefulWidget {
  final String imageurl, title, content, htmlContent, link;

  const HomePost({
    Key? key,
    required this.imageurl,
    required this.title,
    required this.link,
    required this.content,
    required this.htmlContent,
  }) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<HomePost> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knowledge Base'),
        actions: [
          like == false
              ? IconButton(
                  onPressed: () {
                    Share.share('https://widgets.wp.com/likes/#');
                    setState(() {
                      like = true;
                    });
                  },
                  icon: const Icon(Icons.favorite_border_rounded))
              : IconButton(
                  onPressed: () {
                    Share.share('https://widgets.wp.com/likes/#');
                    setState(() {
                      like = false;
                    });
                  },
                  icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Share.share(
                  widget.link,
                );
              },
              icon: const Icon(Icons.share_rounded))
        ],
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: widget.imageurl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  Html(data: widget.htmlContent)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
