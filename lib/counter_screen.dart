import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Compteur:',
              style: TextStyle(fontSize: 24.0),
            ),
             ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique de connexion
              },
              child: Text('Suivant'),
            // Ajoutez ici votre logique de compteur
             ),
          ],
        ),
      ),
    );
  }
}
