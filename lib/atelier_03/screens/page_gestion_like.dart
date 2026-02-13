// classe sans etat :1 etat => stl StateLessWidget
// class avec N etat => stf=>stateFulWidget

import 'package:flutter/material.dart';

class GestionLike extends StatefulWidget {
  const GestionLike({super.key});

  @override
  State<GestionLike> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionLike> {
  int cpt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AtL 3 - Exercice 1 "),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 60),
              onTap: () {
                print("like++");
                setState(() {
                  cpt += 1;
                });

                print("cpt=$cpt");
              },
            ),
            Text(
              cpt.toString(),
              style: TextStyle(fontSize: 28, color: Colors.blue),
            ),
            InkWell(
              child: Icon(Icons.thumb_down, color: Colors.red, size: 60),
              onTap: () {
                print("like--");
                setState(() {
                  cpt -= 1;
                });

                print("cpt=$cpt");
              },
            ),
          ],
        ),
      ),
    );
  }
}
