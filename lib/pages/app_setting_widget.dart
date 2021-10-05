import 'package:flutter/material.dart';

class AppSettingWidget extends StatefulWidget {
  const AppSettingWidget({Key? key}) : super(key: key);

  @override
  _AppSettingWidgetState createState() => _AppSettingWidgetState();
}

class _AppSettingWidgetState extends State<AppSettingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    bool switchListTileValue1 = true;
    bool switchListTileValue2 = true;
    bool switchListTileValue3 = true;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // backgroundColor: const Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.,
          // borderRadius: 30,
          // buttonSize: 46,
          icon: const Icon(
            Icons.arrow_back_rounded,
            // color: Colors.white,
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings Page',
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0,
      ),
      // backgroundColor: const Color(0xFF090F13),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  child: Text(
                    'Choose what notifcations you want to recieve below and we will update the settings.',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: SwitchListTile.adaptive(
              value: switchListTileValue1,
              onChanged: (newValue) =>
                  setState(() => switchListTileValue1 = newValue),
              title: const Text(
                'Push Notifications',
              ),
              subtitle: const Text(
                'Receive Push notifications from our application on a semi regular basis.',
              ),
              activeColor: const Color(0xFF4B39EF),
              activeTrackColor: const Color(0xFF3B2DB6),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
            ),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue2,
            onChanged: (newValue) =>
                setState(() => switchListTileValue2 = newValue),
            title: const Text(
              'Email Notifications',
            ),
            subtitle: const Text(
              'Receive email notifications from our marketing team about new features.',
            ),
            activeColor: const Color(0xFF4B39EF),
            activeTrackColor: const Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue3,
            onChanged: (newValue) =>
                setState(() => switchListTileValue3 = newValue),
            title: const Text(
              'Location Services',
            ),
            subtitle: const Text(
              'Allow us to track your location, this helps keep track of spending and keeps you safe.',
            ),
            activeColor: const Color(0xFF4B39EF),
            activeTrackColor: const Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              child: const Text('Save Settings'),
            ),
            // TextButton(
            //   onPressed: () async {
            //     Navigator.pop(context);
            //   },
            //   options: FFButtonOptions(
            //     width: 190,
            //     height: 50,
            //     color: const Color(0xFF4B39EF),
            //     // ignore: prefer_const_constructors
            //     textStyle: TextStyle(
            //       // fontFamily: 'Lexend Deca',
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500,
            //     ),
            //     elevation: 3,
            //     borderSide: const BorderSide(
            //       color: Colors.transparent,
            //       width: 1,
            //     ),
            //     borderRadius: 30,
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
