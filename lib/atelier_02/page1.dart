import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My first Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Groupe GL -2",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ),
          Icon(Icons.star, color: Colors.pinkAccent, size: 90),
        ],
      ),
    ),
  );

  runApp(myApp);
}
