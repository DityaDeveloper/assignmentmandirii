import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../application/uri_constant.dart';

class BaseNetwork {
  String baseUrl = MasterUri.baseUrl.prodUrl;
  String? token;

  Future<Map<String, dynamic>?> get(String pathUrl) async {
    // token here
    debugPrint("user token $token");
    final fullUrl = "$baseUrl/$pathUrl";
    debugPrint("BaseNetwork is Running - fullUrl : $fullUrl");

    final response = await http.get(Uri.parse(fullUrl));
    debugPrint("BaseNetwork Response : ${response.body}");

    return _processResponse(response);
  }

  Future<Map?> getList(String pathUrl) async {
    // token here
    debugPrint("user token $token");
    final fullUrl = "$baseUrl/$pathUrl";
    debugPrint("BaseNetwork is Running - fullUrl : $fullUrl");

    final response = await http.get(Uri.parse(fullUrl));
    debugPrint("BaseNetwork Response : ${response.body}");

    return _processListResponse(response);
  }

  Future<Map<String, dynamic>?> post(
      String pathUrl, Map<String, dynamic> request) async {
    // token here
    debugPrint("user token $token");
    final fullUrl = "$baseUrl/$pathUrl";
    debugPrint("BaseNetwork is Running - fullUrl : $fullUrl");

    final response = await http.post(Uri.parse(fullUrl),
        headers: {'Authorization': 'Bearer $token'}, body: request);
    debugPrint("BaseNetwork - response : ${response.body}");

    return _processResponse(response);
  }

  Future<Map<String, dynamic>?> _processResponse(http.Response response) async {
    final body = response.body;

    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      debugPrint("Process Response is error");
      return {"error": true};
    }
  }

  Future<Map?> _processListResponse(http.Response response) async {
    final body = response.body;

    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      debugPrint("Process Response is error");
      return {"error": true};
    }
  }
}
