import 'dart:convert';

import 'package:cozy_app/models/space.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecomendedSpces() async {
    var result = await http
        .get(Uri.parse("http://bwa-cozy.herokuapp.com/recommended-spaces"));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces =
          data.map<Space>((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
