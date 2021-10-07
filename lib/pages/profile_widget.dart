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
    CollectionReference loggedUser =
        FirebaseFirestore.instance.collection("TechCuttieUsers");
    String imageUrl = '';
    return SafeArea(
        child: Scaffold(
            key: scaffoldKey,
            // backgroundColor: const Color(0xFF262D34),
            body: Scrollbar(
                child: SingleChildScrollView(
              child: Center(
                child: FutureBuilder<DocumentSnapshot>(
                    future: loggedUser.doc(id).get(),
                    builder: (BuildContext context,
                        AsyncSnapshot<DocumentSnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return const Text("Something went wrong");
                      }
                      if (snapshot.hasData && !snapshot.data!.exists) {
                        return const Text('User not in database');

                        // setState(() {
                        //   imageUrl = image;
                        // });
                      }
                      if (snapshot.connectionState == ConnectionState.done) {
                        Map<String, dynamic> data =
                            snapshot.data!.data() as Map<String, dynamic>;
                        imageUrl = "${data['pic_link']}";
                        String userName = "${data['name']}";
                        String userEmail = "${data['email']}";
                        String userAddress = "${data['address']}";
                        String userLocation = "${data['location']}";
                        String userJob = "${data['job_title']}";
                        String userRegisterDate = "${data['register_date']}";
                        String userCompany = "${data['company']}";
                        String userOnline = "${data['online_status']}";
                        String userPhone = "${data['phone_number']}";
                        String userBio = "${data['bio']}";
                        String userEducation =
                            "${data['educational_background']}";
                        String userWorkStatus = "${data['work_status']}";
                        String userSkills = "${data['skills']}";
                        String userFirstName = "${data['first_name']}";
                        String userMiddleName = "${data['middle_name']}";
                        String userLastName = "${data['last_name']}";
                        return Column(
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
                                      },
                                      child: const Text('Edit Profile')),
                                ),
                                const Spacer(),
                                TextButton(
                                    onPressed: () async {
                                      await FirebaseAuth.instance.signOut();
                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePageWidget(),
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
                                          builder: (context) =>
                                              const HomePageWidget(),
                                        ),
                                        ModalRoute.withName('/'),
                                      );
                                    },
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                // color: const Color(0xFF4B39EF),
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            2, 2, 2, 2),
                                    child: imageUrl == ''
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/user_loading.gif',
                                              // width: 90,
                                              // height: 90,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : CachedNetworkImage(
                                            imageUrl: imageUrl)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 5, 0),
                                              child: SizedBox(
                                                child:userOnline=='true'? Container(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.green,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ):Container(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 0),
                                              child: Text(
                                                userName,
                                                style: const TextStyle(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                userEmail,
                                                style: const TextStyle(
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 16, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        // color: const Color(0x250D9BF1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(2, 2, 2, 2),
                                          child: ElevatedButton(
                                            onPressed: () async {},
                                            child:
                                                const Icon(Icons.chat_bubble),
                                          ),
                                          
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(2, 2, 2, 2),
                                        child: ElevatedButton(
                                          onPressed: () async {},
                                          child: const Icon(
                                              Icons.videocam_rounded),
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
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
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
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        // color: const Color(0x250D9BF1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(2, 2, 2, 2),
                                          child: ElevatedButton(
                                            onPressed: () async {},
                                            child: const Icon(
                                                Icons.call_end_rounded),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
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
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        // color:const Color(0x250D9BF1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(2, 2, 2, 2),
                                          child: ElevatedButton(
                                            onPressed: () async {},
                                            child: const Icon(
                                                Icons.add_alert_rounded),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Address',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userAddress,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userLocation,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'First Name',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userFirstName,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Middle Name',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userMiddleName,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Last Name',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userLastName,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Phone Number',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userPhone,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Registration Date',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userRegisterDate,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Tech Cuttie Lifetime',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userCompany,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'User Bio',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userBio,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Educational Background',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userEducation,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Skills',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userSkills,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Company',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userCompany,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Job Title',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userJob,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 0, 8),
                                        child: Text(
                                          'Work Status',
                                          style: TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            // color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Card(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 10, 24, 10),
                                            child: Text(
                                              userWorkStatus,
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        );
                      }

                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    }),
              ),
            ))));
  }
}
