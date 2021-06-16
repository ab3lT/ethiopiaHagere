import 'package:flutter/material.dart';

AppBar header(context, {bool isAppTitle = false, String titleText}) {
  return AppBar(
    title: Text(
      isAppTitle ? "Travil" : titleText,
      style: TextStyle(
        color: Colors.white,
        fontSize: isAppTitle ? 50.0 : 30,
        /*  fontFamily: isAppTitle ? "Signatra" : "" */
      ),
    ),
    centerTitle: true,
  );
}
