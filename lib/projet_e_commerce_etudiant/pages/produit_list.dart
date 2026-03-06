import 'package:flutter/material.dart';
import 'package:projet01/projet_e_commerce_etudiant/data/list_produits.dart';
import 'package:projet01/projet_e_commerce_etudiant/myWidgets/un_produit.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/produit_detail.dart';

class ListProduitsPage extends StatefulWidget {
  const ListProduitsPage({super.key});

  @override
  State<ListProduitsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListProduitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des Produits..."),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
        children: List.generate(AllProductData.Produits.length, (index) {
          return InkWell(
            onTap: () {
              print(AllProductData.Produits[index].title);
              DetailProduitsPage(title: AllProductData.Produits[index].title);
            },
            child: WidgetProduit(produit: AllProductData.Produits[index]),
          );
        }),
      ),
    );
  }
}
