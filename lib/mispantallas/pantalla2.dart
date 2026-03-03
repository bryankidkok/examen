import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Destinos Mundiales'),
        backgroundColor: Colors.indigo,
        actions: const [Icon(Icons.notifications), Icon(Icons.search)],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          _cardDestino("CHINA", "https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/china.jpg"),
          _cardDestino("JAPÓN", "https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/japon.jpg"),
          _cardDestino("ESPAÑA", "https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/espa%C3%B1a.jpg"),
          _cardDestino("COREA SUR", "https://raw.githubusercontent.com/bryankidkok/examen/refs/heads/main/corea.jpg"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  Widget _cardDestino(String titulo, String url) => Card(
    child: Column(
      children: [
        Expanded(child: Image.network(url, fit: BoxFit.cover)),
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}