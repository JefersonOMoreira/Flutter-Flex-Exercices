import 'package:flutter/material.dart';

void main() {
  runApp(
    meuapp(),
  );
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Galeria de fotos"),
          backgroundColor: Color.fromARGB(255, 126, 1, 60),
        ),
        drawer: Drawer(
          child: menu(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/img1.gif"), fit: BoxFit.cover),
          ),
          child: conteudo(),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(),
        Text("Desenvolvido por:"),
        Text("Bruno Rodrigues"),
        Icon(
          Icons.copyright,
        ),
      ],
    );
  }
}

class conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Minhas Viagens",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
          ),
          Container(
            height: 200,
            width: 200,
            //color: Colors.green,
            child: Image.asset("assets/image/img2.gif"),
          ),
          Padding(padding: EdgeInsets.all(65)),
          Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/image/img3.gif"),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Curta e Compartilhe!"),
              Padding(padding: EdgeInsets.all(4)),
              Icon(Icons.thumb_up)
            ],
          ),
        ],
      ),
    );
  }
}
