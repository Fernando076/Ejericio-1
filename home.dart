// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

TextEditingController TxtLista = TextEditingController();
TextEditingController TxtNumero = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 1"),
      ),
      body: Column(children: [
        TextField(
          controller: TxtLista,
        ),
        TextField(
          controller: TxtNumero,
        ),
        ElevatedButton(
          onPressed: () {
            String Lista = TxtLista.text;
            int Numero = int.parse(TxtNumero.text);

            List<String> splint = Lista.split(",");
            List<int> lis = [0];

            for (int i = 0; i < splint.length - 1; i++) {
              for (int j = 1; j < splint.length; j++) {
                int x = (int.parse(splint[i]) * int.parse(splint[j]));
                lis.add(x);

                // ignore: avoid_print
                print(x);
              }
            }

            for (int i = 0; i < lis.length; i++) {
              if (Numero == lis[i]) {
                // ignore: avoid_print
                print("el numero si existe en la lista");
              }
            }
          },
          child: const Text("Aceptar"),
        )
      ]),
    );
  }
}
