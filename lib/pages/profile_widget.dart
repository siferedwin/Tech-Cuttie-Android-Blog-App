import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/edit_profile_widget.dart';
import 'package:tech_cuttie/pages/home_page_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final String id = FirebaseAuth.instance.currentUser!.uid;
  final Stream<QuerySnapshot> userDoc =
      FirebaseFirestore.instance.collection('TechCuttieUsers').snapshots();
  Stream userStream = FirebaseFirestore.instance
      .collection('TechCuttieUsers')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .snapshots();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String imageUrl = '';
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        // backgroundColor: const Color(0xFF262D34),
        body: Scrollbar(
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditprofileWidget()));
                         
                          }
                        ,
                        child: const Text('Edit Profile')),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const HomePageWidget(),
                          ),
                          ModalRoute.withName('/'),
                        );
                      },
                      child: const Text('Sign Out',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple))),
                  InkWell(
                      onTap: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const HomePageWidget(),
                          ),
                          ModalRoute.withName('/'),
                        );
                        
                        }
                      ,
                      child: const Icon(
                        Icons.exit_to_app_rounded,
                        color: Colors.deepPurple,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // color: const Color(0xFF4B39EF),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: imageUrl == ''
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/user_loading.gif',
                                // width: 90,
                                // height: 90,
                                fit: BoxFit.cover,
                              ),
                            )
                          : CachedNetworkImage(imageUrl: imageUrl)),
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
                                    // fontFamily: 'Lexend Deca',
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
                                    // fontFamily: 'Lexend Deca',
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                2, 2, 2, 2),
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
                            //   // color: Colors.white,
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
                              // fontFamily: 'Lexend Deca',
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                2, 2, 2, 2),
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
                            //   // color: Colors.white,
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
                              // fontFamily: 'Lexend Deca',
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                2, 2, 2, 2),
                            child: ElevatedButton(
                              onPressed: () async {},
                              child: const Icon(Icons.call_end_rounded),
                            ),
                            // FlutterFlowIconButton(
                            //   borderColor: Colors.transparent,
                            //   borderRadius: 30,
                            //   buttonSize: 46,
                            //   icon: Icon(
                            //     Icons.call_rounded,
                            //   // color: Colors.white,
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
                              // fontFamily: 'Lexend Deca',
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                2, 2, 2, 2),
                            child: ElevatedButton(
                              onPressed: () async {},
                              child: const Icon(Icons.add_alert_rounded),
                            ),
                            //  FlutterFlowIconButton(
                            //   borderColor: Colors.transparent,
                            //   borderRadius: 30,
                            //   buttonSize: 46,
                            //   icon: Icon(
                            //     Icons.add_rounded,
                            //   // color: Colors.white,
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
                              // fontFamily: 'Lexend Deca',
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
                              // fontFamily: 'Lexend Deca',
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            child: Text(
                              'Flutterflow',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
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
                              // fontFamily: 'Lexend Deca',
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            child: Text(
                              'I have a proven track record of working with clients, coming up with project briefs, solving existing problems and offering solutions that increase revenue & user engagement. My focus is in Product & User Experience Design, I have worked on over 120 projects over the last 8 years.',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
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
                              // fontFamily: 'Lexend Deca',
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            child: Text(
                              '4:20pm',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
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
                              // fontFamily: 'Lexend Deca',
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            child: Text(
                              '1492 West Sential Way, \nSan Mateo CA 928101',
                              style: TextStyle(
                                // fontFamily: 'Lexend Deca',
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
          )),
        ),
      ),
    );
  }
}
