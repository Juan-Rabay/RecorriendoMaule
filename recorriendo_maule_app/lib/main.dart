import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';

void main() 
{
  runApp(const RecorriendoMauleApp());
}
class RecorriendoMauleApp extends StatelessWidget 
{
  const RecorriendoMauleApp({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Recorriendo Maule',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32), // Verde Bosque
        ),
        scaffoldBackgroundColor: const Color(0xFFC8E6C9), // Verde claro
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E7D32),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
