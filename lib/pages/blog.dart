// ignore: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_cuttie/pages/posts_widget.dart';
import 'package:wordpress_api/wordpress_api.dart';
import 'package:html/parser.dart';

import 'package:tech_cuttie/api/wp_api.dart';

WordPressAPI api = WordPressAPI('techcuttie.com');

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<Home> {
  var imageUrl = '';
  final api = WordPressAPI('techcuttie.com');
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: true,
        actions: const [],
        centerTitle: true,
        title: const Text('Blog'),
        elevation: 4,
      ),
      // backgroundColor: Color(0xFFF5F5F5),
      body: FutureBuilder<List>(
        future: fetchWpPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scrollbar(
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  Map wppost = snapshot.data![index];
                  var featuredMedia = wppost["jetpack_featured_media_url"];
                  var title = wppost['title']['rendered'];
                  var link = wppost['link'];
                  var postId = wppost['id'].toString();

                  var excerpt =
                      parse((wppost['excerpt']['rendered']).toString())
                          .documentElement!
                          .text
                          .replaceAll('Table of Contents ', '');
                  var htmlContent = wppost['content']['rendered'];
                  if (postIds.contains(postId)) {
                  } else {
                    postIds.add(postId);
                    FirebaseFirestore.instance
                        .collection('Blog')
                        .doc(postId.toString())
                        .set({
                      'featuredMedia': featuredMedia,
                      'title': title,
                      'link': link,
                      'htmlContent': htmlContent.toString().substring(
                          0, htmlContent.toString().indexOf('Click')),
                      'excerpt': excerpt,
                    });
                  }

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePost(
                                    content: excerpt,
                                    link: link,
                                    imageurl: featuredMedia,
                                    title: title,
                                    htmlContent: htmlContent,
                                  )));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading.gif',
                                  image: featuredMedia,
                                ),
                                Text(wppost['title']['rendered'],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(parse((wppost['excerpt']['rendered'])
                                        .toString())
                                    .documentElement!
                                    .text
                                    .replaceAll(
                                        'Click Your preferred platform to share:PocketTelegramWhatsAppTweetPrintShare on Tumblr',
                                        ""))
                              ],
                            ),
                          ),
                        )),
                  );
                },
              ),
            );
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/loading.gif'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Please wait as the latest posts update...'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PostTile extends StatefulWidget {
  final String title, href, desc, content;
  // ignore: use_key_in_widget_constructors
  const PostTile({
    required this.content,
    required this.desc,
    required this.href,
    required this.title,
  });

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                  future: fetchWpPostImageUrl(widget.href),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Image.network(widget.href);
                    }
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/loading.gif'),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.content),
              )
            ],
          ),
        ),
      ],
    );
  }
}

final List<String> postIds = [];
