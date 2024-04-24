import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'counter_screen.dart'; // Importez votre deuxième interface

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: LoginScreen())); // Lancez l'application avec l'écran de connexion
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'email',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final auth = FirebaseAuth.instance;
                auth.createUserWithEmailAndPassword(
                  email: 'email', 
                  password: 'password' // Remplacez 'password' par la valeur du champ password
                ).then((userCredential) {
                  // Si la création d'utilisateur est réussie, naviguer vers CounterScreen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CounterScreen()));
                }).catchError((error) {
                  // Gérez les erreurs ici
                  print("Erreur lors de la connexion: $error");
                });
              },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}


  Future<void> loginScreen() async {
    final auth = FirebaseAuth.instance;
    auth.signInWithEmailAndPassword(email: 'email', password: 'String');
  }

