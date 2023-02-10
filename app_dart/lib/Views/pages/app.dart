import 'package:flutter/material.dart';

import '../../tabs/barra_navegaçao.dart';
import 'pages.dart';

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
