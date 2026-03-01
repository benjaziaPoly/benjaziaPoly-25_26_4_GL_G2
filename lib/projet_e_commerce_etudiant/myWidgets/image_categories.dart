import 'package:flutter/material.dart';

class ImageCategorie extends StatelessWidget {
  String titre;
  String image;
  ImageCategorie({super.key, required this.titre, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(titre),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
