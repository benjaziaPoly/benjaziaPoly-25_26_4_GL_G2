import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          MyButton(txt: "Bouton 01", txtCouleur: Colors.blue),
          Expanded(
            flex: 3,
            child: Icon(Icons.ac_unit, size: 20, color: Colors.blue),
          ),
          MyButton(txt: "Bouton 02", h: 180, w: 140, txtCouleur: Colors.green),
          Expanded(
            flex: 2,
            child: Icon(Icons.add_circle, size: 40, color: Colors.blue),
          ),
          MyButton(txt: "Bouton 03", h: 80, w: 320, txtCouleur: Colors.green),
        ],
      ),
    ),
  );
  runApp(myApp);
}

Widget MyButton({
  required String txt,
  double h = 90,
  double w = 150,
  required Color txtCouleur,
}) {
  return Padding(
    padding: EdgeInsets.only(top: 18),
    child: Center(
      child: SizedBox(
        height: h,
        width: w,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(children: [Icon(Icons.add), Text(txt)]),
          style: ElevatedButton.styleFrom(
            backgroundColor: txtCouleur,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadowColor: Colors.red,
            elevation: 8,
          ),
        ),
      ),
    ),
  );
}
