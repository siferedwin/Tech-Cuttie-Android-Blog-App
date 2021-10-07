import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_cuttie/pages/post_widget.dart';
import 'package:wordpress_api/wordpress_api.dart';

WordPressAPI api = WordPressAPI('wp-site.com');

class BlogsWidget extends StatefulWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<BlogsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Blogs').snapshots();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Center(
          child: Scaffold(
            key: scaffoldKey,
            body: Center(
              child: StreamBuilder<QuerySnapshot>(
                stream: _usersStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Scrollbar(
                      child: Center(
                        child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot doc = snapshot.data!.docs[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PostWidget(
                                                category: '',
                                                subHeading5: '',
                                                essay4: '',
                                                format: '',
                                                heading5: '',
                                                heading4: '',
                                                heading2: '',
                                                heading1: '',
                                                image2: '',
                                                image1: '',
                                                essay3: '',
                                                featuredMedia: '',
                                                image5: '',
                                                likes: '',
                                                subHeading1: '',
                                                name: '',
                                                status: '',
                                                link: '',
                                                subHeading3: '',
                                                image3: '',
                                                subHeading2: '',
                                                excerpt: '',
                                                image4: '',
                                                heading3: '',
                                                essay5: '',
                                                essay1: '',
                                                dateCreated: '',
                                                subHeading4: '',
                                                tag: '',
                                                essay2: '',
                                                commentStatus: '',
                                                comments: '',
                                                dateLastModified: '',
                                                views: '',
                                              )));
                                },
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                              fit: BoxFit.scaleDown,
                                              imageUrl: doc['featured_media']),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(doc['name'],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                        ),
                                        Text(doc['excerpt'],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            )),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Colors.deepPurple,
                                                      ),
                                                    ),
                                                    Text(doc['likes']
                                                        .toString()),
                                                  ],
                                                )),
                                            TextButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons
                                                            .remove_red_eye_rounded,
                                                        color:
                                                            Colors.deepPurple,
                                                      ),
                                                    ),
                                                    Text(doc['views']
                                                        .toString()),
                                                  ],
                                                )),
                                            TextButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.chat,
                                                        color:
                                                            Colors.deepPurple,
                                                      ),
                                                    ),
                                                    const Text('20')
                                                  ],
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    );
                  } else {
                    return Center(
                      child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          Text('Fetching the latest Posts...')
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
