import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() {
  runApp(Speakers());
}

class Speakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      appBarTitle: 'Speakers',
      headerImage: 'assets/header.jpg',
      headerTitle: 'Latest Speakers',
      imageTile_1: 'assets/header.jpg',
      imageTextTile_1: 'Samsung',
      imageTile_2: 'assets/header.jpg',
      imageTextTile_2: 'Hyper-X',
      imageTile_3: 'assets/header.jpg',
      imageTextTile_3: 'Shure',
    );
  }
}