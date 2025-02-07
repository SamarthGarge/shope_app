// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:shope/app_properties.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class NotificationSettingsPage extends StatefulWidget {
//   @override
//   _NotificationSettingsPageState createState() =>
//       _NotificationSettingsPageState();
// }

// class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
//   bool myOrders = true;
//   bool reminders = true;
//   bool newOffers = true;
//   bool feedbackReviews = true;
//   bool updates = true;

//   Widget platformSwitch(bool val) {
//     if (Platform.isAndroid) {
//       return CupertinoSwitch(
//         onChanged: (value) {
//           setState(() {
//             val = value;
//           });
//         },
//         value: false,
//       );
//     } else {
//       return Switch(
//         onChanged: (value) {
//           setState(() {
//             val = value;
//           });
//         },
//         value: val,
//         activeColor: yellow,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.black,
//         ),
//         backgroundColor: Colors.transparent,
//         title: Text(
//           'Settings',
//           style: TextStyle(color: darkGrey),
//         ),
//         elevation: 0,
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//       ),
//       body: SafeArea(
//         bottom: true,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 16.0),
//                 child: Text(
//                   'Notifications',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0),
//                 ),
//               ),
//               Flexible(
//                 child: ListView(
//                   children: <Widget>[
//                     ListTile(
//                       title: Text('My orders'),
//                       trailing: platformSwitch(myOrders),
//                     ),
//                     ListTile(
//                       title: Text('Reminders'),
//                       trailing: platformSwitch(reminders),
//                     ),
//                     ListTile(
//                       title: Text('New Offers'),
//                       trailing: platformSwitch(newOffers),
//                     ),
//                     ListTile(
//                       title: Text('Feedbacks and Reviews'),
//                       trailing: platformSwitch(feedbackReviews),
//                     ),
//                     ListTile(
//                       title: Text('Updates'),
//                       trailing: platformSwitch(updates),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:shope/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool myOrders = true;
  bool reminders = true;
  bool newOffers = true;
  bool feedbackReviews = true;
  bool updates = true;

  Widget platformSwitch(bool val, Function(bool) onChanged) {
    return Platform.isAndroid
        ? CupertinoSwitch(
            onChanged: onChanged,
            value: val,
          )
        : Switch(
            onChanged: onChanged,
            value: val,
            activeColor: Colors.yellow, // Ensure 'yellow' is defined or use Colors.yellow
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('My orders'),
                      trailing: platformSwitch(myOrders, (newValue) {
                        setState(() {
                          myOrders = newValue;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text('Reminders'),
                      trailing: platformSwitch(reminders, (newValue) {
                        setState(() {
                          reminders = newValue;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text('New Offers'),
                      trailing: platformSwitch(newOffers, (newValue) {
                        setState(() {
                          newOffers = newValue;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text('Feedbacks and Reviews'),
                      trailing: platformSwitch(feedbackReviews, (newValue) {
                        setState(() {
                          feedbackReviews = newValue;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text('Updates'),
                      trailing: platformSwitch(updates, (newValue) {
                        setState(() {
                          updates = newValue;
                        });
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}