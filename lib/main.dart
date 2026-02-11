import 'package:flutter/material.dart';

void main() => runApp(const AppInstrumentos());

class AppInstrumentos extends StatelessWidget {
  const AppInstrumentos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Empleado());
  }
} // fin aplicacion skateshop

class Empleado extends StatelessWidget {
  const Empleado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instrumentos Sandoval',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 111, 125, 185),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.music_note, color: Colors.white),
            onPressed: () {
              // Acción de la nota musical
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Acción del corazón
            },
          ),
        ],
      ),
      body: const ListaTarjetas(),
    );
  }
}// fin clase empleado

class ListaTarjetas extends StatelessWidget {
  const ListaTarjetas({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos los datos para las 3 tarjetas
    final List<Map<String, String>> datos = [
      {
        'titulo': 'Gerente',
        'subtitulo': 'Especialista en Guitarras',
        'imagen': 'https://raw.githubusercontent.com/AndressSandoval/imagenes-para-flutter-6J-11-2-26/refs/heads/main/persona2.jpg'
      },
      {
        'titulo': 'Lauder',
        'subtitulo': 'Especialista en bajos',
        'imagen': 'https://raw.githubusercontent.com/AndressSandoval/imagenes-para-flutter-6J-11-2-26/refs/heads/main/persona.jpg'
      },
      {
        'titulo': 'Cajero',
        'subtitulo': 'Creando canciones increíbles',
        'imagen': 'https://raw.githubusercontent.com/AndressSandoval/imagenes-para-flutter-6J-11-2-26/refs/heads/main/persona1.jpg'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: datos.length,
      itemBuilder: (context, index) {
        return Card(
          color: const Color.fromARGB(255, 46, 50, 100), // Color de fondo negro
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(datos[index]['imagen']!),
            ),
            title: Text(
              datos[index]['titulo']!,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              datos[index]['subtitulo']!,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.red),
              onPressed: () {
                // Acción al presionar el like
              },
            ),
          ),
        );
      },
    );
  }
}