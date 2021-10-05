import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/app_setting_widget.dart';
import 'package:tech_cuttie/pages/blogs_widget.dart';
import 'package:tech_cuttie/pages/more_widget.dart';
import 'package:tech_cuttie/pages/profile_widget.dart';
import 'package:tech_cuttie/pages/search_widget.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tech is just a click if you have the time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'Welcome to Tech Cuttie, a destination for any tech enthusiast. We offer the best articles and information solutions related to computers and how they work.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
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
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Center(
                child: CachedNetworkImage(
                    imageUrl:
                        'https://i0.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-3.png?resize=299%2C169&ssl=1')),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "The website offers classified and personalized information to help users make the most of this time while learning even more than they initially learned. The site has a main blog called Knowledge Base from which a user can view a list of recent articles that have been checked and updated. The posts are organized into categories and tags which help categorize related information. The user can select the different categories they want via a side panel on each page they are on.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
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
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Center(
                child: CachedNetworkImage(
                    imageUrl:
                        'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-6.jpeg?w=310&ssl=1')),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'The platform also offers its users a variety of internal and site-related programs or services. Users can be assured of having the best results and the best delivery of any task they might need help with. A shortlist of services is like this:',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
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
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2. WordPress Full stack website design and Implementation',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '3. Professional Level Content Writing and Copywriting with SEO excellence and compliance',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '4. Microsoft Excel Data analysis and manipulation',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '5. Image Retouching and Editing to suite exceptional Imaging standards',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '6. Tech Consultancy that establishes understanding and promotes achievements',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'However, This is just a simple selection of the benefits that the platform has to offer and it certainly has not yet reached its maximum potential.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
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
                        fontFamily: 'Poppins',
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
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    const BlogsWidget(),
    const SearchWidget(),
    const MoreWidget(),
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: true,
        title: const Center(child: Text('Tech Cuttie')),
        actions:  [
          InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppSettingWidget()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(
                      Icons.settings_sharp,
                      // color: Colors.black,
                      size: 30,
                    ),
                    
                  ],
                ),
              ),const SizedBox(width: 10,),
              
          InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileWidget()));
                },
                child: Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  // ignore: unrelated_type_equality_checks
                  child: Image.asset('assets/images/user_loading.gif'),
                ),
              ),
             const SizedBox(width: 5,)
        ],
        centerTitle: false,
        elevation: 4,
      ),
      // backgroundColor:Color(0xFFF5F5F5),
      // drawer: Drawer(
      //   elevation: 16,
      //   child: Padding(
      //     padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
      //     child: Column(
      //       mainAxisSize: MainAxisSize.max,
      //       children: [
      //         const SizedBox(
      //           height: 40,
      //         ),
              
      //         InkWell(
      //           onTap: () {
      //             launch('https://techcuttie.com');
      //           },
      //           child: Row(
      //             mainAxisSize: MainAxisSize.max,
      //             children: const [
      //               Icon(
      //                 Icons.share_rounded,
      //                 color: Colors.black,
      //                 size: 24,
      //               ),
      //               Padding(
      //                 padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      //                 child: Text(
      //                   'Share',
      //                   style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 5,
      //         ),
              
      //         const SizedBox(
      //           height: 5,
      //         ),
              
      //         const SizedBox(
      //           height: 5,
      //         ),
      //         InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => const LoginSignUpWidget()));
      //           },
      //           child: Row(
      //             mainAxisSize: MainAxisSize.max,
      //             children: const [
      //               Icon(
      //                 Icons.account_circle,
      //                 color: Colors.black,
      //                 size: 24,
      //               ),
      //               Padding(
      //                 padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      //                 child: Text(
      //                   'User Account',
      //                   style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 5,
      //         ),
      //         InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => const WelcomeWidget()));
      //           },
      //           child: Row(
      //             mainAxisSize: MainAxisSize.max,
      //             children: const [
      //               Icon(
      //                 Icons.help_center_rounded,
      //                 color: Colors.black,
      //                 size: 24,
      //               ),
      //               Padding(
      //                 padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      //                 child: Text(
      //                   'Introduction',
      //                   style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 5,
      //         ),
              
      //         const Spacer(),
      //         const Text(
      //           'App version 1.0',
      //           style: TextStyle(
      //             fontFamily: 'Poppins',
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.ballot),
            label: 'Blogs',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.read_more_sharp),
            label: 'More',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
