import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
                    email: 'email', password: 'password');
              },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loginScreen() async {
    final auth = FirebaseAuth.instance;
    auth.signInWithEmailAndPassword(email: 'email', password: 'String');
  }
}
