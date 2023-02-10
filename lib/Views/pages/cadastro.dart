import 'package:app_forum/tabs/barra_navega%C3%A7ao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 0, 105),
        title: const Text("Registrar-se"),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                      labelText: "Digite um nome",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                const TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                      labelText: "Confirme seu email",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                const TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                      labelText: "Digite sua senha",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                const TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                      labelText: "Confirme sua senha",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                const TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                      labelText: "Data de nascimento",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => BarraNavegacao()),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 81, 0, 105),
                  ),
                  child: const Text(
                    " Verificar",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
