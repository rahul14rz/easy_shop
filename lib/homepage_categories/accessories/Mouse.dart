import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() {
  runApp(Mouse());
}

class Mouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      appBarTitle: 'Mouse',
      headerImage: 'assets/header.jpg',
      headerTitle: 'Latest Mice',
      imageTile_1: 'assets/header.jpg',
      imageTextTile_1: 'Logitech',
      imageTile_2: 'assets/header.jpg',
      imageTextTile_2: 'Zebronics',
      imageTile_3: 'assets/header.jpg',
      imageTextTile_3: 'Lenovo',
    );
  }
}