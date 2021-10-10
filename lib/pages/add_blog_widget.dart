import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tech_cuttie/pages/abbreviations.dart';
import 'package:tech_cuttie/pages/blogs_widget.dart';
import 'package:tech_cuttie/pages/faq.dart';
import 'package:tech_cuttie/pages/glossary_widget.dart';

class AddBlogWidget extends StatefulWidget {
  const AddBlogWidget({Key? key}) : super(key: key);

  @override
  _EditprofileWidgetState createState() => _EditprofileWidgetState();
}

class _EditprofileWidgetState extends State<AddBlogWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();

  late TextEditingController shortController;
  late TextEditingController fullController;
  late TextEditingController termController;
  late TextEditingController contentController;
  late TextEditingController imageController;
  late TextEditingController itemController;
  late TextEditingController answerController;
  late TextEditingController titlController;
  late TextEditingController taController;
  late TextEditingController categController;
  late TextEditingController nameController;
  late TextEditingController essay1Controller;
  late TextEditingController essay2Controller;
  late TextEditingController essay3Controller;
  late TextEditingController essay4Controller;
  late TextEditingController essay5Controller;

  late TextEditingController image1Controller;
  late TextEditingController image2Controller;
  late TextEditingController image3Controller;
  late TextEditingController image4Controller;
  late TextEditingController image5Controller;

  late TextEditingController subHeading1Controller;
  late TextEditingController subHeading2Controller;
  late TextEditingController subHeading3Controller;
  late TextEditingController subHeading4Controller;
  late TextEditingController subHeading5Controller;

  late TextEditingController heading1Controller;
  late TextEditingController heading2Controller;
  late TextEditingController heading3Controller;
  late TextEditingController heading4Controller;
  late TextEditingController heading5Controller;

  late TextEditingController excerptController;

  late TextEditingController linkController;

  late TextEditingController tagController;

  late TextEditingController categoryController;

  late TextEditingController featuredImageController;

  late TextEditingController titleController;

  @override
  void initState() {
    super.initState();
    // ignore: prefer_typing_uninitialized_variables

    essay1Controller = TextEditingController();
    essay2Controller = TextEditingController();
    essay3Controller = TextEditingController();
    essay4Controller = TextEditingController();
    essay5Controller = TextEditingController();
    termController = TextEditingController();
    fullController = TextEditingController();
    nameController = TextEditingController();
    itemController = TextEditingController();
    contentController = TextEditingController();
    answerController = TextEditingController();
    taController = TextEditingController();
    imageController = TextEditingController();
    categController = TextEditingController();
    answerController = TextEditingController();
    taController = TextEditingController();
    imageController = TextEditingController();

    image1Controller = TextEditingController();
    image2Controller = TextEditingController();
    image3Controller = TextEditingController();
    image4Controller = TextEditingController();
    image5Controller = TextEditingController();

    subHeading1Controller = TextEditingController();
    subHeading2Controller = TextEditingController();
    subHeading3Controller = TextEditingController();
    subHeading4Controller = TextEditingController();
    subHeading5Controller = TextEditingController();

    heading1Controller = TextEditingController();
    heading2Controller = TextEditingController();
    heading3Controller = TextEditingController();
    heading4Controller = TextEditingController();
    heading5Controller = TextEditingController();
    excerptController = TextEditingController();
    linkController = TextEditingController();

    tagController = TextEditingController();

    categoryController = TextEditingController();

    featuredImageController = TextEditingController();

    titleController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            // color: Colors.black,
            size: 24,
          ),
        ),
        title: const Text(
          'Add Post',
          style: TextStyle(
              // fontFamily: 'Lexend Deca',
              // color: Color(0xFF14181B),
              // fontSize: 14,
              // fontWeight: FontWeight.w500,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      // backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Center(
            child: Scrollbar(
              child: Center(
                child: ListView(children: [
                  Center(
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: titleController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Title',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'Article title',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: featuredImageController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Featured Image',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'the featured Image',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: categoryController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: "Category",
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'category',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: tagController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Tag',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'Tag',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: linkController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: "Link",
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'article link',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: excerptController,
                                  maxLines: 6,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Excerpt',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'article excerpt',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: heading1Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Heading 1',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'heading 1',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: subHeading1Controller,
                                  obscureText: false,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Sub Heading 1',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'sub heading 1.',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  maxLines: 3,
                                  controller: image1Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Image 1',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'image 1',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: essay1Controller,
                                  obscureText: false,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    labelText: 'Essay 1',

                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'essay 1',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: heading2Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Heading 2',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'heading 2',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: subHeading2Controller,
                                  obscureText: false,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Sub Heading 2',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'sub heading 2.',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  maxLines: 3,
                                  controller: image2Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Image 2',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'image 2',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: essay2Controller,
                                  obscureText: false,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    labelText: 'Essay 2',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'essay 2',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: heading3Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Heading 3',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'heading 3',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: subHeading3Controller,
                                  obscureText: false,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Sub Heading 3',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'sub heading 3.',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  maxLines: 3,
                                  controller: image3Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Image 3',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'image 3',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: essay3Controller,
                                  obscureText: false,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    labelText: 'Essay 3',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'essay 3',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: heading4Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Heading 4',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'heading 4',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: subHeading4Controller,
                                  obscureText: false,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Sub Heading 4',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'sub heading 4.',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  maxLines: 3,
                                  controller: image4Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Image 4',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'image 4',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: essay4Controller,
                                  obscureText: false,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    labelText: 'Essay 4',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'essay 4',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 12),
                                child: TextFormField(
                                  controller: heading5Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Heading 5',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'heading 5',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: subHeading5Controller,
                                  obscureText: false,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Sub Heading 5',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'sub heading 5.',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  maxLines: 3,
                                  controller: image5Controller,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Image 5',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'image 5',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: TextFormField(
                                  controller: essay5Controller,
                                  obscureText: false,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    labelText: 'Essay 5',
                                    labelStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: 'essay 5',
                                    hintStyle: const TextStyle(
                                      // fontFamily: 'Lexend Deca',
                                      // color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        // color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    // fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 0, 24),
                                  ),
                                  style: const TextStyle(
                                    // fontFamily: 'Lexend Deca',
                                    // color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      FirebaseFirestore.instance
                                          .collection('Blogs')
                                          .doc()
                                          .set({
                                        "category": categoryController.text,
                                        "essay1": essay1Controller.text,
                                        "essay2": essay2Controller.text,
                                        "essay3": essay3Controller.text,
                                        "essay4": essay4Controller.text,
                                        "essay5": essay5Controller.text,
                                        "name": titleController.text,
                                        "excerpt": excerptController.text,
                                        "featured_media":
                                            featuredImageController.text,
                                        "heading1": heading1Controller.text,
                                        "heading2": heading2Controller.text,
                                        "heading3": heading3Controller.text,
                                        "heading4": heading4Controller.text,
                                        "heading5": heading5Controller.text,
                                        "image1": image1Controller.text,
                                        "image2": image2Controller.text,
                                        "image3": image3Controller.text,
                                        "image4": image4Controller.text,
                                        "image5": image5Controller.text,
                                        "link": linkController.text,
                                        "sub_heading1":
                                            subHeading1Controller.text,
                                        "sub_heading2":
                                            subHeading2Controller.text,
                                        "sub_heading3":
                                            subHeading3Controller.text,
                                        "sub_heading4":
                                            subHeading4Controller.text,
                                        "sub_heading5":
                                            subHeading5Controller.text,
                                        "tag": tagController.text,
                                      });

                                      // ignore: unnecessary_null_comparison

                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BlogsWidget(),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text('Submit Post'))
                            ],
                          ),
                        )),
                  ),
                  Form(
                      key: _formKey1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: termController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Term',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'term',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: fullController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Full',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'full',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey2.currentState!.validate()) {
                                  FirebaseFirestore.instance
                                      .collection('Abbreviations')
                                      .doc()
                                      .set({
                                    "full": fullController.text,
                                    "term": termController.text,
                                  });

                                  // ignore: unnecessary_null_comparison

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Abbreviations(),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Submit\nAbbreviation'))
                        ],
                      )),
                  Form(
                      key: _formKey2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: nameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Title',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Article title',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: answerController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Answer',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'answer',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 12),
                            child: TextFormField(
                              controller: categController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: "Category",
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'category',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: taController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Tag',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Tag',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey2.currentState!.validate()) {
                                  FirebaseFirestore.instance
                                      .collection('FAQs')
                                      .doc()
                                      .set({
                                    "category": categController.text,
                                    "name": nameController.text,
                                    "answer": answerController.text,
                                    "tag": taController.text,
                                  });

                                  // ignore: unnecessary_null_comparison

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const FAQs(),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Submit FAQ'))
                        ],
                      )),
                  Form(
                      key: _formKey3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: itemController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Item',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Item',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 16),
                            child: TextFormField(
                              controller: imageController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Image',
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Image',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 12),
                            child: TextFormField(
                              controller: contentController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: "Content",
                                labelStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'content',
                                hintStyle: const TextStyle(
                                  // fontFamily: 'Lexend Deca',
                                  // color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                // fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 0, 24),
                              ),
                              style: const TextStyle(
                                // fontFamily: 'Lexend Deca',
                                // color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey3.currentState!.validate()) {
                                  FirebaseFirestore.instance
                                      .collection('Glossary')
                                      .doc()
                                      .set({
                                    "item": itemController.text,
                                    "content": contentController.text,
                                    "image": imageController.text,
                                  });

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Glossary(),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Submit Meaning'))
                        ],
                      )),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
