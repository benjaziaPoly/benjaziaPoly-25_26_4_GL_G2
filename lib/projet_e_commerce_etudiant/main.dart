import 'package:flutter/material.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/barre_navigation.dart';
import 'package:projet01/projet_e_commerce_etudiant/pages/home_page.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:BarreNavigation(),
     //HomePage()
    );
    //BarreNavigation
  }
}
