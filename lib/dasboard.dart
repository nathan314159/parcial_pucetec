import 'package:flutter/material.dart';
import 'login.dart'; // Importa tu LoginPage aquí

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final bgColor = _isDarkMode ? Colors.black : Colors.white;
    final textColor = _isDarkMode ? Colors.white : Colors.black;
    final appBarColor = _isDarkMode ? Colors.grey[900] : Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: appBarColor,
        actions: [
          // Botón de cambio de tema
          IconButton(
            icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            tooltip: 'Cambiar tema',
          ),
          // Botón salir
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            tooltip: 'Salir',
          ),
        ],
      ),
      body: Container(
        color: bgColor,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'Bienvenido al Dashboard',
            style: TextStyle(fontSize: 20, color: textColor),
          ),
        ),
      ),
    );
  }
}
