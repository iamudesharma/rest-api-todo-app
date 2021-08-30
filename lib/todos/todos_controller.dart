// import 'dart:io';
// import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class TodosController extends GetxController {
  // final http.Client client;

  // TodosController(this.client);

  final msg =
      jsonEncode({"identifier": "user2@gmail.com", "password": "user2@"});

  final headers = {"Content-Type": "application/json; charset=UTF-8"};

  Future<void> login() async {
    var res = await http.post(Uri.parse('http://localhost:1337/auth/local'),
        body: msg, headers: headers);

    try {
      if (res.statusCode == 200) {
        print(res.body);
      } else {
        print(res.statusCode);
      }
    } on PlatformException {
      throw 'no data found';
    } on SocketException {
      throw 'internet not found';
    }
  }
}
