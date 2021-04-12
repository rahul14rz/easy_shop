import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() => runApp(Laptop());

class Laptop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
        appBarTitle: 'Laptops',
        headerImage: 'assets/carousel/header_3.jpg',
        headerTitle: 'Latest Notebooks',
        imageTile_1: 'assets/laptops/hp.png',
        imageTextTile_1: 'Hp Envy',
        imageTile_2: 'assets/laptops/hp.png',
        imageTextTile_2: 'DELL',
        imageTile_3: 'assets/laptops/hp.png',
        imageTextTile_3: 'Lenovo',
    );
  }
}