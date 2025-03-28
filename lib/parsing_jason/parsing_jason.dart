import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ParsingJason extends StatelessWidget {
  const ParsingJason({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ParsingJason")));
  }
}

class Network {
  final String url;
  Network(this.url);
  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      print(response.statusCode);
    } // for it to be read uri
  }
}
