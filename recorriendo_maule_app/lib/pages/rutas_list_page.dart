import 'package:flutter/material.dart';
import '../entity/ruta.dart';
import 'detalle_ruta_page.dart';

class RutasListPage extends StatelessWidget {
  const RutasListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Ruta> rutas = [
      Ruta(
        nombre: "Parque Nacional Radal Siete Tazas",
        comuna: "Molina",
        tipo: "Natural",
        descripcion: "Famoso por sus cascadas y formaciones rocosas.",
        imagenAsset: "assets/images/siete_tazas.jpg",
      ),
      Ruta(
        nombre: "Laguna del Maule",
        comuna: "San Clemente",
        tipo: "Natural",
        descripcion: "Laguna de origen glacial ideal para acampar y trekking.",
        imagenAsset: "assets/images/laguna_maule.jpg",
      ),
      Ruta(
        nombre: "Ruta del Arte Rupestre",
        comuna: "San Clemente, Parral (Villa Baviera), Linares (Fundo Quiñe ), Talca (sector Melado), ",
        tipo: "Cultural",
        descripcion: "Sitios arqueológicos con petroglifos y pinturas rupestres.",
        imagenAsset: "assets/images/arte_rupestre.jpg",
      ),
      Ruta(
        nombre: "Ruta del Vino",
        comuna: "Curicó - Talca - Linares",
        tipo: "Gastronómica",
        descripcion: "Recorrido por viñas tradicionales de la región.",
        imagenAsset: "assets/images/ruta_vino.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Rutas Disponibles")),
      body: ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, index) {
          final ruta = rutas[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 4,
            child: ListTile(
              leading: Image.asset(ruta.imagenAsset, width: 60, fit: BoxFit.cover),
              title: Text(ruta.nombre),
              subtitle: Text(ruta.comuna),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetalleRutaPage(ruta: ruta),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
