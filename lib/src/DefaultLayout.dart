import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

void main() => runApp(DefaultLayout());

class DefaultLayout extends StatelessWidget{
  final String _appBarTitle = '';
  final String _headerImage = '';
  final String _headerTitle = '';
  final String _imageTile_1 = '';
  final String _imageTextTile_1 = '';
  final String _imageTile_2 = '';
  final String _imageTextTile_2 = '';
  final String _imageTile_3 = '';
  final String _imageTextTile_3 = '';

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(appBarTitle: _appBarTitle, headerImage: _headerImage, headerTitle: _headerTitle, imageTile_1: _imageTile_1, imageTextTile_1: _imageTextTile_1, imageTile_2: _imageTile_2, imageTextTile_2: _imageTextTile_2, imageTile_3: _imageTile_3, imageTextTile_3: _imageTextTile_3);
  }

}

class DefaultLayoutWidget extends StatelessWidget {
  const DefaultLayoutWidget({
    Key key,
    @required String appBarTitle,
    @required String headerImage,
    @required String headerTitle,
    @required String imageTile_1,
    @required String imageTextTile_1,
    @required String imageTile_2,
    @required String imageTextTile_2,
    @required String imageTile_3,
    @required String imageTextTile_3,
  }) : _appBarTitle = appBarTitle, _headerImage = headerImage, _headerTitle = headerTitle, _imageTile_1 = imageTile_1, _imageTextTile_1 = imageTextTile_1, _imageTile_2 = imageTile_2, _imageTextTile_2 = imageTextTile_2, _imageTile_3 = imageTile_3, _imageTextTile_3 = imageTextTile_3, super(key: key);

  final String _appBarTitle;
  final String _headerImage;
  final String _headerTitle;
  final String _imageTile_1;
  final String _imageTextTile_1;
  final String _imageTile_2;
  final String _imageTextTile_2;
  final String _imageTile_3;
  final String _imageTextTile_3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        automaticallyImplyLeading: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              navService.maybePop();
            }),
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
                    _headerImage,
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
                            _headerTitle,
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
            SizedBox(
              height: 1,
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
                          _imageTile_1,
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
                                _imageTextTile_1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
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
                          _imageTile_2,
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
                                _imageTextTile_2,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
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
                          _imageTile_3,
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
                                _imageTextTile_3,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
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