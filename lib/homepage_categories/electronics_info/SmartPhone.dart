import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';


void main() => runApp(SmartPhone());

class SmartPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
        appBarTitle: 'Smartphones',
        headerImage: 'assets/carousel/header_2.jpg',
        headerTitle: 'Latest Smartphones',
        imageTile_1: 'assets/smartphones/pixel_5.png',
        imageTextTile_1: 'Pixel 5',
        imageTile_2: 'assets/smartphones/galaxy_s21.png',
        imageTextTile_2: 'Galaxy S21',
        imageTile_3: 'assets/smartphones/oneplus_9.png',
        imageTextTile_3: 'OnePlus 9',
    );
  }
}
