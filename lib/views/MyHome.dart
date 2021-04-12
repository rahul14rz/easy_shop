import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

const List<String> images = [
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_2.jpg',
  'assets/carousel/header_3.jpg',
  'assets/header.jpg',
  'assets/header.jpg',
];

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomeWidget(),
    );
  }
}

class MyHomeWidget extends StatelessWidget {
  MyHomeWidget({
    Key key,
  }) : super(key: key);

  static const TextStyle imgCaption = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'Raleway',color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            /* Carousel Slider */
            SizedBox(
              height: 250,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      String sliderHeader = '';
                      if (index == 0) {
                        sliderHeader = 'Easy Shop 24/7';
                      } else if (index == 1) {
                        sliderHeader = 'Electronics';
                      } else if (index == 2) {
                        sliderHeader = 'Accessories';
                      } else if (index == 3) {
                        sliderHeader = 'Storage Devices';
                      } else if (index == 4) {
                        sliderHeader = 'Other Electronics';
                      } else {
                        sliderHeader = 'Easy Shop 24/7';
                      }
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                          ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  margin: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Text(
                                    sliderHeader,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: 'Raleway',
                                        shadows: <Shadow>[
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset.fromDirection(1),
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    autoplayDelay: 4000,
                    layout: SwiperLayout.STACK,
                    itemWidth: 500,
                    indicatorLayout: PageIndicatorLayout.SLIDE,
                    autoplay: true,
                    itemCount: images.length,
                    pagination: new SwiperPagination(),
                    control: new SwiperControl(),
                  ),
                ],
              ),
            ),

            /* Electronics */
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Electronics',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                                width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/carousel/header_2.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Smartphones',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/sp'),
                        ),
                        InkWell(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.tightFor(
                                    width: 150, height: 150),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/carousel/header_3.jpg',
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      'Laptops',
                                      style: imgCaption,
                                    ),
                                  ],
                                )),
                            onTap: () => navService.pushNamed('/lp')),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Wallpaper TVs',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/wp'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Monitors',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/ms'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Desktop PCs',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/dc'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /* Accessories */
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Accessories',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Headphones',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/hps'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Keyboards',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/kbs'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Microphones',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/mps'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Mouse',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/me'),
                        ),
                        InkWell(
                          child: ConstrainedBox(
                            constraints:
                            BoxConstraints.tightFor(width: 150, height: 150),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/header.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Speakers',
                                  style: imgCaption,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => navService.pushNamed('/ss'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /* Storage devices */
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Storage devices',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'External HDD',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'SD cards',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Pen drives',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'SSD',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /* Other Electronics */
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Other Electronics',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Refrigerators',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Washing Machine',
                                style: imgCaption,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Mixer Grinders',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                          BoxConstraints.tightFor(width: 150, height: 150),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/header.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'TV',
                                style: imgCaption,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      );
  }
}
