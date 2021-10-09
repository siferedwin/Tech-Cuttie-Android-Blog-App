import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<ServicesWidget> {
  PageController pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.transparent,
          // borderRadius: 30,
          // buttonSize: 46,
          icon: const Icon(
            Icons.arrow_back_rounded,
            // color: Color(0xFF95A1AC),
            // size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Services',
          style: TextStyle(
              // fontFamily: 'Lexend Deca',
              // color: Color(0xFF151B1E),
              // fontSize: 18,
              // fontWeight: FontWeight.w500,
              ),
        ),
        actions: const [],
        // centerTitle: false,
        elevation: 0,
      ),
      // backgroundColor: const Color(0xFFF1F4F8),
      body: SafeArea(
          child: Scrollbar(
              child:
                  // Generated code for this Container Widget...
                  Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: PageView(
                    controller: pageViewController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-6.jpeg?w=310&ssl=1',
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Text(
                              'The platform further offers a variety of in-house and site-linked programs or services to its users. The users can be assured to have the best results and delivery of whatever tasks that they may require help doing. A brief listing of the services is such as:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(3);
                            },
                            child: const ListTile(
                              title: Text(
                                'Software Programming',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Cross-platform app development (Using the Flutter & Dart Framework)',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(8);
                            },
                            child: const ListTile(
                              title: Text(
                                'Web Development',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'WordPress Full stack website design and Implementation',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(1);
                            },
                            child: const ListTile(
                              title: Text(
                                'Advertising & Marketing',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Get an affordable means of communicating with your consumers through our platform.',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(2);
                            },
                            child: const ListTile(
                              title: Text(
                                'CopyWriting',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Professional Level Content Writing and Copywriting with SEO excellence and compliance',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(4);
                            },
                            child: const ListTile(
                              title: Text(
                                'Statistical Analysis',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Microsoft Excel Data analysis and manipulation',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // colorconst : Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(6);
                            },
                            child: const ListTile(
                              title: Text(
                                'Powerpoint Presentations',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Get first inline when projecting your ideas and project prsentations through the uniquely satisfying presentations that we help you build.',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(5);
                            },
                            child: const ListTile(
                              title: Text(
                                'Image editing',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Image Retouching and Editing to suite exceptional Imaging standards',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageViewController.jumpToPage(7);
                            },
                            child: const ListTile(
                              title: Text(
                                'Tech Consultancy',
                                // style: FlutterFlowTheme.title3.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              subtitle: Text(
                                'Tech Consultancy get informative direction for any project of your choices whe implementing different kinds of systems.',
                                // style: FlutterFlowTheme.subtitle2.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                // color: Color(0xFF1D043F),
                                size: 20,
                              ),
                              // tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image.webp?resize=768%2C768&ssl=1',
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'You will never go wrong when you easily serve your customers through online marketing. Tech Cuttie offers its users a quick and easy way to stay informed and aligned with their needs and customer needs. We enable our users to run their ads on our platform with an affordable premium subscription to help our users grow their business as well.\n\nWell, if you are interested, contact us here to post your listings.\n\nWe’re here to help you find a way to market your business with a digital marketing strategy that works.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Marketing Strategy',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'If you don’t get the results you want. We will analyze the market and the marketing performance of your company. Let’s develop a digital strategy adapted to a specific objective. We’re talking about the online marketing channels that work best for you, such as social media. , SEO, email, content, sales funnels.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Marketing Plan',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'It is a comprehensive marketing strategy with an action plan that guides you step by step through the marketing process. Includes a guide on how to work with each tactic.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Marketing Plan and Audit',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'You get the complete guide. Ideal for established businesses.\n\nIndustry\nEducation\nFinancial Services\nLifestyle\nServices\nTechnology\nStrategy Purpose\nProduct Launch\nGrowth / Scale\nBusiness Stage\nStartup\nSmall Business\nMedium Business\nLarge Business\nBusiness Type\nB2B\nB2C\nThe right content for the right audience on the right platform so your message inspires recipients to take action, and you get the right indicators for growth.\n\nMy campaign planning offers you:\n\n– The campaign goal and objective \n\n– The campaign proposition, mix, and messaging\n\n– The creative big idea\n\n – The campaign phasing/timing\n\n – The campaign asset list – recommendations for ads, videos, posts.\n\n– Copy and layout recommendations for social media posts, Google Ads, Facebook ads, website pages, Instagram ads, and stories.\n\n– Competition mechanics (as required)\n\n – Launch and brand credibility video concepts, scripts, and recommendations for visuals. \n\n– Activation Ideas you can use to seriously amplify your message.\n\n– Budget recommendations \n\nIf you’re launching a new service or product or expanding your reach into new verticals or demographics, talk to me! I look forward to working with you.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i0.wp.com/www.ignytebrands.com/wp-content/uploads/the-power-of-copywriting-ignyte-branding-agency.jpg?w=740&ssl=1',
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(-0.1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'CopyWriting',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Copywriting is the act or occupation of writing the text for the purpose of advertising or other types of sales. Merchandise, called copy or sales copy, is written content that aims to spread full awareness and ultimately persuade someone or a group to ask for a specific action.\n\nYour website is the window to your business; capture your visitors and get them to read so that they take the action you want them to take. Buy your product or service, subscribe to your mailing list, subscribe to your newsletter, and much more! To do this, you need a professional copywriter who understands what it takes and has been doing it successfully for years. When it comes to your business, there is no room for amateur writers. You need a real PRO! And you have one with this highly skilled writer and salesperson.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Facts:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'You need your message told in a way that attracts your ideal audience.\nYou work hard to get clients who know, like and trust you.\nHere’s your chance to let someone else write HIGH CONVERTING copy for you!',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Copywriting to Sell Your:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Books\nProducts/Services\nCoaching/Mastermind\nWebsite\nMore',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Text(
                            'Why should you work with me and my team? \n\nBecause we are cool to work with. Having more than one pro working on your project gives you more creative options.\n\nLet us create the perfect design for your social media to ensure growth.\n\nOur packages were designed so that you can get an optimized engagement rate with your community.\n\nLanguage\nEnglish',
                            // style: FlutterFlowTheme.bodyText1.override(
                            //   fontFamily: 'Poppins',
                            // ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-2.jpeg?resize=768%2C432&ssl=1',
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Cross-Platform Flutter App Development',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Mobile App:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Mobile applications have changed the dynamics of a business. Interact with your customers and create a direct marketing channel. Increase, add value to your business, and always be connected and visible to your customers.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Our Expertise',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'With an experience of 15+ years, we have developed numerous apps such as:\n\nOn-Demand Apps\nFood Delivery / Table Reservation Apps\nSocial Networking / Dating Apps\nChatting Applications\nReal Estate Apps\nOnline Music Apps\nAppointment Booking Apps\nTravel & Entertainment Apps\nMap Based Apps\nEducation / Online Tutoring Apps\nGift Cards / Loyalty Cards Apps\nInspection Service Platform, and a lot more …',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Our Development Process',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Collect & Analyze Client Requirements\nWireframing App Flow\nApp Designs\nApp Development\nQA & Testing\nMaintenance & Support',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'All Packages Include:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'A thorough requirements analysis\nFREE UI elements\nAPI Integration\nFirebase push notifications\nApp Crash Report (With Firebase)\nAppStore and Google Play submission',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Work Process:',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Research: Gathering Information\nPlan: Executing Effective Strategies\nDesign: Prototyping/Designing of the requirements\nDevelop: Adding LIFE into static Prototypes\nTest & Deliver: Launching the Project\nMaintenance: You need to keep it running and adopt the new changes',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Platform\niOS & Android (Dual)\nWeb\nWindows\nApp Type\nHybrid\nDevelopment Technology\nFlutter & Dart Framework\nPurpose\nChat\nDelivery\nMusic\nRestaurant\nShopping\nTaxi\nBooking\nSocial Networking\nMaps & Navigation\nEducation\nExpertise\nCross Browser/Device Compatibility\nPerformance\nSecurity\nDesign\nData Storage\nFirebase',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-2.png?resize=768%2C409&ssl=1',
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Statistical Analysis',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Excel Data Design and Analytics',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Microsoft Excel is a spreadsheet developed by Microsoft that is used by many companies to automate day-to-day processes such as managing employee data, financial data, debit sheets, data analysis, and much more. You will be amazed how much help you can get from me even after the job is done. You can still contact me and I will always get back to you very quickly.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Salient Features',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Fast and Accurate Work\nConfidentiality\nVideo Explanation of Work and After Sales Services\nWe have 10+ years of experience in Microsoft Office. We will deliver our work as soon as possible with 100% Satisfaction Guaranteed and will always be there for your queries.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-3.jpeg?resize=275%2C183&ssl=1',
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Image Editing',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Image Retouch and Editing',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'It all starts with an idea. The final work is only part of your experience here at Tech Cuttie. Here we work transparently to guide you through the imaging process. To help you find ideas for composites or the color palette for your brand.\n\nYou can rest easy knowing that your work will receive the utmost care, attention, and attention to detail. The goal of our company is transparency and personal communication. We believe this is the only way to consistently create perfect images. Product photos are one of the most important factors in producing a business that converts. Without eye-catching photography, the chances of making a sale are greatly reduced. As a reseller, you should consider investing in images that show the products in their most striking light and give your brand an overall air of professionalism.\n\nPremium retouching is the photo editing process to enhance, enhance, and elevate your images. Whether in texture or color, our premium retouching will provide the perfect techniques to ensure image and brand satisfaction. Using Adobe Photoshop’s color correction methods, your images will receive the best attention to detail they deserve. All colors and materials will appear as true to your vision or that of your client as possible.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Our retouch services include',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Changing Product Background to pure white\nCleaning up the image and background\nFixing the texture and shape of the photo\nChanging the colors of the product\nAdding dimention and shadows to the image\nEnlargement and resizing of the photo\nColor correction and brightness/contrast adjustments',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Let’s enhance your product photos in a professional way and boost your sales with stunning visuals!\n\nWe can elevate all brand imagery to the next level. Our vast range of commercial experience in photography will ensure your products stand out above the rest.\n\nEditing Type\nRetouching & Enhancement\nFile Format\nJPEG\nPDF\nPNG\nPSD\nRAW\nTIFF',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i0.wp.com/www.designfreelogoonline.com/wp-content/uploads/2018/09/How-to-create-a-winning-Power-Point-presentation.jpg?resize=494%2C333',
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Powerpoint Presentations Design',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Powerpoint Presentations Design',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'PowerPoint Tips: Simple Rules for Better PowerPoint Presentations',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Don’t read your presentation straight from the slides. …\nFollow the 5/5/5 rule. …\nDon’t forget your audience. …\nChoose readable colors and fonts. …\nDon’t overload your presentation with animations. …\nUse animations sparingly to enhance your presentation.',
                              textAlign: TextAlign.start,
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Here are some key details to note',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Service Type\nFull Presentation Design\nPurpose\nInvestor Pitch/Fundraising\nSales\nBusiness Proposal\nPresentation Software\nPower Point\nKeynote\nIndustry\nBusiness Services & Consulting\nFinancial Services\nMarketing & Advertising\nRetail & Wholesale\nLanguage\nEnglish\nImage File Format\nPDF\nPNG\nPPT\nKEY',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'What We can offer',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Branded Identity Template\nBusiness Presentation\nMarketing Presentation\nTraining Presentation\nListings Presentation\nCompany Pitch\nPortfolio\nInvestor Deck, etc.\n\nAs a final delivery, We provide fully editable PowerPoint/Google Slides and PDF. We create a unique design based on your company branding.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'To start working on your project We need to know the following information',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Project description\nContent – text, images, logo etc.\nCompany website or any marketing materials to see the brand style\nReferences (if you have any)',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-5.jpeg?resize=768%2C432&ssl=1',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Tech Consultancy',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Information technology consulting is an area of ​​business that focuses on advising organizations on how best to use information technology to achieve their business goals. , these transformations are geared towards increasing business processes, lowering prices, increasing employment opportunities in schools, etc. increasingly vital for the long-term growth of organizations on a global scale.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Consultation: In this package, We offer our expertise and industry know-how to help you in your tech journey.\n\nProcess improvement\nOrg structuring\nTechnical discussions\nStartup consultation\nSaaS strategy\nProject guidance',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Architecture: With this package, We will understand your idea, align with your vision, and develop the most creative, cost-effective, scalable design, stack & data models for your app.\n\nAdvance principles\nServerless architectures\nMicroservices\nWeb & mobile\nHybrid customizations\nSecurity',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Lead Engineer: In this package, We offer my skills as a seasoned developer to manage your development project. Some of the services offered in this category are:\n\nInterviewing candidates for software engineering roles.\nPlanning and strategizing the actual development.\nDo regular standups.\nCode reviews.\nDevelopment guidance.\nFramework and library research.\nBoilerplate',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'What We could offer',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Discuss your project/idea and provide practical tech solutions\nHelp you make clean and actionable project requirements/scope of work from your ideas\nBe your project manager to manage the whole development process to ensure high quality and in-time delivery.\nPlease don’t hesitate to contact us. We always believe that sharing a great idea is worth sharing and that sharing will make the idea stronger. A global shock wave of technology-induced transformation could develop in the years to come. an essentially completely different approach to setting up and managing technology, one more suited to the changing reality of today’s business landscape.\n\nAnticipating and preparing for this shockwave requires industry-specific advice and information. Our technology strategy and consulting services make it easy to reinvent organizations and create business value through resilient industry-specific technology architectures, as well as efficient and versatile cloud and information solutions. The result? Discover monetary resources that will fund additional school investments and create an associated growth engine.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                ),
                              ),
                              imageUrl:
                                  'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/webdesign-development.jpg?w=726&ssl=1',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Website Design & Development',
                                // style: FlutterFlowTheme.bodyText1.override(
                                //   fontFamily: 'Poppins',
                                // ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'In today‘s business market, especially in the post–covid world, every business needs a professional web presence in the form of a website. A professionally designed website that monitors your business needs and can effectively convey your brand/business message to the target market is everyone’s main goal. With over 8 years of experience working with Alist clients, We will help you build professionally designed websites in WordPress (Woocommerce, Elementor, DIVI), Wix, and Squarespace with clean custom themes and designs. and modern.',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'We can help you with',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Creating top-notch, distinct & creative website designs in WordPress (Woocommerce, Elementor, DIVI), Wix & Squarespace\nCreating a visual hierarchy using the right elements according to your business model & target audience, without making it complex or confusing.\nIMPORTANT!!! PLUGINS, THEMES & STOCK IMAGES/VIDEOS ARE NOT INCLUDED IN THE PACKAGES SCOPE & COST, BUYER NEED TO PROVIDE/PURCHASE THEM',
                              //   style: FlutterFlowTheme.bodyText1.override(
                              //     fontFamily: 'Poppins',
                              //   ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'NOTE',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'CUSTOM WEB DEVELOPMENT OPTION AVAILABLE (ON EXTRA COST)\nTHE PRICE MENTIONED IS JUST FOR DESIGN\nPLEASE DISCUSS THE PROJECT IF YOU ARE GOING FOR DESIGN+CUSTOM DEVELOPMENT OPTION\nWebsite Type\nE-Commerce\nOther\nPlatform and Tool\nWordPress\nWix\nSquarespace\nSpecialization\nBlog\nBusiness\nEducation \nPortfolio\nEntertainment\nNon-profit\nWedding\nPodcasting\nOnline Communities\nForms \nCrowdfunding\nWiki /Knowledge\nSaaS\nJob Board\nPortal\nBrochure\nSupported plugin types\nMarketing\nPayment\nForum\nSocial Media\nCustomer Support\nShipping\nInventory\nAnalytics\nVideo\nForm\nEvents\nMusic\nChat\nMembership\nMap\nFAQ\nGallery\nIntegrating Plugins\nAdsense\nAkismet\nAll in One SEO Pack\nAmazon\nAweber\nClickbank\nContact Form 7\nFacebook\nGetresponse\nGravity Forms\nInstagram\nLinkedIn\nMailchimp\nOpenCart\nPaypal\nTwitter\nVimeo\nW3 Total Cache\nWooCommerce\nWordPress SEO by Yoast\nYoutube\nElementor',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'PAGES LIST',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Home\nAll property listing grid\nCategory listing grid\nSearch result listing grid\nAgent single pages\nProperty single pages\n1 DEMO property (reusable to upload new property)\nAbout us\nContact\nLatest news\nCategory archive\nSearch result archive\nSingle post\n404',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'WHAT IS INCLUDED',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Unique Design \nPremium plugins installation and Setup\nFast load time\nElementor Pro\nSEO friendly',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'WHAT ARE THE OPTIONS',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Agent & Property single pages and catalogs design\nMap Listing and marker solutions\nListing Grids & Layouts\nAdvanced AJAX filters & Search engine\nSingle post template design\nArchive templates design\nCustom meta fields\nCustom Post Types\nDynamic Repeater groups\nDifferent Taxonomy types',
                              // style: FlutterFlowTheme.bodyText1.override(
                              //   fontFamily: 'Poppins',
                              // ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: SmoothPageIndicator(
                      controller: pageViewController,
                      count: 9,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) {
                        pageViewController.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: const ExpandingDotsEffect(
                        expansionFactor: 3,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF8346EC),
                        activeDotColor: Color(0xFF290558),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ))),
    );
  }
}
