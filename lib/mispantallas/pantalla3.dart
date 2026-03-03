import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar con color diferente y 2 iconos de acciones
      appBar: AppBar(
        title: const Text('Mis Viajes - Bryan'),
        backgroundColor: Colors.teal,
        actions: const [
          Icon(Icons.star_border),
          Icon(Icons.share),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección FAVORITOS
            _tituloSeccion("FAVORITOS", Colors.teal),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/chinaa.jpg"),
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/chinaaa.jpg"),
              ],
            ),
            const SizedBox(height: 20),

            // Sección MIS VUELOS
            _tituloSeccion("MIS VUELOS", Colors.blue),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/coreaa.jpg"),
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/coreaaa.jpg"),
              ],
            ),
            const SizedBox(height: 20),

            // Sección DESEOS
            _tituloSeccion("DESEOS", Colors.teal[700]!),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/espa%C3%B1aa.jpg"),
                _cuadroImagen("https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/espa%C3%B1aaa.jpg"),
              ],
            ),
          ],
        ),
      ),
      // Barra de navegación igual a la pantalla inicial
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Resaltamos el icono de perfil/viajes
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (index) {
          if (index == 0) Navigator.pushNamed(context, '/');
          if (index == 1) Navigator.pushNamed(context, '/pantalla2');
        },
      ),
    );
  }

  // Widget para los títulos de las secciones
  Widget _tituloSeccion(String texto, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }

  // Widget para los cuadros de imágenes pequeños
  Widget _cuadroImagen(String url) {
    return Container(
      width: 100, // Tamaño pequeño para que quepan dos por fila
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => 
            const Icon(Icons.image, color: Colors.blue),
      ),
    );
  }
}