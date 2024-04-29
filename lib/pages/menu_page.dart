import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Mon Application',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                // Action à effectuer lorsque l'utilisateur appuie sur Accueil
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Paramètres'),
              onTap: () {
                // Action à effectuer lorsque l'utilisateur appuie sur Paramètres
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            // Ajoutez d'autres éléments de menu ici...
          ],
        ),
      ),
      body: const Center(
        child: Text('Contenu de l\'écran principal'),
      ),
    );
  }
}
