import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_cuttie/pages/add_blog_widget.dart';
import 'package:tech_cuttie/pages/blogs_widget.dart';
import 'package:tech_cuttie/pages/more_widget.dart';
import 'package:tech_cuttie/pages/search_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _currentIndex = 0;
  final String id = FirebaseAuth.instance.currentUser!.uid;
  CollectionReference loggedUser =
      FirebaseFirestore.instance.collection("TechCuttieUsers");
  String imageUrl = '';
  final List<Widget> _children = [
    Scrollbar(
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tech is just a click if you have the time',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.lobster().fontFamily,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Text(
              'Welcome to Tech Cuttie, a destination for any tech enthusiast. We offer the best articles and information solutions related to computers and how they work.',
              textAlign: TextAlign.start,
              style: TextStyle(
                  // fontFamily: 'Poppins',
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Here Is Our Platform Structure',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Poppins',
              ),
            ),
          ),
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
                errorWidget: (context, url, error) => const Icon(Icons.error),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                    ),
                imageUrl:
                    'https://i0.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-3.png?resize=299%2C169&ssl=1'),
          )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "The website offers classified and personalized information to help users make the most of this time while learning even more than they initially learned. The site has a main blog called Knowledge Base from which a user can view a list of recent articles that have been checked and updated. The posts are organized into categories and tags which help categorize related information. The user can select the different categories they want via a side panel on each page they are on.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  // fontFamily: 'Poppins',
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'We Offer These Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Poppins',
              ),
            ),
          ),
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
                errorWidget: (context, url, error) => const Icon(Icons.error),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                      ),
                    ),
                imageUrl:
                    'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-6.jpeg?w=310&ssl=1'),
          )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'The platform also offers its users a variety of internal and site-related programs or services. Users can be assured of having the best results and the best delivery of any task they might need help with. A shortlist of services is like this:',
              textAlign: TextAlign.start,
              style: TextStyle(
                  // fontFamily: 'Poppins',
                  ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '1. Cross-platform app development (Using the Flutter & Dart Framework)',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '2. WordPress Full stack website design and Implementation',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '3. Professional Level Content Writing and Copywriting with SEO excellence and compliance',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '4. Microsoft Excel Data analysis and manipulation',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '5. Image Retouching and Editing to suite exceptional Imaging standards',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '6. Tech Consultancy that establishes understanding and promotes achievements',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'However, This is just a simple selection of the benefits that the platform has to offer and it certainly has not yet reached its maximum potential.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'You Can Help Us Grow',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'The Tech Cuttie platform has just started. This means that we appreciate your support to share our platform with your friends, colleagues, and family. We have set up the Affiliate Page where you can invite other interested students to come and enjoy the best of this platform.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontFamily: 'Poppins',
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    const Center(child: BlogsWidget()),
    const SearchWidget(),
    const MoreWidget(),
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Center(
          child: Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              // backgroundColor: Colors.deepPurple,
              // automaticallyImplyLeading: true,
              title: Center(
                  child: Text(
                'Tech Cuttie',
                style: GoogleFonts.lobster(
                    fontSize: 42, fontWeight: FontWeight.bold),
              )),
              actions: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const WelcomeWidget()));
                    showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Need Help?'),
                          content: const Text(
                              'Click on the more page to view other features.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: const Text('Alright'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Admin Only'),
                                content: const Text(''),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AddBlogWidget())),
                                    child: const Text(
                                      'Ok',
                                      style:
                                          TextStyle(color: Colors.transparent),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Need Help?'),
                                content: const Text(
                                    'Click on the more page to view other features.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Alright'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.help_rounded,
                          // color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // InkWell(
                //   onTap: () {
                //     if (FirebaseAuth.instance.currentUser == null) {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const LoginSignUpWidget()));
                //     } else {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   const Center(child: ProfileWidget())));
                //     }
                //   },
                //   child: isReady == false
                //       ? FutureBuilder<DocumentSnapshot>(
                //           future: loggedUser.doc(id).get(),
                //           builder: (BuildContext context,
                //               AsyncSnapshot<DocumentSnapshot> snapshot) {
                //             if (snapshot.hasError) {
                //               return const Text("`");
                //             }
                //             if (snapshot.hasData && !snapshot.data!.exists) {
                //               return const Text('\'');
                //             }
                //             if (snapshot.connectionState ==
                //                 ConnectionState.done) {
                //               Map<String, dynamic> data =
                //                   snapshot.data!.data() as Map<String, dynamic>;
                //               imageUrl = "${data['pic_link']}";
                //               return Padding(
                //                 padding: const EdgeInsets.only(bottom: 5),
                //                 child: Container(
                //                   // width: 100,
                //                   // height: 100,
                //                   clipBehavior: Clip.antiAlias,
                //                   decoration: const BoxDecoration(
                //                     shape: BoxShape.circle,
                //                   ),
                //                   // ignore: unrelated_type_equality_checks
                //                   child: imageUrl != ''
                //                       ? ClipRRect(
                //                           borderRadius:
                //                               BorderRadius.circular(16),
                //                           child: CachedNetworkImage(
                //                               errorWidget:
                //                                   (context, url, error) =>
                //                                       const Icon(Icons.error),
                //                               progressIndicatorBuilder:
                //                                   (context, url,
                //                                           downloadProgress) =>
                //                                       SizedBox(
                //                                         height: 20,
                //                                         width: 20,
                //                                         child: Padding(
                //                                           padding:
                //                                               const EdgeInsets
                //                                                       .symmetric(
                //                                                   horizontal:
                //                                                       10,
                //                                                   vertical: 5),
                //                                           child:
                //                                               CircularProgressIndicator(
                //                                             value:
                //                                                 downloadProgress
                //                                                     .progress,
                //                                           ),
                //                                         ),
                //                                       ),
                //                               imageUrl: imageUrl),
                //                         )
                //                       : ClipRRect(
                //                           borderRadius:
                //                               BorderRadius.circular(16),
                //                           child: Image.asset(
                //                               'assets/images/user_loading.gif')),
                //                 ),
                //               );
                //             }
                //             return const Center(
                //               child: SizedBox(
                //                   height: 20,
                //                   width: 20,
                //                   child: Padding(
                //                     padding: EdgeInsets.symmetric(
                //                         horizontal: 10, vertical: 5),
                //                     child: CircularProgressIndicator(),
                //                   )),
                //             );
                //           })
                //       : const SizedBox(width: 10, height: 10),
                // ),

                const SizedBox(
                  width: 5,
                )
              ],
              centerTitle: true,
              elevation: 4,
            ),
            body: Center(child: _children[_currentIndex]),
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              // backgroundColor: Colors.deepPurple,
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,

              currentIndex:
                  _currentIndex, // this will be set when a new tab is tapped
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                    activeIcon: Icon(Icons.home_rounded)),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.ballot_outlined),
                    label: 'Blog',
                    activeIcon: Icon(Icons.ballot_rounded)),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined),
                    label: 'Search',
                    activeIcon: Icon(Icons.search_rounded)),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.chrome_reader_mode_outlined),
                    label: 'More',
                    activeIcon: Icon(Icons.chrome_reader_mode_rounded)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
