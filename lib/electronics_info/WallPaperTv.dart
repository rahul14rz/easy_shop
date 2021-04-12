import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

void main() {
  runApp(WallPaperTv());
}

class WallPaperTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _WallPaperTv(),
    );
  }
}

class _WallPaperTv extends StatefulWidget {
  @override
  _WallPaperTvState createState() => _WallPaperTvState();
}

class _WallPaperTvState extends State<_WallPaperTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WallPaper TVs'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            navService.maybePop();
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/header.jpg',
                    fit: BoxFit.cover,
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
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
                            'Latest WallPaper TVs',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
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
              ),
            ),
            SizedBox(height: 1),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.indigo,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/header.jpg',
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              margin: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                color: Colors.indigo[400],
                              ),
                              child: Text(
                                'HP ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  shadows: <Shadow>[
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset.fromDirection(1)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.indigo,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/header.jpg',
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              margin: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                color: Colors.indigo[400],
                              ),
                              child: Text(
                                'ASUS ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  shadows: <Shadow>[
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset.fromDirection(1)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.indigo,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/header.jpg',
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              margin: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                color: Colors.indigo[400],
                              ),
                              child: Text(
                                'DELL ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  shadows: <Shadow>[
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset.fromDirection(1)),
                                  ],
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
