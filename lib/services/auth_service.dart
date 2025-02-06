
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService with ChangeNotifier {
  String? _token;
  SharedPreferences? _prefs;

  String? get token => _token;

  AuthService() {
    _loadToken();
  }

  Future<void> _loadToken() async {
    _prefs = await SharedPreferences.getInstance();
    _token = _prefs?.getString('token');
    notifyListeners();
  }

  Future<String?> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/auth/login'),
        body: json.encode({'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        _token = json.decode(response.body)['token'];
        await _prefs?.setString('token', _token!);
        notifyListeners();
        return _token;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<String?> signup(String name, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/auth/signup'),
        body: json.encode({'name': name, 'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        _token = json.decode(response.body)['token'];
        await _prefs?.setString('token', _token!);
        notifyListeners();
        return _token;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> logout() async {
    _token = null;
    await _prefs?.remove('token');
    notifyListeners();
  }
}
