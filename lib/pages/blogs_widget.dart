import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_cuttie/pages/post_widget.dart';

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
                            shrinkWrap: true,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot doc = snapshot.data!.docs[index];
                              String category = doc['category'][0];
                              String subHeading2 = doc['sub_heading2'];
                              String subHeading1 = doc['sub_heading1'];
                              String subHeading3 = doc['sub_heading3'];
                              String subHeading4 = doc['sub_heading4'];
                              String subHeading5 = doc['sub_heading5'];
                              String heading1 = doc['heading1'];
                              String heading2 = doc['heading2'];
                              String heading3 = doc['heading3'];
                              String heading4 = doc['heading4'];
                              String heading5 = doc['heading5'];
                              String image1 = doc['image1'];
                              String image2 = doc['image2'];
                              String image3 = doc['image3'];
                              String image4 = doc['image4'];
                              String image5 = doc['image5'];
                              String essay1 = doc['essay1'];
                              String essay2 = doc['essay2'];
                              String essay3 = doc['essay3'];
                              String essay4 = doc['essay4'];
                              String essay5 = doc['essay5'];
                              String format = doc['format'];
                              String featuredMedia = doc['featured_media'];
                              String likes = doc['likes'].toString();
                              String name = doc['name'];
                              String status = doc['status'];
                              String link = doc['link'];
                              String excerpt = doc['excerpt'];
                              String dateCreated = doc['date_created'];
                              String tag = doc['tag'][0];
                              String commentStatus = doc['comment_status'];
                              String comments = doc['comments'][0];
                              String views = doc['views'].toString();
                              String dateLastmodified =
                                  doc['date_last_modified'];
                              return GestureDetector(
                                onTap: () {
                                  // ignore: prefer_typing_uninitialized_variables

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PostWidget(
                                                category: category,
                                                subHeading5: subHeading5,
                                                essay4: essay4,
                                                format: format,
                                                heading5: heading5,
                                                heading4: heading4,
                                                heading2: heading2,
                                                heading1: heading1,
                                                image2: image2,
                                                image1: image1,
                                                essay3: essay3,
                                                featuredMedia: featuredMedia,
                                                image5: image5,
                                                likes: likes,
                                                subHeading1: subHeading1,
                                                name: name,
                                                status: status,
                                                link: link,
                                                subHeading3: subHeading3,
                                                image3: image3,
                                                subHeading2: subHeading2,
                                                excerpt: excerpt,
                                                image4: image4,
                                                heading3: heading3,
                                                essay5: essay5,
                                                essay1: essay1,
                                                dateCreated: dateCreated,
                                                subHeading4: subHeading4,
                                                tag: tag,
                                                essay2: essay2,
                                                commentStatus: commentStatus,
                                                comments: comments,
                                                dateLastModified:
                                                    dateLastmodified,
                                                views: views,
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
                  } else {
                    return Center(
                      child: Column(
                        children: const [
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator()),
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
