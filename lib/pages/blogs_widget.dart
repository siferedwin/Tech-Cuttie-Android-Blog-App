import 'package:flutter/material.dart';
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
                  return PostTile(
                      content: wppost["content"]["rendered"],
                      desc: wppost["excerpt"]["rendered"],
                      href: '',
                      // wppost["_links"]["wp:featuredmedia"][0]["href"],
                      title: wppost["title"]["rendered"]);
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        )
        // SafeArea(
        //   child:
        //   ListView(
        //     padding: EdgeInsets.zero,
        //     scrollDirection: Axis.vertical,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
        //         child: ListTile(
        //           onTap: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => const PostWidget()));
        //           },
        //           title: const Text(
        //             'article 1',
        //             style: TextStyle(
        //               fontFamily: 'Poppins',
        //             ),
        //           ),
        //           subtitle: const Text(
        //             'The rise of tech',
        //             style: TextStyle(
        //               fontFamily: 'Poppins',
        //             ),
        //           ),
        //           trailing: const Icon(
        //             Icons.arrow_forward_ios,
        //             // color: Color(0xFF303030),
        //             size: 20,
        //           ),
        //           // tileColor: Color(0xFFF5F5F5),
        //           dense: false,
        //         ),
        //       ),

        //       // FutureBuilder(
        //       //     future: fetchWpPosts(),
        //       //     builder: (context, snapshot) {
        //       //       if (snapshot.hasData) {
        //       //         ListView.builder(
        //       //           itemCount: snapshot.data!.hashCode,
        //       //           itemBuilder: (BuildContext context, int index) {
        //       //             // Map wppost = snapshot.data!.[index];
        //       //             // return Text(wppost['title']['rendered']);
        //       //           },
        //       //         );
        //       //       }
        //       //       return const CircularProgressIndicator();
        //       //     })
        //     ],
        //   ),

        // ),
        );
  }
}

class PostTile extends StatelessWidget {
  final String title, href, desc, content;
  // ignore: use_key_in_widget_constructors
  const PostTile({
     required this.content,
    required this.desc,
    required this.href,
    required this.title,
  });
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title), Text(desc)],
    );
  }
}
