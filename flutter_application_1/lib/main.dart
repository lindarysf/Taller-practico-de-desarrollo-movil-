import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const TallerApp());
}

class TallerApp extends StatelessWidget {
  const TallerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taller Móvil Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9EEF1),
        primaryColor: const Color(0xFFBF2B54),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFBF2B54),
          primary: const Color(0xFFBF2B54),
          secondary: const Color(0xFFda6c81),
        ),
        useMaterial3: true,
      ),
      home: const MainNavigatorScreen(),
    );
  }
}

class MainNavigatorScreen extends StatefulWidget {
  const MainNavigatorScreen({super.key});

  @override
  State<MainNavigatorScreen> createState() => _MainNavigatorScreenState();
}

class _MainNavigatorScreenState extends State<MainNavigatorScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ChatsScreen(),
    LaboratoryScreen(),
  ];

  // Aquí cambias los títulos de cada pestaña:
  final List<String> _titles = const [
    'webssssssss', // Pestaña 0 (Home)
    'Chats', // Pestaña 1 (Chats)
    'Laboratorio', // Pestaña 2 (Laboratorio)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_currentIndex],
        ), // Lee el título según el índice actual
        backgroundColor: const Color(0xFFda6c81),
        foregroundColor: Colors.white,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFFBF2B54),
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFFF5E9D0),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex =
                index; // Actualiza la pestaña activa y cambia el título
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: 'Laboratorio',
          ),
        ],
      ),
    );
  }
}
