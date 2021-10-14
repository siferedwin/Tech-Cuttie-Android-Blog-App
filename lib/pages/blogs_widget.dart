import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_cuttie/pages/post_widget.dart';
import 'package:tech_cuttie/pages/search_widget.dart';

class BlogsWidget extends StatefulWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<BlogsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Blog').snapshots();

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
                              shrinkWrap: true,
                              // reverse: true,
                              // itemExtent: 0,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot doc =
                                    snapshot.data!.docs[index];

                                // String format = doc['format'];
                                String featuredMedia = doc['featuredMedia'];

                                // String likes = doc['likes'].toString();
                                String title = doc['title'];
                                // String status = doc['status'];
                                String link = doc['link'];
                                String excerpt = doc['excerpt'];
                                String htmlContent = doc['htmlContent'];
                                // String dateCreated = doc['date_created'];

                                if (searchHistory.contains(title)) {
                                } else {
                                  searchHistory.add(title);
                                }

                                // String commentStatus = doc['comment_status'];
                                // String comments = doc['comments'][0];
                                // String views = doc['views'].toString();
                                // String dateLastmodified =
                                //     doc['date_last_modified'];
                                return GestureDetector(
                                  onTap: () {
                                    // ignore: prefer_typing_uninitialized_variables

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PostWidget(
                                                  // format: format,

                                                  featuredMedia: featuredMedia,
                                                  htmlContent: htmlContent,
                                                  excerpt: excerpt,

                                                  title: title,
                                                  // status: status,
                                                  link: link,

                                                  // commentStatus: commentStatus,
                                                  // comments: comments,
                                                  // dateLastModified:
                                                  //     dateLastmodified,
                                                  // views: views,
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
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                                progressIndicatorBuilder:
                                                    (context, url,
                                                            downloadProgress) =>
                                                        SizedBox(
                                                          height: 20,
                                                          width: 20,
                                                          child:
                                                              CircularProgressIndicator(
                                                            value:
                                                                downloadProgress
                                                                    .progress,
                                                          ),
                                                        ),
                                                fit: BoxFit.scaleDown,
                                                imageUrl: doc['featuredMedia']),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(doc['title'],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                )),
                                          ),
                                          Text(
                                              doc['excerpt'].toString().replaceAll(
                                                  'Click Your preferred platform to share:PocketTelegramWhatsAppTweetPrintShare on Tumblr',
                                                  ''),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14,
                                              )),
                                          // Row(
                                          //   crossAxisAlignment:
                                          //       CrossAxisAlignment.center,
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.spaceEvenly,
                                          //   children: [
                                          //     TextButton(
                                          //         onPressed: () {},
                                          //         child: Row(
                                          //           children: [
                                          //             Container(
                                          //               child: isLiked == true
                                          //                   ? IconButton(
                                          //                       onPressed: () {
                                          //                         --l;
                                          //                         FirebaseFirestore
                                          //                             .instance
                                          //                             .collection(
                                          //                                 'Blogs')
                                          //                             .doc(
                                          //                                 'FMt0vowtlLa80K7oe4KA')
                                          //                             .update({
                                          //                           "likes": l
                                          //                         });
                                          //                         setState(() {
                                          //                           isLiked =
                                          //                               false;
                                          //                         });
                                          //                       },
                                          //                       icon: const Icon(
                                          //                         Icons.favorite,
                                          //                         color: Colors
                                          //                             .deepPurple,
                                          //                       ),
                                          //                     )
                                          //                   : IconButton(
                                          //                       onPressed: () {
                                          //                         l++;
                                          //                         print(l);

                                          //                         FirebaseFirestore
                                          //                             .instance
                                          //                             .collection(
                                          //                                 'Blogs')
                                          //                             .doc(
                                          //                                 'FMt0vowtlLa80K7oe4KA')
                                          //                             .update({
                                          //                           "likes": l
                                          //                         });
                                          //                         setState(() {
                                          //                           isLiked =
                                          //                               true;
                                          //                         });
                                          //                       },
                                          //                       icon: const Icon(
                                          //                         Icons
                                          //                             .favorite_border_outlined,
                                          //                         color: Colors
                                          //                             .deepPurple,
                                          //                       ),
                                          //                     ),
                                          //             ),
                                          //             Text(doc['likes']
                                          //                 .toString()),
                                          //           ],
                                          //         )),
                                          //     TextButton(
                                          //         onPressed: () {},
                                          //         child: Row(
                                          //           children: [
                                          //             IconButton(
                                          //               onPressed: () {},
                                          //               icon: const Icon(
                                          //                 Icons
                                          //                     .remove_red_eye_rounded,
                                          //                 color:
                                          //                     Colors.deepPurple,
                                          //               ),
                                          //             ),
                                          //             Text(doc['views']
                                          //                 .toString()),
                                          //           ],
                                          //         )),
                                          //     TextButton(
                                          //         onPressed: () {},
                                          //         child: Row(
                                          //           children: [
                                          //             IconButton(
                                          //               onPressed: () {},
                                          //               icon: const Icon(
                                          //                 Icons.chat,
                                          //                 color:
                                          //                     Colors.deepPurple,
                                          //               ),
                                          //             ),
                                          //             const Text('20')
                                          //           ],
                                          //         )),
                                          //   ],
                                          // )

                                          const SizedBox(height: 30)
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      );
                    }

                    return Column(
                      children: const [
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator()),
                        Text('Fetching the latest Posts...')
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
