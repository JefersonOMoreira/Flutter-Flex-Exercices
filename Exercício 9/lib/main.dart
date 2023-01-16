import 'package:flutter/material.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/image/img1.jpg"))),
          child: conteudo(),
        ),
      ),
    );
  }
}

class conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(50)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/img2.jpg"))),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/image/img3.jpg",
              ))),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/img4.jpg"))),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/img5.jpg"))),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          height: 50,
          width: 300,
          color: Colors.white,
          child: Center(
            child: Text(
              "Galeria de FOTO",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(20)),
        SizedBox(
          width: 200,
          height: 50,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            child: Text(
              "Clique Aqui",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
