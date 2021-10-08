import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/change_photo_widget.dart';
import 'package:tech_cuttie/utils/validator.dart';

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
  late TextEditingController usernameController;
  late TextEditingController firstNameController;
  late TextEditingController middleNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController locationController;
  late TextEditingController phoneController;
  late TextEditingController skillsController;
  late TextEditingController educationController;
  late TextEditingController workController;
  late TextEditingController companyController;
  late TextEditingController jobController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final String id = FirebaseAuth.instance.currentUser!.uid;
  CollectionReference loggedUser =
      FirebaseFirestore.instance.collection("TechCuttieUsers");
  String imageUrl = '';

  @override
  void initState() {
    super.initState();
    // ignore: prefer_typing_uninitialized_variables

    emailAddressController = TextEditingController();
    textController1 = TextEditingController();
    myBioController = TextEditingController();
    usernameController = TextEditingController();
    firstNameController = TextEditingController();
    middleNameController = TextEditingController();
    lastNameController = TextEditingController();
    addressController = TextEditingController();
    locationController = TextEditingController();
    phoneController = TextEditingController();
    skillsController = TextEditingController();
    educationController = TextEditingController();
    workController = TextEditingController();
    companyController = TextEditingController();
    jobController = TextEditingController();
  }

  final passwordTextController = TextEditingController();

  final _focusPassword = FocusNode();
  bool passwordVisibility = false;

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
      body: Center(
        child: SafeArea(
          child: Center(
            child: Scrollbar(
              child: Center(
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
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            Map<String, dynamic> data =
                                snapshot.data!.data() as Map<String, dynamic>;
                            imageUrl = "${data['pic_link']}";
                            String userName = "${data['name']}";
                            String userPassword = "${data['key']}";
                            String userEmail = "${data['email']}";
                            String userAddress = "${data['address']}";
                            String userLocation = "${data['location']}";
                            String userJob = "${data['job_title']}";
                            String userCompany = "${data['company']}";
                            // String userOnline = "${data['online_status']}";
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(2, 2, 2, 2),
                                        child: Container(
                                          width: 90,
                                          height: 90,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: imageUrl != ''
                                              ? ClipRRect(borderRadius:
                                              BorderRadius.circular(16),
                                                child: CachedNetworkImage(
                                                  errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                                progressIndicatorBuilder:
                                                    (context, url,
                                                            downloadProgress) =>
                                                        CircularProgressIndicator(
                                                          value: downloadProgress
                                                              .progress,
                                                        ),
                                                    imageUrl: imageUrl),
                                              )
                                              : Image.asset(
                                                  'assets/images/user_loading.gif'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 16),
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: usernameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userName.replaceAll(
                                          'null', 'Your Username'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your username...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    key: const ValueKey('password'),
                                    controller: passwordTextController,
                                    focusNode: _focusPassword,
                                    validator: (value) =>
                                        Validator.validatePassword(
                                      password: value,
                                    ),
                                    obscureText: !passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: userPassword.replaceAll(
                                          'null', 'Your Password'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0x98FFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Enter your password...',
                                      hintStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0x98FFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          // color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          // color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      // fillColor: const Color(0xFF3D30B4),
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                      prefixIcon:
                                          const Icon(Icons.lock_rounded),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility =
                                              !passwordVisibility,
                                        ),
                                        child: Icon(
                                          passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          // color: const Color(0x98FFFFFF),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    style: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: firstNameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userFirstName.replaceAll(
                                          'null', 'Your First Name'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your first name...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: middleNameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userMiddleName.replaceAll(
                                          'null', 'Your Middle Name'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your middle name...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: lastNameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userLastName.replaceAll(
                                          'null', 'Your Last Name'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your last name...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 12),
                                  child: TextFormField(
                                    controller: emailAddressController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userEmail.replaceAll(
                                          'null', 'Your Email Address'),
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: addressController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userAddress.replaceAll(
                                          'null', 'Your Address'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your Address...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: locationController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userLocation.replaceAll(
                                          'null', 'Your Location'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your location...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: phoneController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userPhone.replaceAll(
                                          'null', 'Your Phone Number'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your phone number...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 12),
                                  child: TextFormField(
                                    controller: myBioController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userBio.replaceAll(
                                          'null', 'Your Bio'),
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: skillsController,
                                    obscureText: false,
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      labelText: userSkills.replaceAll(
                                          'null', 'Your Skills'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your skills...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    maxLines: 3,
                                    controller: educationController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userEducation.replaceAll(
                                          'null',
                                          'Your Educational Backgrround'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText:
                                          'Your educational background...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: workController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userWorkStatus.replaceAll(
                                          'null', 'Your Work Status'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your work status...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: companyController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userCompany.replaceAll(
                                          'null', 'Your Associated Company'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your associated company...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 16),
                                  child: TextFormField(
                                    controller: jobController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: userJob.replaceAll(
                                          'null', 'Your Job Title'),
                                      labelStyle: const TextStyle(
                                        // fontFamily: 'Lexend Deca',
                                        // color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Your job title...',
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
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 0, 24),
                                    ),
                                    style: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF14181B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0, 0.05),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 24, 0, 0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          userName = usernameController.text;
                                          userEmail = usernameController.text;
                                          userPassword =
                                              passwordTextController.text;
                                          userAddress = usernameController.text;
                                          userLocation =
                                              usernameController.text;
                                          userJob = usernameController.text;
                                          userCompany = usernameController.text;
                                          userPhone = usernameController.text;
                                          userBio = usernameController.text;
                                          userEducation =
                                              usernameController.text;
                                          userWorkStatus =
                                              usernameController.text;
                                          userSkills = usernameController.text;
                                          userFirstName =
                                              usernameController.text;
                                          userMiddleName =
                                              usernameController.text;
                                          userLastName =
                                              usernameController.text;
                                        });
                                        loggedUser.doc(id).update({
                                          "bio": userBio,
                                          "email": userEmail,
                                          "name": userName,
                                          "key": userPassword,
                                          "middle_name": userMiddleName,
                                          "first_name": userFirstName,
                                          "last_name": userLastName,
                                          "skills": userSkills,
                                          "work_status": userWorkStatus,
                                          "educational_background":
                                              userEducation,

                                          "address": userAddress,
                                          "phone_number": userPhone,
                                          // "online_status": true,
                                          "company": userCompany,
                                          "job_title": userJob,
                                          "location": userLocation,
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Save Changes'),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
