import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WebDesign extends StatefulWidget {
  const WebDesign({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<WebDesign> {
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
          'WebDesign',
          style: TextStyle(
            // fontFamily: 'Lexend Deca',
            // color: Color(0xFF151B1E),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0,
      ),
      // backgroundColor: const Color(0xFFF1F4F8),
      body: SafeArea(
          child: Scrollbar(
        child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  // color: Color(0x39000000),
                  offset: Offset(0, 1),
                )
              ],
            ),
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
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                      value: downloadProgress.progress,
                                    ),
                            imageUrl:
                                'https://i0.wp.com/techcuttie.com/wp-content/uploads/2021/10/image.jpeg?resize=300%2C168&ssl=1'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ])),
      )),
    );
  }
}
