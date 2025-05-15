import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'rutas_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Menú de navegación', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()));
              },
            ),
            ListTile(
              title: const Text('Rutas'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RutasListPage()));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Bienvenido a Recorriendo Maule 👣'),
      ),
    );
  }
}
