import 'package:flutter/material.dart';

class MensajesDestacadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Mensajes destacados',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: IconButton(
                iconSize: 60.0,
                icon: Icon(Icons.stars_rounded, color: Colors.white),
                onPressed: () {
                  // Acción al presionar el botón de la estrella
                },
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Mantén presionado un mensaje en cualquier chat para destacarlo, así podrás encontrarlo fácilmente más tarde.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MensajesDestacadosScreen(),
  ));
}
