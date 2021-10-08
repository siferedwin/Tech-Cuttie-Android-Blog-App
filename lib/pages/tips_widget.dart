import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Tips> {
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
          'Tips & Donations',
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
              child: CachedNetworkImage(
                imageUrl:
                    'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-5.png?w=225&ssl=1',
                fit: BoxFit.contain,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'It takes a lot of effort to be consistent and as perfect as possible. We appreciate any kind of encouragement you want to give us. Here at Tech Cuttie, we are family and we take care of each other with any support.\n\nDo not hesitate to submit your contributions by the following means:',
                // style: FlutterFlowTheme.bodyText1.override(
                //   fontFamily: 'Poppins',
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://i2.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-6.png?w=318&ssl=1',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'Paypal email: edwinsifer00@gmail.com',
                // style: FlutterFlowTheme.bodyText1.override(
                //   fontFamily: 'Poppins',
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-9-edited.jpeg?resize=768%2C554&ssl=1',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'Bitcoin wallet address: 35jJStKS4jTkp8Em4JxUkhnyFsYp26Xsch',
                // style: FlutterFlowTheme.bodyText1.override(
                //   fontFamily: 'Poppins',
                // ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
