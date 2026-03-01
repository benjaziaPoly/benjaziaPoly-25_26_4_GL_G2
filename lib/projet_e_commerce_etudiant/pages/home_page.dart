import 'package:flutter/material.dart';
import 'package:projet01/projet_e_commerce_etudiant/const/images.dart';
import 'package:projet01/projet_e_commerce_etudiant/myWidgets/header_carrousel.dart';
import 'package:projet01/projet_e_commerce_etudiant/myWidgets/image_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page d'accueil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderCarrousel(),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Text(
              "Catégories:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(imagesCategorie.length, (index) {
                return ImageCategorie(
                  titre: imagesCategorieTitre[index],
                  image: imagesCategorie[index],
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Text(
              "Marques:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(imagesCategorie.length, (index) {
                return ImageCategorie(
                  titre: imagesCategorieTitre[index],
                  image: imagesCategorie[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
