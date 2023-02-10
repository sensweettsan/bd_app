import 'package:app_forum/Views/pages/login.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            buidMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
      color: Color.fromARGB(255, 81, 0, 105),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                'App Delivery',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Olá, ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/login');
              },
              child: const Text(
                'Entre ou cadastre-se >',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget buidMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 4, //espaçamento vertical
        children: [
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Produtos'),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Lojas'),
              onTap: () {}),
          const Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
