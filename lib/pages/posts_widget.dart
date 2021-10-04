import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class Posts extends StatefulWidget {
  final String imageurl, title, content, htmlContent;

  const Posts({
    Key? key,
    required this.imageurl,
    required this.title,
    required this.content,
    required this.htmlContent,
  }) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Posts> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knowledge Base'),
        actions: [
          like
              ? IconButton(
                  onPressed: () {
                    launch('https://widgets.wp.com/likes/#');
                    setState(() {
                      like = true;
                    });
                  },
                  icon: const Icon(Icons.favorite_border_rounded))
              : IconButton(
                  onPressed: () {
                    launch('https://widgets.wp.com/likes/#');
                    setState(() {
                      like = false;
                    });
                  },
                  icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                launch('https://techcuttie.com');
              },
              icon: const Icon(Icons.share_rounded))
        ],
      ),
      body: ListView(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: widget.imageurl,
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
    );
  }
}
