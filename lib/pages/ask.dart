import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Ask extends StatefulWidget {
  const Ask({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Ask> {
  @override
  Widget build(BuildContext context) {
    final textController1 = TextEditingController();
    final textController2 = TextEditingController();
    bool switchListTileValue = false;
    var textController3 = TextEditingController();
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
            'Ask',
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
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/10/image-1.jpeg?resize=269%2C187&ssl=1',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextFormField(
                  onChanged: (_) => setState(() {}),
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Question Title',
                    // labelStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    hintText: 'Type Your question here...',
                    // hintStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.help_rounded,
                    ),
                    suffixIcon: textController1.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => textController1.clear(),
                            ),
                            child: const Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  maxLines: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextFormField(
                  onChanged: (_) => setState(() {}),
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Question Description',
                    // labelStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    hintText: 'Type Your question description here...',
                    // hintStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.event_note_outlined,
                    ),
                    suffixIcon: textController2.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => textController2.clear(),
                            ),
                            child: const Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SwitchListTile(
                    value: switchListTileValue,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue = newValue),
                    title: const Text(
                      'Privacy',
                      // style: FlutterFlowTheme.title3.override(
                      //   fontFamily: 'Poppins',
                      // ),
                    ),
                    subtitle: const Text(
                      'if checked only admin  and moderator can see this question',
                      // style: FlutterFlowTheme.subtitle2.override(
                      //   fontFamily: 'Poppins',
                      // ),
                    ),
                    tileColor: const Color(0xFFF5F5F5),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //   child:
              //   ChoiceChips(
              //     options: [
              //       ChipData('Computer Science', Icons.laptop_rounded),
              //       ChipData('Content Writing', Icons.menu_book_rounded),
              //       ChipData('Image Editing', Icons.image_search_rounded)
              //     ],
              //     onChanged: (val) => setState(() => choiceChipsValue = val),
              //     selectedChipStyle: ChipStyle(
              //       backgroundColor: const Color(0xFF262D34),
              //       // textStyle: FlutterFlowTheme.bodyText1.override(
              //       //   fontFamily: 'Poppins',
              //       //   color: Colors.white,
              //       // ),
              //       iconColor: Colors.white,
              //       iconSize: 18,
              //       labelPadding:
              //           const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //       elevation: 4,
              //     ),
              //     unselectedChipStyle: ChipStyle(
              //       backgroundColor: Colors.white,
              //       // textStyle: FlutterFlowTheme.bodyText2.override(
              //       //   fontFamily: 'Poppins',
              //       //   color: Color(0xFF262D34),
              //       // ),
              //       iconColor: const Color(0xFF262D34),
              //       iconSize: 18,
              //       labelPadding:
              //           const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
              //       elevation: 4,
              //     ),
              //     chipSpacing: 20,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextFormField(
                  onChanged: (_) => setState(() {}),
                  controller: textController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Question Tag',
                    // labelStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    hintText: 'Type Your own tag question here...',
                    // hintStyle: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.stars,
                    ),
                    suffixIcon: textController3.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => textController3.clear(),
                            ),
                            child: const Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  maxLines: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      await Share.share(
                          'https://techcuttie.com/questions/ask/');
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title:
                                const Text('Are You sure You want to submit?'),
                            content: const Text(
                                'confirm that you have proofread you questuion again then submit'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Make Changes'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(alertDialogContext);
                                  Navigator.pop(context);
                                  // ignore: empty_statements
                                  ;
                                },
                                child: const Text('Proceed & Submit Question'),
                              ),
                            ],
                          );
                        },
                      );
                    } finally {}
                  },
                  child: const Text('Submit'),
                  // options: FFButtonOptions(
                  //   width: 130,
                  //   height: 40,
                  //   // color: FlutterFlowTheme.primaryColor,
                  //   // textStyle: FlutterFlowTheme.subtitle2.override(
                  //   //   fontFamily: 'Poppins',
                  //   //   color: Colors.white,
                  //   // ),
                  //   borderSide: const BorderSide(
                  //     color: Colors.transparent,
                  //     width: 1,
                  //   ),
                  //   borderRadius: 30,
                  // ),
                  // loading: _loadingButton,
                ),
              )
            ],
          ),
        ))));
  }
}
