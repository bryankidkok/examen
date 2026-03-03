import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar con los requisitos: texto específico y 2 iconos
      appBar: AppBar(
        title: const Text('Bryan Villalobos 6J'),
        backgroundColor: Colors.blueAccent,
        actions: const [
          Icon(Icons.airplane_ticket),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          // Parte superior: Título y Campos de texto
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "DATOS DEL PASAJERO PARA SU PERFIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18, 
                      color: Colors.blue
                    ),
                  ),
                  const SizedBox(height: 10),
                  _inputCampo("NOMBRE"),
                  _inputCampo("DOCUMENTO"),
                  _inputCampo("CORREO"),
                  _inputCampo("TELÉFONO"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (bool? value) {}),
                      const Text("GUARDAR MIS DATOS", 
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // SECCIÓN INFERIOR: Imagen y Botón (Arriba de la barra de navegación)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
            ),
            child: Column(
              children: [
                // Imagen de Perfil cuadrada como en el dibujo
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Image.network(
                    'https://raw.githubusercontent.com/TuUsuario/TuRepo/main/perfil.png', // Tu URL de GitHub
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => 
                        const Icon(Icons.account_box, size: 80, color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 8),
                // Botón Guardar
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para guardar o navegar
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder() // Botón cuadrado según dibujo
                    ),
                    child: const Text("GUARDAR", 
                      style: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/pantalla2');
        },
      ),
    );
  }

  // Widget de ayuda para los inputs
  Widget _inputCampo(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
        ),
      ),
    );
  }
}