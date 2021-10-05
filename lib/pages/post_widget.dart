import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late String dropDownValue1;
  late String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   leading: Icon(
      //     Icons.arrow_back_rounded,
      //     color: Colors.black,
      //     size: 24,
      //   ),
      //   title: Text(
      //     'Product Name',
      //     style: TextStyle.subtitle1.override(
      //       // fontFamily: 'Lexend Deca',
      //       color: Color(0xFF151B1E),
      //       fontSize: 18,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   actions: [],
      //   centerTitle: false,
      //   elevation: 0,
      // ),

      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 90),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'http://picture-cdn.wheretoget.it/w9ts01-i.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          '[Product Name]',
                          style: TextStyle(
                            // fontFamily: 'Lexend Deca',
                            color: Color(0xFF151B1E),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          '[\$0.00]',
                          style: TextStyle(
                            // fontFamily: 'Lexend Deca',
                            color: Color(0xFF8B97A2),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        // ignore: prefer_const_constructors
                        Expanded(
                          child: Text(
                            'A VINTAGE-LOOK JACKET CRAFTED FOR STYLE OFF THE FIELD.',
                            style: TextStyle(
                              // fontFamily: 'Lexend Deca',
                              color: Color(0xFF151B1E),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Expanded(
                          child: Text(
                            'Sporty style from the archives inspires this iconic track top. A stand-up collar and the signature sheen of tricot give it a retro vibe. Made for relaxing between sessions, the full-zip jacket has a recycled polyester build.',
                            style: TextStyle(
                              // fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 1),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: const BoxDecoration(
                    color: Color(0xFF090F13),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x2D000000),
                        offset: Offset(0, -2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: ElevatedButton(
                      onPressed: () async {},
                      child: const Text('Purchase Product'),
                    ),
                    //  FFButtonWidget(
                    //   onPressed: () {},
                    //   text: 'Purchase Product',
                    //   options: FFButtonOptions(
                    //     width: 130,
                    //     height: 40,
                    //     color:const Color(0xFF090F13),
                    //     textStyle: const TextStyle(
                    //       // fontFamily: 'Lexend Deca',
                    //       color: Colors.white,
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //     elevation: 0,
                    //     borderSide: const BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1,
                    //     ),
                    //     borderRadius: 0,
                    //   ),
                    // ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
