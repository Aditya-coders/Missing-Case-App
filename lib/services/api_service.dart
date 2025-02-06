

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService with ChangeNotifier {
  Future<List<dynamic>> getPGRooms() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:5000/api/pgrooms'));

      if (response.statusCode == 200) {
        return json.decode(response.body) as List<dynamic>; // Parse JSON response
      } else {
        throw Exception('Failed to load PG rooms');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}
