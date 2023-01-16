import 'dart:math';

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
      //home: pagina1(),
      //home: pagina2(),
      //home: login(),
      routes: {
        "/": (context) => login(),
        "pagina1": (context) => pagina1(),
        "pagina2": (context) => pagina2(),
      },
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Pagina 1"),
            Icon(
              Icons.arrow_right_alt,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudo1(),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(
          size: 100,
        ),
        Padding(padding: EdgeInsets.all(3)),
        Text("Desenvolvido por:"),
        Padding(padding: EdgeInsets.all(3)),
        Text("Jeff Moreira"),
        Padding(padding: EdgeInsets.all(3)),
        Icon(
          Icons.copyright,
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "pagina1");
          },
          child: Text("Página 1"),
        ),
        Padding(padding: EdgeInsets.all(5)),
        TextButton(
            onPressed: (() {
              Navigator.popAndPushNamed(context, "pagina2");
            }),
            child: Text("Página 2")),
        Padding(padding: EdgeInsets.all(5)),
        TextButton(
            onPressed: (() {
              Navigator.popAndPushNamed(context, "/");
            }),
            child: Text("Login"))
      ],
    );
  }
}

class conteudo1 extends StatefulWidget {
  @override
  State<conteudo1> createState() => _conteudo1State();
}

class _conteudo1State extends State<conteudo1> {
  bool status = false;
  Color cor1 = Colors.green;
  Color cor2 = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: cor1,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 200,
            width: 200,
            color: cor2,
          ),
          Padding(padding: EdgeInsets.all(20)),
          Switch(
            value: status,
            onChanged: (value) {
              status = value;
              print("$status");
              if (status) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class pagina2 extends StatelessWidget {
  Color cor1 = Colors.green;
  Color cor2 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            Padding(padding: EdgeInsets.all(5)),
            Text("Página 2")
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              cor1 =
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              cor2 = Colors.primaries[Random().nextInt(Colors.primaries.length)]
            ])),
        child: conteudo2(),
      ),
    );
  }
}

class conteudo2 extends StatefulWidget {
  @override
  State<conteudo2> createState() => _conteudo2State();
}

class _conteudo2State extends State<conteudo2> {
  double tamanho = 0;
  int n1 = 0;
  Color cor1 = Colors.green;
  Color cor2 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: tamanho,
            onChanged: (value) {
              tamanho = value;
              n1 = tamanho.toInt();
              if (n1 < 10) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 20) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 30) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 40) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 50) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 60) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 70) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 80) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 < 90) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              } else if (n1 == 100) {
                cor1 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                cor2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              }

              setState(() {});
            },
            min: 0,
            max: 100,
          ),
          Text(
            "$n1",
            style: TextStyle(
              fontSize: 60,
            ),
          ),
        ],
      ),
    );
  }
}

class login extends StatelessWidget {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder()),
              ),
              Padding(padding: EdgeInsets.all(3)),
              TextField(
                onChanged: (value) {
                  senha = value;
                },
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder()),
              ),
              Padding(padding: EdgeInsets.all(15)),
              TextButton(
                onPressed: (() {
                  if (email == "fit@fit.br" && senha == "fit") {
                    print("Usuário Autorizado");
                    Navigator.popAndPushNamed(context, "pagina1");
                  } else {
                    print("Usuário Não Autorizado");
                  }
                }),
                child: Text("Login"),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    onSurface: Colors.black,
                    //padding: EdgeInsets.all(10),
                    fixedSize: Size(125, 50),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1, color: Color.fromARGB(255, 115, 2, 2)),
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
