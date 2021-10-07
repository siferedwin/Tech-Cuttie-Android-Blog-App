import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PostWidget extends StatefulWidget {
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
  const PostWidget(
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
                                      child: Image.asset(
                                        'assets/images/user_loading.gif',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
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
                                                onPressed: () {},
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
                          children: const [
                            Text(
                              'Vacation Home',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF090F13),
                                fontSize: 24,
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
                          onPressed: () {}, child: const Text('Book Now'))
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
