import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/user.dart';

// class ApiService {
//   static String url(int nrResults) {
//     return 'http://api.randomuser.me/?results=$nrResults';
//   }

//   static Future<List<User>> getUsers({int nrUsers = 1}) async {
//     try {
//       final response = await http.get(
//           Uri(
//             path: url(nrUsers),
//           ),
//           headers: {"Content-Type": "application/json"});

//       if (response.statusCode == 200) {
//         Map data = json.decode(response.body);
//         Iterable list = data["results"];
//         List<User> users = list.map((l) => User.fromJson(l)).toList();
//         return users;
//       } else {
//         print(response.body);
//         return [];
//       }
//     } catch (e) {
//       print(e);
//       return [];
//     }
//   }
// }
// class ApiService {
// static String url = 'http://api.randomuser.me/';

// static Future<List<User>> getUsers({int nrUsers = 1}) async {
//   try {
//     final uri = Uri.parse('$url?results=$nrUsers');
//     final response = await http.get(
//       uri,
//       headers: {"Content-Type": "application/json"},
//     );

//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = json.decode(response.body);
//       // Map data = json.decode(response.body);
//       Iterable list = data["results"];
//       List<User> users = list.map((l) => User.fromJson(l)).toList();
//       return users;
//     } else {
//       print('Error: ${response.body}');
//       return [];
//     }
//   } catch (e) {
//     print('Exception: $e');
//     return [];
//   }
// }
// }
class ApiService {
  static String url = 'http://api.randomuser.me/';
  static Future<List<User>> getUsers({int nrUsers = 1}) async {
    try {
      final uri = Uri.parse('$url?results=$nrUsers');
      final response = await http.get(
        uri,
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        // Decode the response body into a Map
        Map<String, dynamic> data = json.decode(response.body); // Correct type
        Iterable list =
            data["results"]; // Access the 'results' key from the Map
        List<User> users = list.map((l) => User.fromJson(l)).toList();
        return users;
      } else {
        print('Error: ${response.body}');
        return [];
      }
    } catch (e) {
      print('Exception: $e');
      return [];
    }
  }
}
