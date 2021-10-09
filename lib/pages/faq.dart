import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<FAQs> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('FAQs').snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tech FAQs',
            style:
                GoogleFonts.lobster(fontSize: 42, fontWeight: FontWeight.bold),
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
                          String tag = doc['tag'];
                          String title = doc['title'];
                          String category = doc['category'];
                          String answer = doc['answer'];

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FAQsWidget(
                                            category: category,
                                            title: title,
                                            answer: answer,
                                            tag: tag,
                                          )));
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpansionTile(
                                  title: Text(
                                    category,
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: ExpansionTile(
                                        title: Text(
                                          title,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        children: <Widget>[
                                          ListTile(
                                            title: Column(
                                              children: [
                                                Text(
                                                  answer,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    tag,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
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

class FAQsWidget extends StatefulWidget {
  final String category, title, answer, tag;
  const FAQsWidget(
      {Key? key,
      required this.category,
      required this.tag,
      required this.title,
      required this.answer})
      : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<FAQsWidget> {
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
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ExpansionTile(
                        title: Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  widget.answer,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700),
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    widget.tag,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Share.share(
                                'Hello, here is something to learn about Tech Cuttie ${widget.title} \n ${widget.answer}');
                          },
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
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
                                  Share.share(
                                      'Hello, here is something to learn about Tech Cuttie ${widget.title} \n ${widget.answer}');
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
