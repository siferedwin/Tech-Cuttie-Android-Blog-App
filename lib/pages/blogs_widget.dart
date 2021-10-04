// ignore: unused_import
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wordpress_api/wordpress_api.dart';
import 'package:html/parser.dart';

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
                  var imageurl=wppost["featured_image_src"];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    Card(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: imageurl,),
                        
                        Text(wppost['title']['rendered'],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text(parse((wppost['excerpt']['rendered']).toString()).documentElement!.text)

                      ],),
                    ),))
                  ;
                },
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
                        child: Image.asset('assets/images/loading.gif'),
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
