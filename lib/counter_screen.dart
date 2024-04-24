import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestion_suivi/display_screen.dart';
class CounterScreen extends StatelessWidget {
   final TextEditingController _controller = TextEditingController();
    final TextEditingController _ancienIndexController = TextEditingController();
  final TextEditingController _nouveauIndexController = TextEditingController();

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
             Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Entrez la réference du compteur',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance;
                String compteur = _controller.text;
                String ancienIndex = _ancienIndexController.text;
                String nouveauIndex = _nouveauIndexController.text;
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DisplayScreen( compteur, ancienIndex: ancienIndex,nouveauIndex: nouveauIndex,)),
                    
                  );
                  
              },
              child: Text('Suivant'),
            ),
          ],
        ),
      ),
    );
  }
}
