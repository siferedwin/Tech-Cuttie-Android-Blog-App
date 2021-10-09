import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<Quiz> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Blogs').snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tech Quiz',
            style:
                GoogleFonts.lobster(fontSize: 42, fontWeight: FontWeight.bold),
          ),
        ),
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
                          String category = doc['category'].toString();
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
                          String tag = doc['tag'].toString();
                          String commentStatus = doc['comment_status'];
                          String comments = doc['comments'].toString();
                          String dateLastmodified = doc['date_last_modified'];
                          String views = doc['views'].toString();

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizWidget(
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
                                            dateLastModified: dateLastmodified,
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
                                      borderRadius: BorderRadius.circular(16),
                                      child: CachedNetworkImage(
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child:
                                                    CircularProgressIndicator(
                                                  value:
                                                      downloadProgress.progress,
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
    );
  }
}

class QuizWidget extends StatefulWidget {
  final String category,
      commentStatus,
      comments,
      dateCreated,
      dateLastModified,
      essay1,
      essay2,
      essay3,
      essay4,
      essay5,
      excerpt,
      featuredMedia,
      format,
      heading1,
      heading2,
      heading3,
      heading4,
      heading5,
      image1,
      image2,
      image3,
      image4,
      image5,
      subHeading1,
      subHeading2,
      subHeading3,
      subHeading4,
      subHeading5,
      name,
      link,
      likes,
      status,
      views,
      tag;
  const QuizWidget(
      {Key? key,
      required this.category,
      required this.commentStatus,
      required this.comments,
      required this.dateCreated,
      required this.dateLastModified,
      required this.essay1,
      required this.essay2,
      required this.essay3,
      required this.essay4,
      required this.essay5,
      required this.excerpt,
      required this.featuredMedia,
      required this.format,
      required this.heading1,
      required this.heading2,
      required this.heading3,
      required this.heading4,
      required this.heading5,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.image4,
      required this.image5,
      required this.subHeading1,
      required this.subHeading2,
      required this.subHeading3,
      required this.subHeading4,
      required this.subHeading5,
      required this.name,
      required this.link,
      required this.likes,
      required this.status,
      required this.views,
      required this.tag})
      : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<QuizWidget> {
  late String dropDownValue1;
  late String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 320,
                              decoration: BoxDecoration(
                                // color: Color(0xFFDBE2E7),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: widget.featuredMedia != ''
                                          ? ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                  errorWidget: (context, url,
                                                          error) =>
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
                                                  // width: double.infinity,
                                                  // height: double.infinity,
                                                  // fit: BoxFit.contain,
                                                  imageUrl:
                                                      widget.featuredMedia),
                                            )
                                          : ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: Image.asset(
                                                'assets/images/user_loading.gif',
                                                // width: double.infinity,
                                                // height: double.infinity,
                                                // fit: BoxFit.contain,
                                              ),
                                            ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 16, 16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              // color: Colors.deepPurple,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: IconButton(
                                                icon: const Icon(
                                                  Icons.arrow_back_rounded,
                                                  // color: Colors.deepPurple,
                                                  // size: 24,
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                            Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              // color: Colors.deepPurple,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: IconButton(
                                                icon: const Icon(
                                                  Icons.favorite_border,
                                                  // color: Colors.deepPurple,
                                                  // size: 24,
                                                ),
                                                onPressed: () {},
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                widget.name,
                                style: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF090F13),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              '123 Disney Way, Willingmington, WV 24921',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF8B97A2),
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: Color(0xFF320585),
                              ),
                              direction: Axis.horizontal,
                              rating: 5,
                              unratedColor: const Color(0xFFC964F4),
                              itemCount: 5,
                              itemSize: 24,
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                '4/5 Reviews',
                                style: TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF8B97A2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              'DESCRIPTION',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF262D34),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
                                  style: TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                // decoration: BoxDecoration(
                //   // color: Color(0xFF14181B),
                //   // boxShadow: const [
                //   //   BoxShadow(
                //   //     blurRadius: 4,
                //   //     // color: Color(0x55000000),
                //   //     offset: Offset(0, 2),
                //   //   )
                //   ],
                //   borderRadius: BorderRadius.circular(16),
                // ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Text(
                                '\$156',
                                style: TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Text(
                                  '+ taxes',
                                  style: TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'per night',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF8B97A2),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            launch(widget.link);
                          },
                          child: Row(
                            children: [
                              const Text('Share',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              IconButton(
                                icon: const Icon(
                                  Icons.share_rounded,
                                  // color: Colors.deepPurple,
                                  // size: 24,
                                ),
                                onPressed: () {
                                  launch(widget.link);
                                },
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
