import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:tech_cuttie/pages/search_widget.dart';

class Glossary extends StatefulWidget {
  const Glossary({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<Glossary> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Glossary').snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tech Glossary',
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
                          String _content = doc['content'];
                          String _image = doc['image'];
                          String _item = doc['item'];
                          if (searchHistory.contains(_item)) {
                          } else {
                            searchHistory.add(_item);
                          }

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GlossaryWidget(
                                            excerpt: _content,
                                            name: _item,
                                            featuredMedia: _image,
                                          )));
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
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
                                          imageUrl: doc['image']),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(doc['item'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          )),
                                    ),
                                    Text(doc['content'],
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
                                    //             IconButton(
                                    //               onPressed: () {},
                                    //               icon: const Icon(
                                    //                 Icons.favorite,
                                    //                 color: Colors.deepPurple,
                                    //               ),
                                    //             ),
                                    //             Text(doc['likes'].toString()),
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
                                    //                 color: Colors.deepPurple,
                                    //               ),
                                    //             ),
                                    //             Text(doc['views'].toString()),
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
                                    //                 color: Colors.deepPurple,
                                    //               ),
                                    //             ),
                                    //             const Text('20')
                                    //           ],
                                    //         )),
                                    //   ],
                                    // )
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

class GlossaryWidget extends StatefulWidget {
  final String excerpt, featuredMedia, name;
  const GlossaryWidget({
    Key? key,
    required this.excerpt,
    required this.featuredMedia,
    required this.name,
  }) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<GlossaryWidget> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              'Meaning',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF262D34),
                                // fontSize: 12,
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
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 24),
                                child: Text(
                                  widget.excerpt,
                                  style: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF8B97A2),
                                      // fontSize: 14,
                                      // fontWeight: FontWeight.normal,
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [],
                      ),
                      TextButton(
                          onPressed: () {
                            Share.share(widget.name + '' + widget.excerpt);
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
                                  Share.share(widget.name);
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
