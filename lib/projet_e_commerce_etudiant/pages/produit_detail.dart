import 'package:flutter/material.dart';

class DetailProduitsPage extends StatefulWidget {
  String title;
  DetailProduitsPage({super.key,required this.title});

  @override
  State<DetailProduitsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailProduitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détail Un Produit..."),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text(widget.title),
    );
  }
}
