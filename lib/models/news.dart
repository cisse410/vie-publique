import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class News with ChangeNotifier {
  Map<String, dynamic> _news = {};
  bool _error = false;
  String _errorMessage = '';

  Map<String, dynamic> get news => _news;
  bool get error => _error;
  String get errorMessage => _errorMessage;

  Future<void> get retrieveData async {
    final response = await get(Uri.parse(
        'https://dl.dropbox.com/scl/fi/ot3mophsnu2hgu2ezyirr/stories.json?rlkey=62pelfk98igcjfs16aep3d45p&st=rp5po55v&dl=0'));

    if (response.statusCode == 200) {
      try {
        _news = jsonDecode(response.body);
        _error = false;
      } catch (e) {
        _news = {};
        _error = false;
        _errorMessage = e.toString();
      }
    }
    notifyListeners();
  }
}
