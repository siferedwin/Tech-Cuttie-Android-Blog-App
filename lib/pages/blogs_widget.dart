import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wordpress_api/wordpress_api.dart';

import 'package:tech_cuttie/api/wp_api.dart';

WordPressAPI api = WordPressAPI('wp-site.com');

class BlogsWidget extends StatefulWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<BlogsWidget> {
  final api = WordPressAPI('techcuttie.com');
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
        body: FutureBuilder<List>(
          future: fetchWpPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  Map wppost = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PostTile(
                        content: '',
                        desc: '',
                        href: '',
                        // wppost["guid"]["wp:featured_media"][0]["href"],
                        title: wppost["title"]["rendered"]),
                  );
                },
              );
            }
            return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CachedNetworkImage(imageUrl: 'https://picsum.photos/id/1/367/267'),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Please wait as the latest posts update.'),
                          )
                        ],
                      ),
                    ),
                  );
          },
        ));
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                  future: fetchWpPostImageUrl(widget.href),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Image.network(widget.href);
                    }
                    return  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CachedNetworkImage(imageUrl: 'https://picsum.photos/id/0/367/267'),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.desc),
              )
            ],
          ),
        ),
      ],
    );
  }
}
