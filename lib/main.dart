import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'MyLogin.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: AfterSplash(),
        backgroundColor: Color(0xff444b6f),
        title: Text(
          'Easy Shop',
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal),
        ),
        image: Image.asset(
          'assets/adhoc_soft.png',
          color: Colors.white,
        ),
        photoSize: 100.0,
        loaderColor: Colors.white,
        pageRoute: _createRoute(),
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text(
          'Hello!',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'Raleway', fontSize: 18),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyLogin(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
