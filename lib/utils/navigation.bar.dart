import 'package:flutter/material.dart';

class NavigationBarCustom extends StatefulWidget {
  const NavigationBarCustom({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarCustom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor:
            Colors.blue[100], // Warna indikator untuk item yang dipilih
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(color: Colors.black), // Warna label untuk item yang dipilih
        ),
        iconTheme: MaterialStateProperty.all(
          const IconThemeData(
              color: Colors.blue), // Warna ikon untuk item yang dipilih
        ),
      ),
      child: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _onItemTapped(index);
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(icon: Icon(Icons.chat), label: 'Messages'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.person), label: 'You'),
        ],
      ),
    );
  }
}
