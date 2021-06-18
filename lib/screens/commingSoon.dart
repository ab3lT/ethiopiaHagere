import 'package:ethiopia/widgets/header.dart';
import 'package:flutter/material.dart';

class Default extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(context, titleText: " "),
      body: Container(
          height: sizeY,
          width: sizeX,
          child: Center(
              child: Text(
            'coming soon ',
            style: TextStyle(
              fontSize: 40,
            ),
          ))),
    );
  }
}
