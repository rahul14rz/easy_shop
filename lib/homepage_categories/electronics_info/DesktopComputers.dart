import 'package:easy_shop/src/DefaultLayout.dart';
import 'package:flutter/material.dart';

void main() => runApp(DesktopComputers());

class DesktopComputers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultLayoutWidget(
       appBarTitle: 'Desktop PCs',
       headerImage: 'assets/header.jpg',
       headerTitle: 'Latest Desktop PCs',
       imageTile_1: 'assets/header.jpg',
       imageTextTile_1: 'DELL',
       imageTile_2: 'assets/header.jpg',
       imageTextTile_2: 'Acer',
       imageTile_3: 'assets/header.jpg',
       imageTextTile_3: 'Alienware',
     );
  }
}