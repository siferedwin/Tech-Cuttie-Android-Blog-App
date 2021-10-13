import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';

class PostWidget extends StatefulWidget {
  final String category,
      // commentStatus,
      // comments,
      // dateCreated,
      // dateLastModified,
      essay1,
      essay2,
      essay3,
      essay4,
      essay5,
      excerpt,
      featuredMedia,
      // format,
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
      // likes,
      // status,
      // views,
      tag;
  const PostWidget(
      {Key? key,
      required this.category,
      // required this.commentStatus,
      // required this.comments,
      // required this.dateCreated,
      // required this.dateLastModified,
      required this.essay1,
      required this.essay2,
      required this.essay3,
      required this.essay4,
      required this.essay5,
      required this.excerpt,
      required this.featuredMedia,
      // required this.format,
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
      // required this.likes,
      // required this.status,
      // required this.views,
      required this.tag})
      : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                                      alignment:
                                          const AlignmentDirectional(0, 0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 20, 24, 0),
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
                        // Padding(
                        //   padding:
                        //       const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     children: const [
                        //       Text(
                        //         '123 Disney Way, Willingmington, WV 24921',
                        //         style: TextStyle(
                        //           // fontFamily: 'Lexend Deca',
                        //           // color: Color(0xFF8B97A2),
                        //           fontSize: 12,
                        //           fontWeight: FontWeight.normal,
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        TextButton(
                            onPressed: () {
                              Share.share(widget.link);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    Share.share(widget.link);
                                  },
                                ),
                              ],
                            )),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Categories:'),
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(widget.category.replaceAll('[', ''))),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Tags:'),
                        ),
                        OutlinedButton(
                            onPressed: () {}, child: Text(widget.tag)),
                        Text(
                          widget.heading1,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          widget.subHeading1,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: CachedNetworkImage(
                        //       errorWidget: (context, url, error) =>
                        //           const Icon(Icons.error),
                        //       progressIndicatorBuilder:
                        //           (context, url, downloadProgress) => SizedBox(
                        //                 height: 20,
                        //                 width: 20,
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       horizontal: 30, vertical: 15),
                        //                   child: CircularProgressIndicator(
                        //                     value: downloadProgress.progress,
                        //                   ),
                        //                 ),
                        //               ),
                        //       imageUrl: widget.image1),
                        // ),
                        Html(data: widget.essay1),
                        // Text(
                        //   widget.essay1.replaceAll("\\n", "\n"),
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   widget.heading2,
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
                        // Text(
                        //   widget.subHeading2,
                        //   style: Theme.of(context).textTheme.headline5,
                        // ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: CachedNetworkImage(
                        //       errorWidget: (context, url, error) =>
                        //           const Icon(Icons.error),
                        //       progressIndicatorBuilder:
                        //           (context, url, downloadProgress) => SizedBox(
                        //                 height: 20,
                        //                 width: 20,
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       horizontal: 30, vertical: 15),
                        //                   child: CircularProgressIndicator(
                        //                     value: downloadProgress.progress,
                        //                   ),
                        //                 ),
                        //               ),
                        //       imageUrl: widget.image2),
                        // ),
                        // Text(widget.essay2.replaceAll("\\n", "\n")),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   widget.heading3,
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
                        // Text(
                        //   widget.subHeading3,
                        //   style: Theme.of(context).textTheme.headline5,
                        // ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: CachedNetworkImage(
                        //       errorWidget: (context, url, error) =>
                        //           const Icon(Icons.error),
                        //       progressIndicatorBuilder:
                        //           (context, url, downloadProgress) => SizedBox(
                        //                 height: 20,
                        //                 width: 20,
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       horizontal: 30, vertical: 15),
                        //                   child: CircularProgressIndicator(
                        //                     value: downloadProgress.progress,
                        //                   ),
                        //                 ),
                        //               ),
                        //       imageUrl: widget.image3),
                        // ),
                        // // Text(widget.essay3.replaceAll("\\n", "\n")),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   widget.heading4,
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
                        // Text(
                        //   widget.subHeading4,
                        //   style: Theme.of(context).textTheme.headline5,
                        // ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: CachedNetworkImage(
                        //       errorWidget: (context, url, error) =>
                        //           const Icon(Icons.error),
                        //       progressIndicatorBuilder:
                        //           (context, url, downloadProgress) => SizedBox(
                        //                 height: 20,
                        //                 width: 20,
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       horizontal: 30, vertical: 15),
                        //                   child: CircularProgressIndicator(
                        //                     value: downloadProgress.progress,
                        //                   ),
                        //                 ),
                        //               ),
                        //       imageUrl: widget.image4),
                        // ),
                        // Text(widget.essay4.replaceAll("\\n", "\n")),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   widget.heading5,
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
                        // Text(
                        //   widget.subHeading5,
                        //   style: Theme.of(context).textTheme.headline5,
                        // ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: CachedNetworkImage(
                        //       errorWidget: (context, url, error) =>
                        //           const Icon(Icons.error),
                        //       progressIndicatorBuilder:
                        //           (context, url, downloadProgress) => SizedBox(
                        //                 height: 20,
                        //                 width: 20,
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       horizontal: 30, vertical: 15),
                        //                   child: CircularProgressIndicator(
                        //                     value: downloadProgress.progress,
                        //                   ),
                        //                 ),
                        //               ),
                        //       imageUrl: widget.image5),
                        // ),
                        // Text(widget.essay5.replaceAll("\\n", "\n")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
