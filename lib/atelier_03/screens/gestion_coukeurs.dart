import 'package:flutter/material.dart';

class GestionCouleur extends StatefulWidget {
  const GestionCouleur({super.key});

  @override
  State<GestionCouleur> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionCouleur> {
  Color couleur = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("AtL 3 - Exercice 2 "),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (couleur == Colors.red)
                    couleur = Colors.green;
                  else
                    couleur = Colors.red;
                });
              },
              child: Text("Changer Couleur"),
            ),
          ],
        ),
      ),
    );
  }
}
