import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget appBar(String titulo) {
  return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.lightBlue.shade900,
          statusBarIconBrightness: Brightness.light),
      title: Text(titulo),
      backgroundColor: Colors.white,
      foregroundColor: Colors.grey,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.grey.shade800,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite),
          color: Colors.grey.shade800,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.my_location),
          color: Colors.grey.shade800,
        )
      ]);
}
