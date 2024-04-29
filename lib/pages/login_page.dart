import 'package:flutter/material.dart';
import 'package:projet_s/components/button_login.dart';
import 'package:projet_s/pages/menu_page.dart';
import 'package:projet_s/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userId = "";

  // Sign user method
  Future<void> signUserIn(String userId) async {
    if (!mounted) return;
    bool isLoggedIn = await AuthService().signInWithUserId(userId);
    if (!mounted) return;

    if (isLoggedIn) {
      // Authentification réussie, naviguer vers la page d'accueil
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MenuPage()),
      );
    } else {
      // Authentification échouée, afficher un message d'erreur
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Identifiant incorrect'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 173, 196),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Vos autres widgets ici...

              // Champ de saisie
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Matricule",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                  onChanged: (value) => setState(() {
                    userId = value; // Capturer l'identifiant saisi
                  }),
                ),
              ),

              const SizedBox(height: 50),

              // Bouton de Connexion
              MyButton(
                myOnTap: () => signUserIn(userId),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
