import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BizCard")),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }
}

_getCard() {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Oladayo"),
        Text("OladayoAfolabi@outlook.com"),
        Text("welcome"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.person), Text("T : building with me")],
        ),
      ],
    ),
  );
}

_getAvatar() {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.green, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      image: DecorationImage(
        image: NetworkImage("https://picsum.photos/200/300"),
        fit: BoxFit.cover,
      ),
    ),
  );
}
