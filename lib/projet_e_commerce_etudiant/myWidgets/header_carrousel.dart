import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet01/projet_e_commerce_etudiant/const/images.dart';

class HeaderCarrousel extends StatelessWidget {
  const HeaderCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.9,
        child: CarouselSlider(
          options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
          items: [
            Image.asset(imagesCarrousel[0], fit: BoxFit.cover),
            Image.asset(imagesCarrousel[1], fit: BoxFit.cover),
            Image.asset(imagesCarrousel[2], fit: BoxFit.cover),
            Image.asset(imagesCarrousel[3], fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
