// ignore: file_names
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'May Day',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 232, 133, 133).withOpacity(0.3),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add, size: 50),
                  SizedBox(height: 10),
                  Text('Añadir servicio'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
