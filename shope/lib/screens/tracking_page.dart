// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';

// class TrackingPage extends StatefulWidget {
//   @override
//   _TrackingPageState createState() => _TrackingPageState();
// }

// class _TrackingPageState extends State<TrackingPage> {
//   final List<Location> locations = [
//     Location('Kolkata Facility', DateTime(2019, 6, 5, 5, 23, 4),
//         showHour: false, isHere: false, passed: true),
//     Location('Hyderabad Facility', DateTime(2019, 6, 6, 5, 23, 4),
//         showHour: false, isHere: false, passed: true),
//     Location(
//       'Chennai Facility',
//       DateTime(2019, 6, 9, 5, 23, 4),
//       showHour: false,
//       isHere: true,
//     ),
//     Location(
//       'Kerala Facility',
//       DateTime(2019, 6, 10, 5, 23, 4),
//       showHour: true,
//       isHere: false,
//     ),
//   ];

//   String selectedProduct = 'Boat Headphones Bass boost 100v';
//   final Color darkGrey = Colors.grey.shade800;
//   final Color yellow = Colors.amber;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image with color filter for opacity
//           Container(
//             decoration: BoxDecoration(
//               // image: DecorationImage(
//               //   image: AssetImage('assets/Group 444.png'),
//               //   fit: BoxFit.cover,
//               //   colorFilter: ColorFilter.mode(
//               //     Colors.white,
//               //     BlendMode.dstATop,
//               //   ),
//               // ),
//             ),
//           ),
//           // Content overlay
//           SafeArea(
//             child: Column(
//               children: <Widget>[
//                 AppBar(
//                   backgroundColor: Colors.white,
//                   elevation: 0.0,
//                   systemOverlayStyle: SystemUiOverlayStyle(
//                     statusBarIconBrightness: Brightness.dark,
//                   ),
//                   iconTheme: IconThemeData(color: Colors.grey),
//                   title: Text(
//                     'Shipped',
//                     style: TextStyle(
//                       color: darkGrey,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   actions: <Widget>[CloseButton()],
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 16.0),
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(5)),
//                   ),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton(
//                       items: <String>[
//                         'Boat Headphones Bass boost 100v',
//                         'Boat Headphones Bass boost 200v',
//                         'Boat Headphones Bass boost 300v',
//                         'Boat Headphones Bass boost 400v',
//                         'Boat Headphones Bass boost 500v',
//                         'Boat Headphones Bass double boosting 600v',
//                       ].map((val) {
//                         return DropdownMenuItem<String>(
//                           value: val,
//                           child: Container(
//                             color: Colors.white,
//                             child: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 val,
//                                 maxLines: 2,
//                                 semanticsLabel: '...',
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (newValue) {
//                         setState(() {
//                           selectedProduct = newValue as String;
//                         });
//                       },
//                       value: selectedProduct,
//                       isExpanded: true,
//                       icon: Icon(Icons.keyboard_arrow_down),
//                       elevation: 0,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Theme(
//                       data: ThemeData(
//                         primaryColor: yellow,
//                         fontFamily: 'Montserrat',
//                       ),
//                       child: Stepper(
//                         steps: locations.map((location) {
//                           return Step(
//                             isActive: location.isHere || location.passed,
//                             title: Text(location.city),
//                             subtitle: Text(location.getDate()),
//                             content: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Image.asset('assets/icons/truck.png'),
//                             ),
//                             state: location.passed
//                                 ? StepState.complete
//                                 : location.isHere
//                                     ? StepState.editing
//                                     : StepState.indexed,
//                           );
//                         }).toList(),
//                         currentStep: locations.indexWhere((loc) => loc.isHere),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Location {
//   String city;
//   DateTime date;
//   bool showHour;
//   bool isHere;
//   bool passed;

//   Location(this.city, this.date,
//       {this.showHour = false, this.isHere = false, this.passed = false});

//   String getDate() {
//     if (showHour) {
//       return DateFormat("K:mm aaa, d MMMM y").format(date);
//     } else {
//       return DateFormat('d MMMM y').format(date);
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class TrackingPage extends StatefulWidget {
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  final List<Location> locations = [
    Location('Kolkata Facility', DateTime(2019, 6, 5, 5, 23, 4),
        showHour: false, isHere: false, passed: true),
    Location('Hyderabad Facility', DateTime(2019, 6, 6, 5, 23, 4),
        showHour: false, isHere: false, passed: true),
    Location(
      'Chennai Facility',
      DateTime(2019, 6, 9, 5, 23, 4),
      showHour: false,
      isHere: true,
    ),
    Location(
      'Kerala Facility',
      DateTime(2019, 6, 10, 5, 23, 4),
      showHour: true,
      isHere: false,
    ),
  ];

  String selectedProduct = 'Boat Headphones Bass boost 100v';
  final Color darkGrey = Colors.grey.shade800;
  final Color yellow = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
              ),
              iconTheme: IconThemeData(color: Colors.grey),
              title: Text(
                'Shipped',
                style: TextStyle(
                  color: darkGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: <Widget>[CloseButton()],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  items: <String>[
                    'Boat Headphones Bass boost 100v',
                    'Boat Headphones Bass boost 200v',
                    'Boat Headphones Bass boost 300v',
                    'Boat Headphones Bass boost 400v',
                    'Boat Headphones Bass boost 500v',
                    'Boat Headphones Bass double boosting 600v',
                  ].map((val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            val,
                            maxLines: 2,
                            semanticsLabel: '...',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedProduct = newValue as String;
                    });
                  },
                  value: selectedProduct,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  elevation: 0,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Theme(
                  data: ThemeData(
                    primaryColor: yellow,
                    fontFamily: 'Montserrat',
                  ),
                  child: Stepper(
                    steps: locations.map((location) {
                      return Step(
                        isActive: location.isHere || location.passed,
                        title: Text(location.city),
                        subtitle: Text(location.getDate()),
                        content: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/icons/truck.png'),
                        ),
                        state: location.passed
                            ? StepState.complete
                            : location.isHere
                                ? StepState.editing
                                : StepState.indexed,
                      );
                    }).toList(),
                    currentStep: locations.indexWhere((loc) => loc.isHere),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Location {
  String city;
  DateTime date;
  bool showHour;
  bool isHere;
  bool passed;

  Location(this.city, this.date,
      {this.showHour = false, this.isHere = false, this.passed = false});

  String getDate() {
    if (showHour) {
      return DateFormat("K:mm aaa, d MMMM y").format(date);
    } else {
      return DateFormat('d MMMM y').format(date);
    }
  }
}