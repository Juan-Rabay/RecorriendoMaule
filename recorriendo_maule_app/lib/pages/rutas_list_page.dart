import 'package:flutter/material.dart';
import '../entity/ruta.dart';
import 'detalle_ruta_page.dart';

class RutasListPage extends StatelessWidget {
  const RutasListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Ruta> rutas = [
      Ruta(nombre: "Ruta del Arte Rupestre", comuna: "San Javier", tipo: "Cultural", descripcion: "Ruta de sitios arqueológicos."),
      Ruta(nombre: "Ruta del Vino", comuna: "Curicó", tipo: "Gastronómica", descripcion: "Recorrido por viñas del Maule."),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Rutas Disponibles")),
      body: ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(rutas[index].nombre),
            subtitle: Text(rutas[index].comuna),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetalleRutaPage(ruta: rutas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
