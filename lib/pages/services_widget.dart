import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/consultancy_widget.dart';
import 'package:tech_cuttie/pages/content_widget.dart';
import 'package:tech_cuttie/pages/development_widget.dart';
import 'package:tech_cuttie/pages/excel_widget.dart';
import 'package:tech_cuttie/pages/retouching.dart';
import 'package:tech_cuttie/pages/web_widget.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<ServicesWidget> {
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
        child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 16, 12, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CachedNetworkImage(
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) => Center(
                                      child: CircularProgressIndicator(
                                        value: downloadProgress.progress,
                                      ),
                                    ),
                            imageUrl:
                                'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-6.jpeg?w=310&ssl=1'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'The platform further offers a variety of in-house and site-linked programs or services to its users. The users can be assured to have the best results and delivery of whatever tasks that they may require help doing. A brief listing of the services is such as:',
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Development()));
              },
              child: const Text('Cross-platform app development')),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WebDesign()));
              },
              child: const Text('Website design and Implementation')),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Content()));
              },
              child: const Text('Content Writing and Copywriting')),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Excel()));
              },
              child: const Text('Excel Data analysis and manipulation')),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Retouching()));
              },
              child: const Text('Image Retouching and Editing')),
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Consultancy()));
              },
              child: const Text('Tech Consultancy')),
        ])),
      )),
    );
  }
}
