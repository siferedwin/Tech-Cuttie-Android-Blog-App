// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/change_photo_widget.dart';

class EditprofileWidget extends StatefulWidget {
  const EditprofileWidget({Key? key}) : super(key: key);

  @override
  _EditprofileWidgetState createState() => _EditprofileWidgetState();
}

class _EditprofileWidgetState extends State<EditprofileWidget> {
  String uploadedFileUrl = '';
  late TextEditingController textController1;
  late TextEditingController emailAddressController;
  late TextEditingController myBioController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // ignore: prefer_typing_uninitialized_variables
    var currentUserEmail;
    emailAddressController = TextEditingController(text: currentUserEmail);
    textController1 = TextEditingController(text: '[display_name]');
    myBioController = TextEditingController(text: '[bio]');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            // color: Colors.black,
            size: 24,
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            // fontFamily: 'Lexend Deca',
            // color: Color(0xFF14181B),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    // color: Color(0xFFDBE2E7),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ChangeProfile()));
                    },
                    child: const Text('Change Photo'),
                  ),
                  // FFButtonWidget(
                  //   onPressed: () {
                  //     // print('Button pressed ...');
                  //   },
                  //   text: 'Change Photo',
                  //   options: FFButtonOptions(
                  //     width: 130,
                  //     height: 40,
                  //   // color: Colors.white,
                  //     textStyle: const TextStyle(
                  //       // fontFamily: 'Lexend Deca',
                  //     // color: Color(0xFF39D2C0),
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.normal,
                  //     ),
                  //     elevation: 2,
                  //     borderSide: const BorderSide(
                  //     // color: Colors.transparent,
                  //       width: 1,
                  //     ),
                  //     borderRadius: 8,
                  //   ),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
              child: TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Your full name...',
                  hintStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  // fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: const TextStyle(
                  // fontFamily: 'Lexend Deca',
                  // color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
              child: TextFormField(
                controller: emailAddressController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Your email..',
                  hintStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  // fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: const TextStyle(
                  // fontFamily: 'Lexend Deca',
                  // color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
              child: TextFormField(
                controller: myBioController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Bio',
                  labelStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'A little about you...',
                  hintStyle: const TextStyle(
                    // fontFamily: 'Lexend Deca',
                    // color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  // fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: const TextStyle(
                  // fontFamily: 'Lexend Deca',
                  // color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
                maxLines: 3,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.05),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Save Changes'),
                ),
                // FFButtonWidget(
                //   onPressed: () async {
                //     Navigator.pop(context);
                //   },
                //   text: 'Save Changes',
                //   options: FFButtonOptions(
                //     width: 340,
                //     height: 60,
                //   // color:const Color(0xFF39D2C0),
                //     textStyle: const TextStyle(
                //       // fontFamily: 'Lexend Deca',
                //     // color: Colors.white,
                //       fontSize: 16,
                //       fontWeight: FontWeight.normal,
                //     ),
                //     elevation: 2,
                //     borderSide: const BorderSide(
                //     // color: Colors.transparent,
                //       width: 1,
                //     ),
                //     borderRadius: 8,
                //   ),
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
