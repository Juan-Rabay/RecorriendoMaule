import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil de Usuario')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nombre: Charles du Bronx"),
            Text("Zona: Talca"),
            Text("Intereses: Historia, Naturaleza, Cultura"),
            Text("nombre Usuario: OIluminado_Charles"),
            Text("e-mail: charlesdubronx_edoBrasil@hotmail.com"),
          ],
        ),
      ),
    );
  }
}
