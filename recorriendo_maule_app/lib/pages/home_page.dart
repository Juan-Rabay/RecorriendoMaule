import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'rutas_list_page.dart';
import 'about_page.dart'; // Importa la nueva pantalla

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
              decoration: BoxDecoration(color: Color(0xFF2E7D32)), // verde personalizado
              child: Text(
                'Menú de navegación',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Rutas'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RutasListPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Acerca de'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bienvenido a Recorriendo Maule, acá podras buscar sobre rutas y información sobre la región del maule',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
