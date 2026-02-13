import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 5"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 60),
              onTap: () {
                print("like++");
              },
            ),
            Text("0", style: TextStyle(fontSize: 28, color: Colors.blue)),
            InkWell(
              child: Icon(Icons.thumb_down, color: Colors.red, size: 60),
              onTap: () {
                print("Like--");
              },
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
