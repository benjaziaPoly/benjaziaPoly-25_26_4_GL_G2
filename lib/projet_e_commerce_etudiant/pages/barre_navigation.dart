import 'package:flutter/material.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/favori.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/home_page.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/page_user.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/panier.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/produit_list.dart';

class BarreNavigation extends StatefulWidget {
  const BarreNavigation({super.key});

  @override
  State<BarreNavigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BarreNavigation> {
  int selecetedIndexIcon = 0;
  //astuce:il faudra utiliser le meme ORDRE des pages que celui des icones
  List<Widget> mesPages = [
    HomePage(),
    ListProduitsPage(),
    PagePanier(),
    PageFavorite(),
    UserInfo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selecetedIndexIcon = index;
          });
        },
        currentIndex: selecetedIndexIcon,

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[500],
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Acceuil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Liste Produits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "mon Panier",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoris"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profil"),
        ],
      ),

     
      body: mesPages[selecetedIndexIcon],
    );
  }
}
