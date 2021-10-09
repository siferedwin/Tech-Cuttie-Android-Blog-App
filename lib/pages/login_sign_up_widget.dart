import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:tech_cuttie/main.dart';
import 'package:tech_cuttie/pages/home_page_widget.dart';
import 'package:tech_cuttie/utils/fire_auth.dart';
import 'package:tech_cuttie/utils/validator.dart';

class LoginSignUpWidget extends StatefulWidget {
  const LoginSignUpWidget({Key? key}) : super(key: key);

  @override
  _LoginSignUpWidgetState createState() => _LoginSignUpWidgetState();
}

class _LoginSignUpWidgetState extends State<LoginSignUpWidget> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePageWidget(),
        ),
      );
    }

    return firebaseApp;
  }

  final _formKey = GlobalKey<FormState>();

  bool isLogin = false;
  String name = 'NewUser';
  String email = '';
  String password = '';
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // ignore: unused_field
  bool _isProcessing = false;
  bool passwordVisibility = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Center(
        child: SafeArea(
          child: Center(
            child: Scaffold(
              body: Center(
                child: Scrollbar(
                    child: FutureBuilder(
                        future: _initializeFirebase(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 70, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 24, 0, 20),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: CachedNetworkImage(
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          const Icon(
                                                              Icons.error),
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                                  downloadProgress) =>
                                                              SizedBox(
                                                                height: 20,
                                                                width: 20,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  value: downloadProgress
                                                                      .progress,
                                                                ),
                                                              ),
                                                      imageUrl:
                                                          'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/cropped-Tech-Cuttie-2-2.png?fit=150%2C150&ssl=1'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Form(
                                            key: _formKey,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                          20, 20, 20, 0),
                                                  child: TextFormField(
                                                    key:
                                                        const ValueKey('email'),
                                                    controller:
                                                        emailTextController,
                                                    obscureText: false,
                                                    focusNode: _focusEmail,
                                                    validator: (value) =>
                                                        Validator.validateEmail(
                                                      email: value,
                                                    ),
                                                    onSaved: (value) {
                                                      setState(() {
                                                        email = value!;
                                                      });
                                                    },
                                                    decoration: InputDecoration(
                                                      // labelText: 'Email Address',
                                                      labelStyle:
                                                          const TextStyle(
                                                        // fontFamily: 'Lexend Deca',
                                                        // color: Color(0x980BA8A0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      hintText:
                                                          'Enter your email...',
                                                      hintStyle:
                                                          const TextStyle(
                                                        // fontFamily: 'Lexend Deca',
                                                        // color: Color(0x98FFFFFF),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          // color: Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          // color: Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      filled: true,
                                                      // fillColor:
                                                      //     const Color(0xFF4334C9),
                                                      prefixIcon: const Icon(
                                                          Icons.email_rounded),
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                              20, 24, 20, 24),
                                                    ),
                                                    style: const TextStyle(
                                                      // fontFamily: 'Lexend Deca',
                                                      // color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20, 12, 20, 0),
                                            child: TextFormField(
                                              key: const ValueKey('password'),
                                              controller:
                                                  passwordTextController,
                                              focusNode: _focusPassword,
                                              validator: (value) =>
                                                  Validator.validatePassword(
                                                password: value,
                                              ),
                                              obscureText: !passwordVisibility,
                                              decoration: InputDecoration(
                                                // labelText: 'Password',
                                                labelStyle: const TextStyle(
                                                  // fontFamily: 'Lexend Deca',
                                                  // color: Color(0x98FFFFFF),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                hintText:
                                                    'Enter your password...',
                                                hintStyle: const TextStyle(
                                                  // fontFamily: 'Lexend Deca',
                                                  // color: Color(0x98FFFFFF),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    // color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    // color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                filled: true,
                                                // fillColor: const Color(0xFF3D30B4),
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                        20, 24, 20, 24),
                                                prefixIcon: const Icon(
                                                    Icons.lock_rounded),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => passwordVisibility =
                                                        !passwordVisibility,
                                                  ),
                                                  child: Icon(
                                                    passwordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
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
                                          Column(
                                            children: [
                                              isLogin == false
                                                  ? Column(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () async {
                                                            setState(() {
                                                              _isProcessing =
                                                                  true;
                                                            });

                                                            if (_formKey
                                                                .currentState!
                                                                .validate()) {
                                                              User? user =
                                                                  await FireAuth
                                                                      .registerUsingEmailPassword(
                                                                name: name,
                                                                email:
                                                                    emailTextController
                                                                        .text,
                                                                password:
                                                                    passwordTextController
                                                                        .text,
                                                              );
                                                              final DateFormat
                                                                  formatter =
                                                                  DateFormat(
                                                                      'dd/MM/yyyy');
                                                              String
                                                                  createDate =
                                                                  formatter.format(
                                                                      DateTime
                                                                          .now());

                                                              var userId =
                                                                  user!.uid;
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'TechCuttieUsers')
                                                                  .doc(userId)
                                                                  .set({
                                                                "bio":
                                                                    'A new Tech Cuttie User',
                                                                "email":
                                                                    emailTextController
                                                                        .text,
                                                                "name": '',
                                                                "key":
                                                                    passwordTextController
                                                                        .text,
                                                                "middle_name":
                                                                    '',
                                                                "first_name":
                                                                    '',
                                                                "last_name": '',
                                                                "skills": '',
                                                                "work_status":
                                                                    '',
                                                                "educational_background":
                                                                    '',
                                                                "pic_link": '',
                                                                "address": '',
                                                                "phone_number":
                                                                    '',
                                                                "online_status":
                                                                    true,
                                                                "company": '',
                                                                "register_date":
                                                                    createDate,
                                                                "job_title": '',
                                                                "location": '',
                                                              });

                                                              setState(() {
                                                                _isProcessing =
                                                                    false;
                                                              });
                                                              // ignore: unnecessary_null_comparison
                                                              if (user !=
                                                                  null) {
                                                                Navigator.of(
                                                                        context)
                                                                    .pushAndRemoveUntil(
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const HomePageWidget(),
                                                                  ),
                                                                  ModalRoute
                                                                      .withName(
                                                                          '/'),
                                                                );
                                                              }
                                                            }
                                                          },
                                                          child: const Text(
                                                              'Sign Up'),
                                                        ),
                                                        TextButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                isProcessing =
                                                                    true;
                                                                isLogin = true;
                                                              });
                                                            },
                                                            child: const Text(
                                                              'Already have an account? \nClick here to login.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                            )),
                                                        // const Padding(
                                                        //   padding:
                                                        //       EdgeInsetsDirectional
                                                        //           .fromSTEB(0,
                                                        //               12, 0, 0),
                                                        //   child: Text(
                                                        //     'Use a social platform to create an account:',
                                                        //     style: TextStyle(
                                                        //       // fontFamily: 'Lexend Deca',
                                                        //       // color: Color(0x98FFFFFF),
                                                        //       fontSize: 14,
                                                        //       fontWeight:
                                                        //           FontWeight
                                                        //               .normal,
                                                        //     ),
                                                        //   ),
                                                        // ),
                                                        // Row(
                                                        //   children: [
                                                        //     Padding(
                                                        //       padding:
                                                        //           const EdgeInsetsDirectional
                                                        //                   .fromSTEB(
                                                        //               0,
                                                        //               0,
                                                        //               8,
                                                        //               0),
                                                        //       child: Card(
                                                        //         clipBehavior: Clip
                                                        //             .antiAliasWithSaveLayer,
                                                        //         // color: const Color(0xFF090F13),
                                                        //         elevation: 3,
                                                        //         shape:
                                                        //             RoundedRectangleBorder(
                                                        //           borderRadius:
                                                        //               BorderRadius
                                                        //                   .circular(
                                                        //                       50),
                                                        //         ),
                                                        //         child: Padding(
                                                        //           padding:
                                                        //               const EdgeInsetsDirectional
                                                        //                       .fromSTEB(
                                                        //                   2,
                                                        //                   2,
                                                        //                   2,
                                                        //                   2),
                                                        //           child:
                                                        //               Container(
                                                        //             width: 60,
                                                        //             height: 60,
                                                        //             clipBehavior:
                                                        //                 Clip.antiAlias,
                                                        //             decoration:
                                                        //                 const BoxDecoration(
                                                        //               shape: BoxShape
                                                        //                   .circle,
                                                        //             ),
                                                        //             child:
                                                        //                 ClipRRect(
                                                        //               borderRadius:
                                                        //                   BorderRadius.circular(
                                                        //                       16),
                                                        //               child: CachedNetworkImage(
                                                        //                   errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                   progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                         height: 20,
                                                        //                         width: 20,
                                                        //                         child: CircularProgressIndicator(
                                                        //                           value: downloadProgress.progress,
                                                        //                         ),
                                                        //                       ),
                                                        //                   imageUrl: 'https://thumbs.dreamstime.com/b/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg'),
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //     ),
                                                        //     Card(
                                                        //       clipBehavior: Clip
                                                        //           .antiAliasWithSaveLayer,
                                                        //       // color: const Color(0xFF090F13),
                                                        //       shape:
                                                        //           RoundedRectangleBorder(
                                                        //         borderRadius:
                                                        //             BorderRadius
                                                        //                 .circular(
                                                        //                     50),
                                                        //       ),
                                                        //       child: Padding(
                                                        //         padding:
                                                        //             const EdgeInsetsDirectional
                                                        //                     .fromSTEB(
                                                        //                 2,
                                                        //                 2,
                                                        //                 2,
                                                        //                 2),
                                                        //         child:
                                                        //             Container(
                                                        //           width: 60,
                                                        //           height: 60,
                                                        //           clipBehavior:
                                                        //               Clip.antiAlias,
                                                        //           decoration:
                                                        //               const BoxDecoration(
                                                        //             shape: BoxShape
                                                        //                 .circle,
                                                        //           ),
                                                        //           child:
                                                        //               ClipRRect(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(
                                                        //                     16),
                                                        //             child: CachedNetworkImage(
                                                        //                 errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                 progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                       height: 20,
                                                        //                       width: 20,
                                                        //                       child: CircularProgressIndicator(
                                                        //                         value: downloadProgress.progress,
                                                        //                       ),
                                                        //                     ),
                                                        //                 imageUrl: 'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //     ),
                                                        //     Padding(
                                                        //       padding:
                                                        //           const EdgeInsetsDirectional
                                                        //                   .fromSTEB(
                                                        //               8,
                                                        //               0,
                                                        //               0,
                                                        //               0),
                                                        //       child: Card(
                                                        //         clipBehavior: Clip
                                                        //             .antiAliasWithSaveLayer,
                                                        //         // color: const Color(0xFF090F13),
                                                        //         shape:
                                                        //             RoundedRectangleBorder(
                                                        //           borderRadius:
                                                        //               BorderRadius
                                                        //                   .circular(
                                                        //                       50),
                                                        //         ),
                                                        //         child: Padding(
                                                        //           padding:
                                                        //               const EdgeInsetsDirectional
                                                        //                       .fromSTEB(
                                                        //                   2,
                                                        //                   2,
                                                        //                   2,
                                                        //                   2),
                                                        //           child:
                                                        //               Container(
                                                        //             width: 60,
                                                        //             height: 60,
                                                        //             clipBehavior:
                                                        //                 Clip.antiAlias,
                                                        //             decoration:
                                                        //                 const BoxDecoration(
                                                        //               shape: BoxShape
                                                        //                   .circle,
                                                        //             ),
                                                        //             child:
                                                        //                 ClipRRect(
                                                        //               borderRadius:
                                                        //                   BorderRadius.circular(
                                                        //                       16),
                                                        //               child: CachedNetworkImage(
                                                        //                   errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                   progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                         height: 20,
                                                        //                         width: 20,
                                                        //                         child: CircularProgressIndicator(
                                                        //                           value: downloadProgress.progress,
                                                        //                         ),
                                                        //                       ),
                                                        //                   imageUrl: 'https://thumbs.dreamstime.com/b/facebook-icon-logo-white-background-editable-vector-illustration-facebook-icon-logo-141051712.jpg'),
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //     ),
                                                        //     Padding(
                                                        //       padding:
                                                        //           const EdgeInsetsDirectional
                                                        //                   .fromSTEB(
                                                        //               8,
                                                        //               0,
                                                        //               0,
                                                        //               0),
                                                        //       child: Card(
                                                        //         clipBehavior: Clip
                                                        //             .antiAliasWithSaveLayer,
                                                        //         // color: const Color(0xFF090F13),
                                                        //         shape:
                                                        //             RoundedRectangleBorder(
                                                        //           borderRadius:
                                                        //               BorderRadius
                                                        //                   .circular(
                                                        //                       50),
                                                        //         ),
                                                        //         child:
                                                        //             const Padding(
                                                        //           padding: EdgeInsetsDirectional
                                                        //               .fromSTEB(
                                                        //                   18,
                                                        //                   18,
                                                        //                   18,
                                                        //                   18),
                                                        //           child: Icon(
                                                        //             Icons.phone,
                                                        //             // color: Colors.white,
                                                        //             size: 20,
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //     )
                                                        //   ],
                                                        //   mainAxisAlignment:
                                                        //       MainAxisAlignment
                                                        //           .center,
                                                        // )
                                                      ],
                                                    )
                                                  : Column(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () async {
                                                            setState(() {
                                                              _isProcessing =
                                                                  true;
                                                            });

                                                            if (_formKey
                                                                .currentState!
                                                                .validate()) {
                                                              User? user =
                                                                  await FireAuth
                                                                      .signInUsingEmailPassword(
                                                                email:
                                                                    emailTextController
                                                                        .text,
                                                                password:
                                                                    passwordTextController
                                                                        .text,
                                                              );

                                                              setState(() {
                                                                _isProcessing =
                                                                    false;
                                                              });
                                                              if (user !=
                                                                  null) {
                                                                Navigator.of(
                                                                        context)
                                                                    .pushAndRemoveUntil(
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const HomePageWidget(),
                                                                  ),
                                                                  ModalRoute
                                                                      .withName(
                                                                          '/'),
                                                                );
                                                              } else {
                                                                showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: const Text(
                                                                          'Your Sign In failed'),
                                                                      content:
                                                                          const Text(
                                                                              'Please enter your correct password and email again or Sign Up for a new account if you dont have one.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              const Text('Try Again'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              }
                                                            }
                                                          },
                                                          child: const Text(
                                                              'Sign In'),
                                                        ),
                                                        TextButton(
                                                            onPressed: () {
                                                              // setState(() {});
                                                              Share.share(
                                                                  'eddy@techcuttie.com');
                                                            },
                                                            child: const Text(
                                                              'Forgot password',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                        TextButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                isLogin = false;
                                                              });
                                                            },
                                                            child: const Text(
                                                              'Don\'t have an account? \nClick here to create one.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                            )),
                                                        // const Padding(
                                                        //   padding:
                                                        //       EdgeInsetsDirectional
                                                        //           .fromSTEB(0,
                                                        //               10, 0, 0),
                                                        //   child: Text(
                                                        //     'Use a social platform to Login:',
                                                        //     style: TextStyle(
                                                        //       // fontFamily: 'Lexend Deca',
                                                        //       // color: Color(0x98FFFFFF),
                                                        //       fontSize: 14,
                                                        //       fontWeight:
                                                        //           FontWeight
                                                        //               .normal,
                                                        //     ),
                                                        //   ),
                                                        // ),
                                                        // Row(
                                                        //     mainAxisAlignment:
                                                        //         MainAxisAlignment
                                                        //             .center,
                                                        //     children: [
                                                        //       Padding(
                                                        //         padding:
                                                        //             const EdgeInsetsDirectional
                                                        //                     .fromSTEB(
                                                        //                 0,
                                                        //                 0,
                                                        //                 8,
                                                        //                 0),
                                                        //         child: Card(
                                                        //           clipBehavior:
                                                        //               Clip.antiAliasWithSaveLayer,
                                                        //           // color: const Color(0xFF090F13),
                                                        //           elevation: 3,
                                                        //           shape:
                                                        //               RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(
                                                        //                     50),
                                                        //           ),
                                                        //           child:
                                                        //               Padding(
                                                        //             padding:
                                                        //                 const EdgeInsetsDirectional.fromSTEB(
                                                        //                     2,
                                                        //                     2,
                                                        //                     2,
                                                        //                     2),
                                                        //             child:
                                                        //                 Container(
                                                        //               width: 60,
                                                        //               height:
                                                        //                   60,
                                                        //               clipBehavior:
                                                        //                   Clip.antiAlias,
                                                        //               decoration:
                                                        //                   const BoxDecoration(
                                                        //                 shape: BoxShape
                                                        //                     .circle,
                                                        //               ),
                                                        //               child:
                                                        //                   ClipRRect(
                                                        //                 borderRadius:
                                                        //                     BorderRadius.circular(16),
                                                        //                 child: CachedNetworkImage(
                                                        //                     errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                     progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                           height: 20,
                                                        //                           width: 20,
                                                        //                           child: CircularProgressIndicator(
                                                        //                             value: downloadProgress.progress,
                                                        //                           ),
                                                        //                         ),
                                                        //                     imageUrl: 'https://thumbs.dreamstime.com/b/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg'),
                                                        //               ),
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //       Padding(
                                                        //         padding:
                                                        //             const EdgeInsets
                                                        //                     .all(
                                                        //                 8.0),
                                                        //         child: Card(
                                                        //           clipBehavior:
                                                        //               Clip.antiAliasWithSaveLayer,
                                                        //           // color: const Color(0xFF090F13),
                                                        //           shape:
                                                        //               RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(
                                                        //                     50),
                                                        //           ),
                                                        //           child:
                                                        //               Padding(
                                                        //             padding:
                                                        //                 const EdgeInsetsDirectional.fromSTEB(
                                                        //                     2,
                                                        //                     2,
                                                        //                     2,
                                                        //                     2),
                                                        //             child:
                                                        //                 Container(
                                                        //               width: 60,
                                                        //               height:
                                                        //                   60,
                                                        //               clipBehavior:
                                                        //                   Clip.antiAlias,
                                                        //               decoration:
                                                        //                   const BoxDecoration(
                                                        //                 shape: BoxShape
                                                        //                     .circle,
                                                        //               ),
                                                        //               child:
                                                        //                   ClipRRect(
                                                        //                 borderRadius:
                                                        //                     BorderRadius.circular(16),
                                                        //                 child: CachedNetworkImage(
                                                        //                     errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                     progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                           height: 20,
                                                        //                           width: 20,
                                                        //                           child: CircularProgressIndicator(
                                                        //                             value: downloadProgress.progress,
                                                        //                           ),
                                                        //                         ),
                                                        //                     imageUrl: 'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                                                        //               ),
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //       Padding(
                                                        //         padding:
                                                        //             const EdgeInsetsDirectional
                                                        //                     .fromSTEB(
                                                        //                 8,
                                                        //                 0,
                                                        //                 0,
                                                        //                 0),
                                                        //         child: Card(
                                                        //           clipBehavior:
                                                        //               Clip.antiAliasWithSaveLayer,
                                                        //           // color: const Color(0xFF090F13),
                                                        //           shape:
                                                        //               RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(
                                                        //                     50),
                                                        //           ),
                                                        //           child:
                                                        //               Padding(
                                                        //             padding:
                                                        //                 const EdgeInsetsDirectional.fromSTEB(
                                                        //                     2,
                                                        //                     2,
                                                        //                     2,
                                                        //                     2),
                                                        //             child:
                                                        //                 Container(
                                                        //               width: 60,
                                                        //               height:
                                                        //                   60,
                                                        //               clipBehavior:
                                                        //                   Clip.antiAlias,
                                                        //               decoration:
                                                        //                   const BoxDecoration(
                                                        //                 shape: BoxShape
                                                        //                     .circle,
                                                        //               ),
                                                        //               child:
                                                        //                   ClipRRect(
                                                        //                 child: CachedNetworkImage(
                                                        //                     errorWidget: (context, url, error) => const Icon(Icons.error),
                                                        //                     progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
                                                        //                           height: 20,
                                                        //                           width: 20,
                                                        //                           child: CircularProgressIndicator(
                                                        //                             value: downloadProgress.progress,
                                                        //                           ),
                                                        //                         ),
                                                        //                     imageUrl: 'https://thumbs.dreamstime.com/b/facebook-icon-logo-white-background-editable-vector-illustration-facebook-icon-logo-141051712.jpg'),
                                                        //               ),
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        //       Padding(
                                                        //         padding:
                                                        //             const EdgeInsetsDirectional
                                                        //                     .fromSTEB(
                                                        //                 8,
                                                        //                 0,
                                                        //                 0,
                                                        //                 0),
                                                        //         child: Card(
                                                        //           clipBehavior:
                                                        //               Clip.antiAliasWithSaveLayer,
                                                        //           // color: const Color(0xFF090F13),
                                                        //           shape:
                                                        //               RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(
                                                        //                     50),
                                                        //           ),
                                                        //           child:
                                                        //               const Padding(
                                                        //             padding: EdgeInsetsDirectional
                                                        //                 .fromSTEB(
                                                        //                     18,
                                                        //                     18,
                                                        //                     18,
                                                        //                     18),
                                                        //             child: Icon(
                                                        //               Icons
                                                        //                   .phone,
                                                        //               // color: Colors.white,
                                                        //               size: 20,
                                                        //             ),
                                                        //           ),
                                                        //         ),
                                                        //       )
                                                        //     ]),
                                                      ],
                                                    )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                              0, 12, 0, 0),
                                                      child: Container(
                                                        width: 90,
                                                        height: 3,
                                                        decoration:
                                                            BoxDecoration(
                                                          // color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(2),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: SizedBox(
                                                    width: 90,
                                                    height: 3,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                          return Center(
                              child: Column(
                            children: const [
                              SizedBox(
                                height: 200,
                              ),
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator()),
                              Text('Connecting... please wait!')
                            ],
                          ));
                        })),
              ),
            ),
          ),
        ),
      ),
    );
  }

  signInError(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Dismiss"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Sign In Error!"),
      content: const Text(
          "Sorry you do not have an active account, Please Sign Up your new account!."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
