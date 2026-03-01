import 'package:flutter/material.dart';

class PageFavorite extends StatefulWidget {
  const PageFavorite({super.key});

  @override
  State<PageFavorite> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon Panier..."),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
