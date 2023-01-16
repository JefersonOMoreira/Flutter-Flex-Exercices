import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 44, 44),
        appBar: AppBar(
          title: Center(child: Text("Boa Tarde")),
          backgroundColor: Color.fromARGB(255, 105, 105, 105),
        ),
        body: Center(
            child: Container(
          child: Column(
            children: [
              Icon(
                Icons.favorite_border,
              ),
              Icon(
                Icons.search,
              )
            ],
          ),
        )),
      ),
    ),
  );
}
