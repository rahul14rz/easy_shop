import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() {
  runApp(HeadPhones());
}

class HeadPhones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      appBarTitle: 'Headphones',
      headerImage: 'assets/header.jpg',
      headerTitle: 'Latest Headphones',
      imageTile_1: 'assets/header.jpg',
      imageTextTile_1: 'Logitech',
      imageTile_2: 'assets/header.jpg',
      imageTextTile_2: 'Hyper-X',
      imageTile_3: 'assets/header.jpg',
      imageTextTile_3: 'Sony',
    );
  }
}