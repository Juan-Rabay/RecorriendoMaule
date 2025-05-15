import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de la App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recorriendo Maule',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Esta aplicación fue desarrollada como la maqueta funcional 1 para el ramo de Programación de Dispositivos Móviles. '
                'El objetivo de esta app es difundir el patrimonio turístico y cultural de la Región del Maule, Chile, a través de rutas, lugares históricos, arte rupestre y información general.',
              ),
              SizedBox(height: 16),
              Text(
                '👤 Autor:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Juan Rabay de Castro'),
              Text('Institución: Universidad de Talca'),
              Text('LircayHub Challenge for Startups'),

              SizedBox(height: 16),
              Text(
                '📦 Versión:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('1.0.0'),

              SizedBox(height: 32),
              Text(
                'Recorriendo Maule',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
