import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

final List<String> images = [
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_2.jpg',
  'assets/carousel/header_3.jpg',
  'assets/header.jpg',
  'assets/header.jpg',
];
final List<String> gridImg = [
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
  'assets/carousel/header_1.jpg',
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

  static const TextStyle imgCaption = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Raleway',
      color: Colors.black);

  @override
  Widget build(BuildContext context) {
    final double rowSliderWidth = MediaQuery.of(context).size.width;

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
                  indicatorLayout: PageIndicatorLayout.SCALE,
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
            width: rowSliderWidth,
            height: 165,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/carousel/header_2.jpg',
                          rowText: 'Smartphones',
                          navPageName: '/smartphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/carousel/header_3.jpg',
                          rowText: 'Laptops',
                          navPageName: '/laptop'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Wallpaper TVs',
                          navPageName: '/wallpaper'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Monitors',
                          navPageName: '/monitor'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Desktop PCs',
                          navPageName: '/desktop'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/carousel/header_2.jpg',
                          rowText: 'Smartphones',
                          navPageName: '/smartphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/carousel/header_3.jpg',
                          rowText: 'Laptops',
                          navPageName: '/laptop'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Wallpaper TVs',
                          navPageName: '/wallpaper'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Monitors',
                          navPageName: '/monitor'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Desktop PCs',
                          navPageName: '/desktop'),
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
            width: rowSliderWidth,
            height: 165,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Headphones',
                          navPageName: '/headphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Keyboards',
                          navPageName: '/keyboard'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Microphones',
                          navPageName: '/microphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Mouse',
                          navPageName: '/mouse'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Speakers',
                          navPageName: '/speaker'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Headphones',
                          navPageName: '/headphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Keyboards',
                          navPageName: '/keyboard'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Microphones',
                          navPageName: '/microphone'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Mouse',
                          navPageName: '/mouse'),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Speakers',
                          navPageName: '/speaker'),
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
            width: rowSliderWidth,
            height: 165,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'External HDDs',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'SD cards',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Pen drives',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'SSD',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'External HDDs',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'SD cards',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'Pen drives',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'SSD',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'External HDDs',
                          navPageName: ''),
                      RowImageWidget(
                          imgCaption: imgCaption,
                          rowImage: 'assets/header.jpg',
                          rowText: 'SD cards',
                          navPageName: ''),
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
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: gridImg.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0
                ),
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    onTap: () {},
                    splashColor: Colors.indigo,
                    child: Image.asset(gridImg[index]),
                  );
                },
              )),
        ],
      ),
    );
  }
}

/* RowImageWidget */
class RowImageWidget extends StatelessWidget {
  const RowImageWidget({
    Key key,
    @required this.imgCaption,
    @required this.rowImage,
    @required this.rowText,
    @required this.navPageName,
  }) : super(key: key);

  final TextStyle imgCaption;

  final String rowImage;

  final String rowText;

  final String navPageName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 150, height: 150),
        child: Column(
          children: [
            Image.asset(
              rowImage,
              height: 100,
              fit: BoxFit.cover,
            ),
            Text(
              rowText,
              style: imgCaption,
            ),
          ],
        ),
      ),
      onTap: () => navService.pushNamed(navPageName),
    );
  }
}
