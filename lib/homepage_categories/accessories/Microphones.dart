import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() {
  runApp(Microphones());
}

class Microphones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      appBarTitle: 'Microphones',
      headerImage: 'assets/header.jpg',
      headerTitle: 'Latest Microphones',
      imageTile_1: 'assets/header.jpg',
      imageTextTile_1: 'BlueMouse',
      imageTile_2: 'assets/header.jpg',
      imageTextTile_2: 'Shure',
      imageTile_3: 'assets/header.jpg',
      imageTextTile_3: 'Sennheiser',
    );
  }
}