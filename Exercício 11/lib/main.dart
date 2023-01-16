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
      debugShowCheckedModeBanner: false,
      home: pagina1(),
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.redAccent, Colors.pinkAccent])),
        child: conteudoPagina1(),
      ),
    );
  }
}

class conteudoPagina1 extends StatefulWidget {
  const conteudoPagina1({super.key});

  @override
  State<conteudoPagina1> createState() => _conteudoPagina1State();
}

class _conteudoPagina1State extends State<conteudoPagina1> {
  int n1 = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "$n1",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (() {
                  print("Você Pressionou!!");
                  n1++;
                  if (n1 > 9223372036854775807 || n1 < 0) {
                    n1 = 0;
                  }
                  setState(() {});
                  print(n1);
                }),
                child: Text("Entrou"),
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
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextButton(
                onPressed: (() {
                  n1--;
                  if (n1 < 0 || n1 > 9223372036854775807) {
                    n1 = 0;
                  }
                  setState(() {});
                }),
                child: Text("Saiu"),
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
        ],
      ),
    );
  }
}
