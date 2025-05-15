import 'package:flutter/material.dart';
import '../entity/ruta.dart';

class DetalleRutaPage extends StatelessWidget {
  final Ruta ruta;

  const DetalleRutaPage({super.key, required this.ruta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ruta.nombre)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ruta.imagenAsset),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Comuna: ${ruta.comuna}", style: const TextStyle(fontSize: 18)),
                  Text("Tipo: ${ruta.tipo}", style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Text(ruta.descripcion),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
