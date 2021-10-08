import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Disclaimer extends StatefulWidget {
  const Disclaimer({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Disclaimer> {
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
            'Disclaimer',
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
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://i1.wp.com/techcuttie.com/wp-content/uploads/2021/09/image-17-edited.jpeg?resize=204%2C216&ssl=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'Disclaimer for Tech Cuttie\nIf you require any more information or have any questions about our site’s disclaimer, please feel free to contact us by email at eddy@techcuttie.com.\n\nDisclaimers for Tech Cuttie\nAll the information on this website – techcuttie.com – is published in good faith and for general information purpose only. Tech Cuttie does not make any warranties about the completeness, reliability, and accuracy of this information. Any action you take upon the information you find on this website (Tech Cuttie), is strictly at your own risk. Tech Cuttie will not be liable for any losses and/or damages in connection with the use of our website.\n\nFrom our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link that may have gone bad.\n\nPlease be also aware that when you leave our website, other sites may have different privacy policies and terms that are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their “Terms of Service” before engaging in any business or uploading any information.\n\nConsent\nBy using our website, you hereby consent to our disclaimer and agree to its terms.\n\nUpdate\nShould we update, amend or make any changes to this document, those changes will be prominently posted here.',
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                ),
              )
            ],
          ),
        ))));
  }
}
