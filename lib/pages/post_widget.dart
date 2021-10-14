import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';

class PostWidget extends StatefulWidget {
  final String
      // commentStatus,
      // comments,
      // dateCreated,
      // dateLastModified,

      excerpt,
      featuredMedia,
      title,
      htmlContent,
      link
      // likes,
      // status,
      // views,
      ;
  const PostWidget({
    Key? key,

    // required this.commentStatus,
    // required this.comments,
    // required this.dateCreated,
    // required this.dateLastModified,

    required this.title,
    required this.htmlContent,
    required this.excerpt,
    required this.featuredMedia,
    // required this.format,

    required this.link,
    // required this.likes,
    // required this.status,
    // required this.views,
  }) : super(key: key);

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
                                child: Html(
                                  data: widget.title,
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
                        Html(data: widget.htmlContent),
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
