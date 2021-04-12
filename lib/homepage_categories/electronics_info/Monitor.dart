import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';


void main() {
  runApp(Monitor());
}

class Monitor extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      appBarTitle: 'Monitors',
      headerImage: 'assets/header.jpg',
      headerTitle: 'Latest Monitors',
      imageTile_1: 'assets/header.jpg',
      imageTextTile_1: 'LG',
      imageTile_2: 'assets/header.jpg',
      imageTextTile_2: 'SAMSUNG',
      imageTile_3: 'assets/header.jpg',
      imageTextTile_3: 'DELL',
    );
  }
}