import 'package:flutter/material.dart';

class GestionIcones extends StatefulWidget {
  const GestionIcones({super.key});

  @override
  State<GestionIcones> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionIcones> {
  Color couleur = Colors.white;
  int index = 0;
  int taille = 150;
  List<IconData> mesIcones = [
    Icons.add,
    Icons.access_alarm_rounded,
    Icons.access_time_filled,
    Icons.accessible_forward_rounded,
  ];
  _changerIcones() {
    setState(() {
      if (index < mesIcones.length - 1)
        index++;
      else
        index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("AtL 3 - Gestion Icones "),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(mesIcones[index], size: 60, color: Colors.blue),
            ElevatedButton(
              onPressed: () {
                _changerIcones();
              },
              child: Text("Changer Icone"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      color: Colors.amber,
                      child: Image.network(
                        "https://picsum.photos/$taille",
                        fit: BoxFit.cover,
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          taille += 5;
                        });
                      },
                      label: Text("B1"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("T1"),
                    ElevatedButton.icon(onPressed: () {}, label: Text("B2")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
