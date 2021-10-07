import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                              return Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      CachedNetworkImage(
                                          imageUrl: doc['featured_media']),
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
                                                      color: Colors.deepPurple,
                                                    ),
                                                  ),
                                                  Text(doc['likes'].toString()),
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
                                                      color: Colors.deepPurple,
                                                    ),
                                                  ),
                                                  Text(doc['views'].toString()),
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
                                                      color: Colors.deepPurple,
                                                    ),
                                                  ),
                                                  Text(doc['comments'][0]),
                                                ],
                                              )),
                                        ],
                                      )
                                    ],
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
