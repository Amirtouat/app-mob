import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DisplayScreen extends StatelessWidget {
   final String compteur;
  final String ancienIndex;
  final String nouveauIndex;

  DisplayScreen(this.compteur, {this.ancienIndex = '', this.nouveauIndex = ''});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affichage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Numéro du compteur:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              'Ancien index:',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Nouveau index:',
              style: TextStyle(fontSize: 18.0),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance;
                            },
              child: Text('Importer'),
            ),
          ],
        ),
      ),
    );
  }
  
  
}
