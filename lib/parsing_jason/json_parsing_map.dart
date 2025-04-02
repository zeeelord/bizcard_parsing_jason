import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class jason_parsing_map extends StatefulWidget {
  const jason_parsing_map({super.key});

  @override
  State<jason_parsing_map> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<jason_parsing_map> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Network {
  final String url;
  Network(this.url);
  Future fetchData() async {
    print(url);
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body[0]);
      return json.encode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
