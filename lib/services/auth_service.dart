import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:projet_s/helper/helper_function.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final logger = Logger();

  // Méthode de connexion
  Future<bool> signInWithUserId(String userId) async {
    try {
      // Vérifier si l'identifiant existe dans la base de données Firestore
      DocumentSnapshot userSnapshot =
          await firestore.collection('users').doc(userId).get();

      if (userSnapshot.exists) {
        // Marquer l'utilisateur comme connecté dans les préférences partagées
        await HelperFunctions.saveUserLoggedInStatus(true);
        // Retourner true pour indiquer que l'authentification a réussi
        return true;
      } else {
        // Retourner false si l'identifiant n'existe pas dans la base de données
        return false;
      }
    } catch (e) {
      // Gérer les erreurs éventuelles
      logger.e('Erreur de connexion: $e');
      return false;
    }
  }

  // Méthode de déconnexion
  Future<void> signOut() async {
    try {
      // Marquer l'utilisateur comme déconnecté dans les préférences partagées
      await HelperFunctions.saveUserLoggedInStatus(false);
      // Déconnexion de Firebase Auth
      await firebaseAuth.signOut();
    } catch (e) {
      // Gérer les erreurs éventuelles
      logger.e('Erreur de déconnexion: $e');
    }
  }
}
