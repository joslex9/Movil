import 'package:flutter/material.dart';

class AjustesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ajustes',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Color.fromARGB(255, 0, 0, 0),
                  onPressed: () {
                    // Acción al presionar el icono de búsqueda
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/leo_avatar.jpg'), // Reemplaza 'assets/leo_avatar.jpg' con la ruta de tu imagen
                    radius: 30.0,
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'user',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'cule sueño',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildSettingItem(
                  leadingIcon: Icons.key,
                  title: 'Cuenta',
                  subtitle: 'Notificaciones de seguridad, cambiar número',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.lock,
                  title: 'Privacidad',
                  subtitle: 'Bloquear contactos, mensajes temporales',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.image,
                  title: 'Avatar',
                  subtitle: 'Crear, editar, administrar foto del perfil',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.chat,
                  title: 'Chats',
                  subtitle: 'Tema, fondos de pantalla, historial de chat',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.notifications,
                  title: 'Notificaciones',
                  subtitle: 'Tonos de mensajes, grupos y llamadas',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.cloud,
                  title: 'Almacenamiento y datos',
                  subtitle: 'Uso de red, descarga automática',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.language,
                  title: 'Idioma de la aplicación',
                  subtitle: 'Español (idioma del dispositivo)',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.help,
                  title: 'Ayuda',
                  subtitle:
                      'Centro de ayuda, contáctanos, política de privacidad',
                ),
                _buildSettingItem(
                  leadingIcon: Icons.person,
                  title: 'Invitar amigos',
                  subtitle: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(
      {required IconData leadingIcon,
      required String title,
      required String subtitle}) {
    return InkWell(
      onTap: () {
        // Acción al seleccionar el ajuste
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Icon(leadingIcon),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(subtitle),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
