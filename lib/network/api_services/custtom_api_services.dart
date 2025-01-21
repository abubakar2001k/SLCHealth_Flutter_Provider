import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CustomApiServices {
  final String baseUrl;


  CustomApiServices({
    required this.baseUrl,
  });
  Future<dynamic> post(String endPoint, Map<String, dynamic> body) async {
    final String url = ("$baseUrl$endPoint");

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception("Error during POST request: $e");
    }
  }

  Future<dynamic> get(String endPoint) async {
    final String url = ("$baseUrl$endPoint");

    debugPrint("@CustomApiServices=>  Get URL called $endPoint");
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception("Error during POST request: $e");
    }
  }


  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isNotEmpty) {
        final decodedBody = json.decode(response.body);
        if (decodedBody is List) {
          return decodedBody.map((item) => item as Map<String, dynamic>).toList();
        } else if (decodedBody is Map<String, dynamic>) {
          return decodedBody;
        } else {
          throw Exception("Unexpected response format: ${decodedBody.runtimeType}");
        }
      } else {
        return null; // No content in the response body
      }
    } else {
      throw Exception(
        "Failed to fetch data: ${response.statusCode} ${response.reasonPhrase}",
      );
    }
  }}
/// Response handler
//   dynamic _handleResponse(http.Response response) {
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       return response.body.isNotEmpty
//           ? List<Map<String, dynamic>>.from(json.decode(response.body))
//           : null;
//     } else {
//       throw Exception(
//         "Failed to fetch data: ${response.statusCode} ${response.reasonPhrase}",
//       );
//     }
//   }
// }