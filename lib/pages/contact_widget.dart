import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.white,
          // automaticallyImplyLeading: false,
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
            'Contact Us',
            style: TextStyle(),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0,
        ),
        // backgroundColor: const Color(0xFFF1F4F8),
        body: SafeArea(
            child: Scrollbar(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ContactUs(
                      companyName: 'Tech Cuttie',
                      dividerColor: Colors.deepPurple,
                      emailText: 'Email Us',
                      instagram: 'https://www.instagram.com/techcuttie/',
                      phoneNumber: '+254708603973',
                      phoneNumberText: 'Call Us',
                      website: 'https://www.techcuttie.com',
                      avatarRadius: 30,
                      textColor: Colors.white,
                      cardColor: Colors.deepPurple,
                      companyColor: Colors.deepPurpleAccent,
                      linkedinURL:
                          'https://www.linkedin.com/in/tech-cuttie-649b67221/',
                      tagLine: 'Tech is just a click if you have the time',
                      logo: const AssetImage(
                          'assets/images/tech_cuttie_logo.png'),
                      githubUserName: 'SiferAdmin',
                      facebookHandle:
                          'https://web.facebook.com/TechCuttie-100189425766212/',
                      twitterHandle: '@techcuttie',
                      websiteText: 'Visit our website',
                      taglineColor: Colors.deepPurple,
                      email: 'eddy@techcuttie.com'),
                )
              ])),
        )));
  }
}
