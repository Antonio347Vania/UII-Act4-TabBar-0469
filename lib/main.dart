import 'package:flutter/material.dart';
import 'mis_paginas_tab/pantalla_arroz.dart';
import 'mis_paginas_tab/pantalla_leche.dart';
import 'mis_paginas_tab/pantalla_carne.dart';
import 'mis_paginas_tab/pantalla_aceite.dart';
import 'mis_paginas_tab/pantalla_integral.dart';

void main() => runApp(const SorianaTabApp());

class SorianaTabApp extends StatelessWidget {
  const SorianaTabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soriana TabBar',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF9EB),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaPrincipalTab(),
      },
    );
  }
}

class PantallaPrincipalTab extends StatefulWidget {
  const PantallaPrincipalTab({super.key});

  @override
  State<PantallaPrincipalTab> createState() => _PantallaPrincipalTabState();
}

class _PantallaPrincipalTabState extends State<PantallaPrincipalTab> {
  int _indexActual = 0;

  final List<Widget> _paginas = [
    const PantallaArroz(),
    const PantallaLeche(),
    const PantallaCarne(),
    const PantallaAceite(),
    const PantallaIntegral(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7C02F), // Amarillo Soriana
        centerTitle: true,
        title: const Text("Soriana Digital", 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.network(
                  'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
      body: _paginas[_indexActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexActual,
        onTap: (index) => setState(() => _indexActual = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4CAF50), // Verde Soriana
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grain), label: 'Arroz'),
          BottomNavigationBarItem(icon: Icon(Icons.water_drop), label: 'Leche'),
          BottomNavigationBarItem(icon: Icon(Icons.kebab_dining), label: 'Carnes'),
          BottomNavigationBarItem(icon: Icon(Icons.oil_barrel), label: 'Aceite'),
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: 'Integral'),
        ],
      ),
    );
  }
}