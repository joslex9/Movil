// ignore: file_names
import 'package:flutter/material.dart';
import 'RegisterPage.dart'; // Importa la página de registro

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'May Day',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email or User',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Lógica para "Forgot password?"
                    // Por ejemplo, mostrar un diálogo o navegar a una página para restablecer la contraseña
                  },
                  child: Text('Forgot password?'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para "SIGN IN"
                    // Por ejemplo, verificar las credenciales del usuario y navegar a la siguiente pantalla si son válidas
                  },
                  child: Text('SIGN IN'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navegar a la página de registro (RegisterPage)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Create an account'),
            ),
          ],
        ),
      ),
    );
  }
}
