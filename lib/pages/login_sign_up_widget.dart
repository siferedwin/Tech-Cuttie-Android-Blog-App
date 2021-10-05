import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tech_cuttie/pages/home_page_widget.dart';
import 'package:tech_cuttie/pages/welcome_widget.dart';
import 'package:tech_cuttie/utils/fire_auth.dart';
import 'package:tech_cuttie/utils/validator.dart';

class LoginSignUpWidget extends StatefulWidget {
  const LoginSignUpWidget({Key? key}) : super(key: key);

  @override
  _LoginSignUpWidgetState createState() => _LoginSignUpWidgetState();
}

class _LoginSignUpWidgetState extends State<LoginSignUpWidget> {
  final _formKey = GlobalKey<FormState>();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  // ignore: unused_field
  bool _isProcessing = false;
  bool passwordVisibility = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: ThemeSwitchingArea(
        child: Scaffold(
          body: Scrollbar(
            child: SingleChildScrollView(
              child: FutureBuilder(
                future: _initializeFirebase(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: const BoxDecoration(
                                  // color: Color(0xFF4B39EF),
                                  // image: DecorationImage(
                                  //   fit: BoxFit.fitWidth,
                                  //   image:
                                  //   Image.network(
                                  //     'https://picsum.photos/seed/835/600',
                                  //   ).image,
                                  // ),
                                  ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 70, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CachedNetworkImage(
                                              imageUrl:
                                                  'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/cropped-Tech-Cuttie-2-2.png?fit=150%2C150&ssl=1')
                                        ],
                                      ),
                                    ),
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20, 20, 20, 0),
                                            child: TextFormField(
                                              controller: _emailTextController,
                                              obscureText: false,
                                              focusNode: _focusEmail,
                                              validator: (value) =>
                                                  Validator.validateEmail(
                                                email: value,
                                              ),
                                              decoration: InputDecoration(
                                                // labelText: 'Email Address',
                                                labelStyle: const TextStyle(
                                                  // fontFamily: 'Lexend Deca',
                                                  color: Color(0x980BA8A0),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText: 'Enter your email...',
                                                hintStyle: const TextStyle(
                                                  // fontFamily: 'Lexend Deca',
                                                  color: Color(0x98FFFFFF),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFF4334C9),
                                                prefixIcon:
                                                    const Icon(Icons.email_rounded),
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(20, 24, 20, 24),
                                              ),
                                              style: const TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 12, 20, 0),
                                      child: TextFormField(
                                        controller: _passwordTextController,
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
                                            color: Color(0x98FFFFFF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          hintText: 'Enter your password...',
                                          hintStyle: const TextStyle(
                                            // fontFamily: 'Lexend Deca',
                                            color: Color(0x98FFFFFF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF3D30B4),
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
                                          20, 0, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () async {
                                                  _focusEmail.unfocus();
                                                  _focusPassword.unfocus();
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    setState(() {
                                                      _isProcessing = true;
                                                    });
                                                    User? user = await FireAuth
                                                        .signInUsingEmailPassword(
                                                      email:
                                                          _emailTextController.text,
                                                      password:
                                                          _passwordTextController
                                                              .text,
                                                    );
                                                    setState(() {
                                                      _isProcessing = false;
                                                    });
                                                    if (user != null) {
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const HomePageWidget(),
                                                        ),
                                                      );
                                                    }
                                                    // else {
                                                    //   AlertDialog(
                                                    //     title: const Text(
                                                    //         "Sign In Error!"),
                                                    //     content: const Text(
                                                    //         "Sorry you do not have an active account, Please Sign Up your new account!."),
                                                    //     actions: [
                                                    //       TextButton(
                                                    //         child: const Text(
                                                    //             "Dismiss"),
                                                    //         onPressed: () {
                                                    //           Navigator.pop(
                                                    //               context);
                                                    //         },
                                                    //       )
                                                    //     ],
                                                    //   );
                                                    // }
                                                  }
                                                },
                                                child: const Text('Sign In'),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: Container(
                                                  width: 90,
                                                  height: 3,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(2),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () async {
                                                  // _register();
          
                                                  setState(() {
                                                    _isProcessing = true;
                                                  });
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    User? user = await FireAuth
                                                        .registerUsingEmailPassword(
                                                      name: 'user',
                                                      email:
                                                          _emailTextController.text,
                                                      password:
                                                          _passwordTextController
                                                              .text,
                                                    );
                                                    setState(() {
                                                      _isProcessing = false;
                                                    });
                                                    if (user != null) {
                                                      Navigator.of(context)
                                                          .pushAndRemoveUntil(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const WelcomeWidget(),
                                                        ),
                                                        ModalRoute.withName('/'),
                                                      );
                                                    }
                                                  }
                                                },
                                                child: const Text('Sign Up'),
                                              ),
                                              // FFButtonWidget(
                                              //   onPressed: () {
                                              //     // ignore: avoid_print
                                              //     // print('SignUp pressed ...');
                                              //   },
                                              //   text: 'Sign Up',
                                              //   options: FFButtonOptions(
                                              //     width: 100,
                                              //     height: 50,
                                              //     color: const Color(0x004B39EF),
                                              //     textStyle: const TextStyle(
                                              //       // fontFamily: 'Lexend Deca',
                                              //       color: Color(0x98FFFFFF),
                                              //       fontSize: 18,
                                              //       fontWeight: FontWeight.bold,
                                              //     ),
                                              //     borderSide: const BorderSide(
                                              //       color: Colors.transparent,
                                              //       width: 1,
                                              //     ),
                                              //     borderRadius: 12,
                                              //   ),
                                              // ),
                                              const Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        0, 12, 0, 0),
                                                child: SizedBox(
                                                  width: 90,
                                                  height: 3,
                                                  // decoration: BoxDecoration(
                                                  //   color: const Color(0xFFFFFFFF),
                                                  //   borderRadius:
                                                  //       BorderRadius.circular(2),
                                                  // ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: ElevatedButton(
                                        onPressed: () async {},
                                        child: const Text('Forgot Password'),
                                      ),
                                      // FFButtonWidget(
                                      //   onPressed: () {
                                      //     // ignore: avoid_print
                                      //     // print('Button-ForgotPassword pressed ...');
                                      //   },
                                      //   text: 'Forgot Password?',
                                      //   options: FFButtonOptions(
                                      //     width: 170,
                                      //     height: 40,
                                      //     color: const Color(0xFF4B39EF),
                                      //     textStyle: const TextStyle(
                                      //       // fontFamily: 'Lexend Deca',
                                      //       color: Colors.white,
                                      //       fontSize: 16,
                                      //       fontWeight: FontWeight.w500,
                                      //     ),
                                      //     elevation: 0,
                                      //     borderSide: const BorderSide(
                                      //       color: Colors.transparent,
                                      //       width: 1,
                                      //     ),
                                      //     borderRadius: 8,
                                      //   ),
                                      // ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 12, 0, 0),
                                            child: Text(
                                              'Here are other ways to Login:',
                                              style: TextStyle(
                                                // fontFamily: 'Lexend Deca',
                                                // color: Color(0x98FFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 16, 20, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 8, 0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: const Color(0xFF090F13),
                                              elevation: 3,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(2, 2, 2, 2),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CachedNetworkImage(
                                                      imageUrl:
                                                          'https://thumbs.dreamstime.com/b/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg'),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: const Color(0xFF090F13),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CachedNetworkImage(
                                                    imageUrl:
                                                        'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 0, 0, 0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: const Color(0xFF090F13),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(2, 2, 2, 2),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CachedNetworkImage(
                                                      imageUrl:
                                                          'https://thumbs.dreamstime.com/b/facebook-icon-logo-white-background-editable-vector-illustration-facebook-icon-logo-141051712.jpg'),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 0, 0, 0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: const Color(0xFF090F13),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        18, 18, 18, 18),
                                                child: Icon(
                                                  Icons.phone,
                                                  color: Colors.white,
                                                  size: 20,
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
                            )
                          ],
                        )
                      ],
                    );
                  }
          
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
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
