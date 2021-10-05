import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tech_cuttie/pages/home_page_widget.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  PageController pageViewController = PageController(initialPage: 0);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF230448),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageViewController,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 20),
                                        child: Image.network(
                                          'https://picsum.photos/seed/825/600',
                                          width: 350,
                                          height: 300,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Search for Books',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Find amazing classic books in our library.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              color: Color(0x99FFFFFF),
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 20),
                                        child: Image.network(
                                          'https://picsum.photos/seed/837/600',
                                          width: 300,
                                          height: 300,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Purchase Books',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              // color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Buy and view all your favorite books you find in this library.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              color: Color(0x99FFFFFF),
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 20, 0, 20),
                                        child: Image.network(
                                          'https://picsum.photos/seed/839/600',
                                          width: 300,
                                          height: 250,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Review Purchases',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              // color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'Keep track of all your purchases that you have made, want to trade books in? Go ahead and list them for exchange.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily: 'Lexend Deca',
                                              color: Color(0xFF82878C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: SmoothPageIndicator(
                              controller: pageViewController,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController.animateToPage(
                                  i,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: const ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 4,
                                dotColor: Color(0x8AC6CAD4),
                                activeDotColor: Colors.white,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const HomePageWidget(),
                          ),
                          ModalRoute.withName('/'),
                        );
                      },
                      child: const Text('Continue'),
                    ),
                    // FFButtonWidget(
                    //   onPressed: () async {
                    //     await Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) =>
                    //             NavBarPage(initialPage: 'HomePage'),
                    //       ),
                    //     );
                    //   },
                    //   text: 'Continue',
                    //   options: FFButtonOptions(
                    //     width: 200,
                    //     height: 50,
                    //     color: const Color(0xFF262D34),
                    //     textStyle:const TextStyle(
                    //       // fontFamily: 'Lexend Deca',
                    //       color:  Color(0xFF39D2C0),
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //     elevation: 2,
                    //     borderSide: const BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1,
                    //     ),
                    //     borderRadius: 8,
                    //   ),
                    // ),
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
