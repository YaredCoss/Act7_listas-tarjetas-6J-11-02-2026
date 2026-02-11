import 'package:flutter/material.dart';

void main() => runApp(AppFlashcards());

class AppFlashcards extends StatelessWidget {
  const AppFlashcards({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlashCards",
      home: Categorias(),
    );
  }
} //fin clase AppFlashCards

class Categorias extends StatelessWidget {
  const Categorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Flashcards Coss',
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,
  backgroundColor: Colors.blue,
  leading: const Icon(
    Icons.camera_alt,
    color: Color.fromARGB(255, 131, 49, 49),
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 150, 7, 7)),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.edit, color: Color.fromARGB(255, 114, 196, 48)),
      onPressed: () {},
    ),
  ],
),
body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Llamamos a nuestra función personalizada 3 veces
            _crearTarjeta('Yared Coss', 'Estudiante', 'https://raw.githubusercontent.com/YaredCoss/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado.png'),
            _crearTarjeta('Gael Carrasco', 'Diseñadora UX/UI', 'https://raw.githubusercontent.com/YaredCoss/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado2.png'),
            _crearTarjeta('Diego Cruz', 'Limpia Pisos', 'https://raw.githubusercontent.com/YaredCoss/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado3.png'),
          ],
        ),
    );
  }
}

  // Función para evitar repetir código (Refactorización para principiantes)
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.blueAccent[400], // Fondo azul atractivo
      elevation: 5, // Sombra para dar profundidad
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
          radius: 25,
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
        onTap: () {
          // Aquí puedes añadir una acción al tocar la tarjeta
        },
      ),
    );
  } // fin clase categorias 