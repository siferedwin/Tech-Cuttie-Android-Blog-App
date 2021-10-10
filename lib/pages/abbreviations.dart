import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Abbreviations extends StatefulWidget {
  const Abbreviations({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<Abbreviations> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Abbreviations').snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // actions: const [Icon(Icons.access_alarm_outlined)],
          title: const Text(
            'Abbreviations  ',
            style: TextStyle(fontSize: 40),
          ),
        ),
        key: scaffoldKey,
        body: Center(
          child: StreamBuilder<QuerySnapshot>(
            stream: _usersStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Scrollbar(
                  child: Center(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot doc = snapshot.data!.docs[index];

                          String full = doc['full'];
                          String term = doc['term'];

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AbbreviationsWidget(
                                            full: full,
                                            term: term,
                                          )));
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(doc['term'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          )),
                                    ),
                                    Text(doc['full'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    children: const [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator()),
                      Text('Fetching the latest Posts...')
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class AbbreviationsWidget extends StatefulWidget {
  final String full, term;
  const AbbreviationsWidget({
    Key? key,
    required this.term,
    required this.full,
  }) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<AbbreviationsWidget> {
  late String dropDownValue1;
  late String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                widget.term,
                                style: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF090F13),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.full),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                // decoration: BoxDecoration(
                //   // color: Color(0xFF14181B),
                //   // boxShadow: const [
                //   //   BoxShadow(
                //   //     blurRadius: 4,
                //   //     // color: Color(0x55000000),
                //   //     offset: Offset(0, 2),
                //   //   )
                //   ],
                //   borderRadius: BorderRadius.circular(16),
                // ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Share.share(widget.term + '' + widget.full);
                          },
                          child: Row(
                            children: [
                              const Text('Share',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              IconButton(
                                icon: const Icon(
                                  Icons.share_rounded,
                                  // color: Colors.deepPurple,
                                  // size: 24,
                                ),
                                onPressed: () {
                                  Share.share(widget.term);
                                },
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
