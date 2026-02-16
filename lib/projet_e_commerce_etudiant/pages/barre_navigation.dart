import 'package:flutter/material.dart';

class BarreNavigation extends StatefulWidget {
  const BarreNavigation({super.key});

  @override
  State<BarreNavigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BarreNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Page d'accueil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
