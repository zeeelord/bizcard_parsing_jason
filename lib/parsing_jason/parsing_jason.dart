import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ParsingJason extends StatefulWidget {
  const ParsingJason({super.key});

  @override
  State<ParsingJason> createState() => _ParsingJasonState();
}

class _ParsingJasonState extends State<ParsingJason> {
  late Future data;
  // init a new varible here having the type of future
  @override
  void initState() {
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ParsingJason")));
  }
}

Future getData() async {
  Future data;
  // var  allows you to write data in a variable without worrying about it data type
  String url = "https://jsonplaceholder.typicode.com/posts";
  Network network = Network(url);
  // this is a class that will fetch the data
  data = network.fetchData();
  print(data);
  return data;
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
    } // for it to be read uri
  }
}
