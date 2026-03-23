import 'package:flutter/material.dart';

Widget buildTarjetaSoriana(String nombre, String descripcion, String url) {
  return Scaffold(
    backgroundColor: const Color(0xFFFFF9EB), // Fondo crema de la app
    body: Center(
      child: Container(
        width: 380, // Ancho tipo Column Layout
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.orange, // Color naranja solicitado
          borderRadius: BorderRadius.circular(25), // Bordes muy redondeados
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Contenedor blanco para la imagen
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  url,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => 
                      const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Texto del Nombre
            Text(
              nombre,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Texto de Descripción
            Text(
              descripcion,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}