import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: const Color(0xFF262D34),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
              child: Card(
                
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0xFF4B39EF),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: 
                    CachedNetworkImage(imageUrl: 'https://picsum.photos/seed/835/600',fit: BoxFit.cover,)
                    // Image.asset(
                    //   'assets/images/Mia_Deaven.jpg',
                    //   width: 90,
                    //   height: 90,
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                '[User Name]',
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  // color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'User.name@domainname.com',
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // color: const Color(0x250D9BF1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child: ElevatedButton(
                            onPressed: () async {},
                            child: const Icon(Icons.chat_bubble),
                          ),
                          // FlutterFlowIconButton(
                          //   borderColor: Colors.transparent,
                          //   borderRadius: 30,
                          //   buttonSize: 46,
                          //   icon: Icon(
                          //     Icons.chat_bubble,
                          //     color: Colors.white,
                          //     size: 24,
                          //   ),
                          //   onPressed: () {
                          //     print('IconButton pressed ...');
                          //   },
                          // ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Chat',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // color: const Color(0x250D9BF1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child: ElevatedButton(
                            onPressed: () async {},
                            child: const Icon(Icons.videocam_rounded),
                          ),
                          // FlutterFlowIconButton(
                          //   borderColor: Colors.transparent,
                          //   borderRadius: 30,
                          //   buttonSize: 46,
                          //   icon: Icon(
                          //     Icons.videocam_rounded,
                          //     color: Colors.white,
                          //     size: 24,
                          //   ),
                          //   onPressed: () {
                          //     print('IconButton pressed ...');
                          //   },
                          // ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Video Call',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // color: const Color(0x250D9BF1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child: 
                          ElevatedButton(
                            onPressed: () async {},
                            child: const Icon(Icons.call_end_rounded),
                          ),
                          // FlutterFlowIconButton(
                          //   borderColor: Colors.transparent,
                          //   borderRadius: 30,
                          //   buttonSize: 46,
                          //   icon: Icon(
                          //     Icons.call_rounded,
                          //     color: Colors.white,
                          //     size: 24,
                          //   ),
                          //   onPressed: () {
                          //     print('IconButton pressed ...');
                          //   },
                          // ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Call',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // color:const Color(0x250D9BF1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child:
                          ElevatedButton(
                            onPressed: () async {},
                            child: const Icon(Icons.add_alert_rounded),
                          ),
                          //  FlutterFlowIconButton(
                          //   borderColor: Colors.transparent,
                          //   borderRadius: 30,
                          //   buttonSize: 46,
                          //   icon: Icon(
                          //     Icons.add_rounded,
                          //     color: Colors.white,
                          //     size: 24,
                          //   ),
                          //   onPressed: () {
                          //     print('IconButton pressed ...');
                          //   },
                          // ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 2,
              indent: 16,
              endIndent: 16,
              // color: Color(0x250D9BF1),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'Company',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            'Flutterflow',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              // color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'User Bio',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            'I have a proven track record of working with clients, coming up with project briefs, solving existing problems and offering solutions that increase revenue & user engagement. My focus is in Product & User Experience Design, I have worked on over 120 projects over the last 8 years.',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              // color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'Local Time',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            '4:20pm',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              // color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            // color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            '1492 West Sential Way, \nSan Mateo CA 928101',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              // color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
