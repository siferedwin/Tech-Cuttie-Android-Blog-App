import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Newsletter extends StatefulWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Newsletter> {
  final textController2 = TextEditingController();
  final textController1 = TextEditingController();

  bool checkboxListTileValue = false;

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
            'Newsletter',
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
            child:
                // Generated code for this ListView Widget...
                ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/10/image-3.jpeg?resize=234%2C215&ssl=1',
                  fit: BoxFit.cover,
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
                  labelText: 'Name',
                  // labelStyle: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  hintText: 'Name',
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
                  prefixIcon: const Icon(
                    Icons.person_rounded,
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
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: TextFormField(
                onChanged: (_) => setState(() {}),
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email',
                  // labelStyle: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  hintText: 'Email',
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
                  prefixIcon: const Icon(
                    Icons.email_rounded,
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
                keyboardType: TextInputType.name,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CheckboxListTile(
                        value: checkboxListTileValue,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue = newValue!),
                        title: const Text(
                          'Privacy policy',
                          // style: FlutterFlowTheme.title3.override(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        subtitle: const Text(
                          'Check to accept privacy policy',
                          // style: FlutterFlowTheme.subtitle2.override(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        tileColor: const Color(0xFFF5F5F5),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Button pressed ...');
                },
                child: const Text('Subscribe To Stay Informed'),
                // options: FFButtonOptions(
                //   width: 130,
                //   height: 40,
                //   color: FlutterFlowTheme.primaryColor,
                //   textStyle: FlutterFlowTheme.subtitle2.override(
                //     fontFamily: 'Poppins',
                //     color: Colors.white,
                //   ),
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
        )));
  }
}
