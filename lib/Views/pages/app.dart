import 'package:app_forum/Views/pages/cadastro.dart';
import 'package:app_forum/Views/pages/login.dart';
import 'package:app_forum/tabs/barra_navega%C3%A7ao.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Forum",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const BarraNavegacao(),
        '/login': (context) => const Login(),
        'cadastro': (context) => const Cadastro(),
      },
    );
  }
}
