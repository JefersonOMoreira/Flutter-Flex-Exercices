import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 2, 2),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 110, 1, 1),
          title: Text("Melhor Aplicativo"),
        ),
        body: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Mobile e IoT",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Container(
                height: 100,
                width: 300,
                color: Color.fromARGB(255, 255, 0, 0),
                child: Center(
                    child: Text(
                  "Fluter",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
