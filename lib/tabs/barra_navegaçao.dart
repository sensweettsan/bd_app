import 'package:app_forum/Views/pages/home.dart';
import 'package:app_forum/Views/pages/pages.dart';
import 'package:app_forum/components/components.dart';
import 'package:flutter/material.dart';

class BarraNavegacao extends StatefulWidget {
  const BarraNavegacao({super.key});

  @override
  State<BarraNavegacao> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BarraNavegacao> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = [
    Home(),
    Produtos(),
    Text(
      'Carrinho',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 0, 105),
        title: const Text('Francesco Virgolini'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cookie),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Carrinho',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 81, 0, 105),
        onTap: _onItemTapped,
      ),
    );
  }
}
