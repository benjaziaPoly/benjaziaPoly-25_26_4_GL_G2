import 'package:flutter/material.dart';

class DetailProduitsPage extends StatefulWidget {
  const DetailProduitsPage({super.key});

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
      body: Text("To DO....."),
    );
  }
}
