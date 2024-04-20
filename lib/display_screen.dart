import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
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
              'Ancien index:',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Nouveau index:',
              style: TextStyle(fontSize: 18.0),
            ),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour importer les données
              },
              child: Text('Importer'),
            ),
          ],
        ),
      ),
    );
  }
  
  
}
