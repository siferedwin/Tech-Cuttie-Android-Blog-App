import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Affiliate extends StatefulWidget {
  const Affiliate({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Affiliate> {
  bool enabled = false;

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
            'Affiliate',
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://i0.wp.com/techcuttie.com/wp-content/uploads/2021/09/affiliate-word-written-wooden-blocks-refferals-marketing-business-concept-207854257-1.jpg?resize=768%2C117&ssl=1',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'Your affiliate link:',
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'https://techcuttie.com/?affiliates=3',
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
                    'Your referrals so far',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              ),
              Container(
                width: 160,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color(0xFF9E9E9E),
                    width: 1,
                  ),
                ),
                child:
                    //  CountController(
                    //   decrementIconBuilder: (enabled) =>
                    Icon(
                  Icons.format_line_spacing_sharp,
                  color: enabled
                      ? const Color(0xFF1D043F)
                      : const Color(0xFFEEEEEE),
                  size: 20,
                ),
                // incrementIconBuilder: (enabled) => Icon(
                //  Icons.add,
                //   color: enabled ? Colors.blue : const Color(0xFFEEEEEE),
                //   size: 20,
                // ),
                // countBuilder: (count) => Text(
                //   count.toString(),
                //   // style: GoogleFonts.getFont(
                //   //   'Roboto',
                //   //   color: Colors.black,
                //   //   fontWeight: FontWeight.w600,
                //   //   fontSize: 16,
                //   // ),
                // ),
                // count: countControllerValue ??= 0,
                // updateCount: (count) =>
                //     setState(() => countControllerValue = count),
                // stepSize: 1,
              )
            ],
          ),
        ))));
  }
}
