import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<About> {
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
              size: 24,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'About',
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0,
        ),
        // backgroundColor: const Color(0xFFF1F4F8),
        body: SafeArea(
            child:
                // Generated code for this ListView Widget...
                Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://i0.wp.com/awordjourneytranslation.com/wp-content/uploads/2018/10/certified-translation-services-company.png?w=740',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Our Mission',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'Leading our audience through an undeniably complicated advanced world by adapting innovation and sifting through the hustle and bustle.',
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'About Tech Cuttie',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'Tech Cuttie, the world’s leading independent technology publisher, is a renowned and comprehensive multimedia system from Associate in informatics that guides customers to the simplest products and services on the market today – and discovers the innovations that will shape their lives.\n\nWe merge the life of tomorrow, become a school for the ways you live: not just gadgets, but the powers they unleash in your life, the story of who created them, and also the ways they reshape the world outside your window. Tech Cuttie filters the diversity of devices and innovations surrounding the nations of the world through the lens of someone who elevates the experience above specs, hype, and sales. The rapid pace of the amendment creates oral communication that is always participatory, fun, and difficult. You don’t have time to become a tech expert, however, we’ll help you want to be like one even before you know it.',
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                ),
              )
            ],
          ),
        )));
  }
}
