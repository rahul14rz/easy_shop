import 'package:flutter/material.dart';
import 'package:easy_shop/src/DefaultLayout.dart';

void main() {
  runApp(WallPaperTv());
}

class WallPaperTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
        appBarTitle: 'Wallpaper TVs',
        headerImage: 'assets/header.jpg',
        headerTitle: 'Latest Wallpaper TVs',
        imageTile_1: 'assets/header.jpg',
        imageTextTile_1: 'LG',
        imageTile_2: 'assets/header.jpg',
        imageTextTile_2: 'Samsung',
        imageTile_3: 'assets/header.jpg',
        imageTextTile_3: 'Onida',
    );
  }
}