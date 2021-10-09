// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({Key? key}) : super(key: key);

//   @override
//   _BlogsWidgetState createState() => _BlogsWidgetState();
// }

// class _BlogsWidgetState extends State<Quiz> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   final Stream<QuerySnapshot> _usersStream =
//       FirebaseFirestore.instance.collection('Quiz').snapshots();
//   // final Stream<QuerySnapshot> _usersStream =
//   //     FirebaseFirestore.instance.collection('Quiz').snapshots();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Tech Quiz',
//             style:
//                 GoogleFonts.lobster(fontSize: 42, fontWeight: FontWeight.bold),
//           ),
//         ),
//         key: scaffoldKey,
//         body: Center(
//           child: StreamBuilder<QuerySnapshot>(
//             stream: _usersStream,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Scrollbar(
//                   child: Center(
//                     child: ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: snapshot.data!.docs.length,
//                         itemBuilder: (context, index) {
//                           DocumentSnapshot doc = snapshot.data!.docs[index];
//                           String category = doc['category'][0];
//                           String tag = doc['tag'][0] + doc['tag'][1];
//                           String details = doc['details'];
//                           String quizImage = doc['quiz_image'];
//                           String questions = '';
//                           String title = doc['title'];
//                           FirebaseFirestore.instance
//                               .collection("Quiz")
//                               .doc('QkFCUYCNBKU4cztzLxzX')
//                               .collection('q')
//                               .get()
//                               .then((querySnapshot) {
//                             for (var result in querySnapshot.docs) {
//                               print(11111111111111111);
//                               print(result.data()["title"]);
//                               setState(() {
//                                 questions = result.data()["title"];
//                               });
//                             }
//                           });
//                           print('object $questions');

//                           int attempts = doc['attempts'];

//                           int tier = doc['tier'];

//                           return GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => QuizWidget(
//                                             questions: questions,
//                                             quizImage: quizImage,
//                                             title: title,
//                                           )));
//                             },
//                             child: Card(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     const SizedBox(
//                                       height: 7,
//                                     ),
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.circular(16),
//                                       child: CachedNetworkImage(
//                                           errorWidget: (context, url, error) =>
//                                               const Icon(Icons.error),
//                                           progressIndicatorBuilder: (context,
//                                                   url, downloadProgress) =>
//                                               SizedBox(
//                                                 height: 20,
//                                                 width: 20,
//                                                 child:
//                                                     CircularProgressIndicator(
//                                                   value:
//                                                       downloadProgress.progress,
//                                                 ),
//                                               ),
//                                           fit: BoxFit.scaleDown,
//                                           imageUrl: quizImage),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text(title,
//                                           style: const TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 18,
//                                           )),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text(details,
//                                           style: const TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 18,
//                                           )),
//                                     ),
//                                     Row(
//                                       children: [
//                                         OutlinedButton(
//                                             onPressed: () {},
//                                             child: Text(category))
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         OutlinedButton(
//                                             onPressed: () {}, child: Text(tag))
//                                       ],
//                                     ),
//                                     Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       children: [
//                                         TextButton(
//                                             onPressed: () {},
//                                             child: Row(
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {},
//                                                   icon: const Icon(
//                                                     Icons.favorite,
//                                                     color: Colors.deepPurple,
//                                                   ),
//                                                 ),
//                                                 Text(attempts.toString()),
//                                               ],
//                                             )),
//                                         TextButton(
//                                             onPressed: () {},
//                                             child: Row(
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {},
//                                                   icon: const Icon(
//                                                     Icons
//                                                         .remove_red_eye_rounded,
//                                                     color: Colors.deepPurple,
//                                                   ),
//                                                 ),
//                                                 Text(attempts.toString()),
//                                               ],
//                                             )),
//                                         TextButton(
//                                             onPressed: () {},
//                                             child: Row(
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {},
//                                                   icon: const Icon(
//                                                     Icons.chat,
//                                                     color: Colors.deepPurple,
//                                                   ),
//                                                 ),
//                                                 Text(tier.toString())
//                                               ],
//                                             )),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         }),
//                   ),
//                 );
//               } else {
//                 return Center(
//                   child: Column(
//                     children: const [
//                       SizedBox(
//                           height: 20,
//                           width: 20,
//                           child: CircularProgressIndicator()),
//                       Text('Fetching the latest Posts...')
//                     ],
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class QuizWidget extends StatefulWidget {
//   final String questions, title, quizImage;

//   const QuizWidget({
//     Key? key,
//     required this.title,
//     required this.quizImage,
//     required this.questions,
//   }) : super(key: key);

//   @override
//   _PostWidgetState createState() => _PostWidgetState();
// }

// class _PostWidgetState extends State<QuizWidget> {
//   late String dropDownValue1;
//   late String dropDownValue2;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       // backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Scrollbar(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding:
//                             const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.9,
//                               height: 320,
//                               decoration: BoxDecoration(
//                                 // color: Color(0xFFDBE2E7),
//                                 borderRadius: BorderRadius.circular(16),
//                               ),
//                               child: Stack(
//                                 children: [
//                                   Align(
//                                     alignment: const AlignmentDirectional(0, 0),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(16),
//                                       child: widget.quizImage != ''
//                                           ? ClipRRect(
//                                               borderRadius:
//                                                   BorderRadius.circular(16),
//                                               child: CachedNetworkImage(
//                                                   errorWidget: (context, url,
//                                                           error) =>
//                                                       const Icon(Icons.error),
//                                                   progressIndicatorBuilder:
//                                                       (context, url,
//                                                               downloadProgress) =>
//                                                           SizedBox(
//                                                             height: 20,
//                                                             width: 20,
//                                                             child:
//                                                                 CircularProgressIndicator(
//                                                               value:
//                                                                   downloadProgress
//                                                                       .progress,
//                                                             ),
//                                                           ),
//                                                   // width: double.infinity,
//                                                   // height: double.infinity,
//                                                   // fit: BoxFit.contain,
//                                                   imageUrl: widget.quizImage),
//                                             )
//                                           : ClipRRect(
//                                               borderRadius:
//                                                   BorderRadius.circular(16),
//                                               child: Image.asset(
//                                                 'assets/images/user_loading.gif',
//                                                 // width: double.infinity,
//                                                 // height: double.infinity,
//                                                 // fit: BoxFit.contain,
//                                               ),
//                                             ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsetsDirectional.fromSTEB(
//                                             16, 16, 16, 16),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Card(
//                                               clipBehavior:
//                                                   Clip.antiAliasWithSaveLayer,
//                                               // color: Colors.deepPurple,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(8),
//                                               ),
//                                               child: IconButton(
//                                                 icon: const Icon(
//                                                   Icons.arrow_back_rounded,
//                                                   // color: Colors.deepPurple,
//                                                   // size: 24,
//                                                 ),
//                                                 onPressed: () {
//                                                   Navigator.pop(context);
//                                                 },
//                                               ),
//                                             ),
//                                             Card(
//                                               clipBehavior:
//                                                   Clip.antiAliasWithSaveLayer,
//                                               // color: Colors.deepPurple,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(8),
//                                               ),
//                                               child: IconButton(
//                                                 icon: const Icon(
//                                                   Icons.favorite_border,
//                                                   // color: Colors.deepPurple,
//                                                   // size: 24,
//                                                 ),
//                                                 onPressed: () {},
//                                               ),
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Flexible(
//                               child: Text(
//                                 widget.questions,
//                                 style: const TextStyle(
//                                   // fontFamily: 'Lexend Deca',
//                                   // color: Color(0xFF090F13),
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Text(
//                               widget.questions,
//                               style: const TextStyle(
//                                 // fontFamily: 'Lexend Deca',
//                                 // color: Color(0xFF8B97A2),
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.normal,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
