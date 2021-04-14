import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'HomePage.dart';

void main() => runApp(MyLogin());

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(title: 'Easy Shop Login'),
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();

  void clear() {
    _textController1.clear();
    _textController2.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(widget.title),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login_bg.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 175,
                  height: 175,
                  child: Image.asset(
                    'assets/adhoc_soft.png',
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 45,
                  child: TextField(
                    controller: _textController1,
                    maxLength: 20,
                    cursorWidth: 2.0,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Raleway',
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      enabledBorder: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(
                          color: Color(0XFF2a55a3),
                        ),
                      ),
                      prefixIcon: Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Color(0XFF2a55a3),
                        ),
                        child: Icon(Icons.account_circle_rounded,
                            color: Colors.white),
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Color(0XFF2a55a3)),
                      counterText: '',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 45,
                  child: TextField(
                    controller: _textController2,
                    obscureText: true,
                    maxLength: 20,
                    cursorWidth: 2.0,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Raleway',
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      enabledBorder: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(
                          color: Color(0XFF2a55a3),
                        ),
                      ),
                      prefixIcon: Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Color(0XFF2a55a3),
                        ),
                        child: Icon(Icons.vpn_key_rounded, color: Colors.white),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0XFF2a55a3)),
                      counterText: '',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 7,
                          shadowColor: Colors.grey,
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                          primary: Color(0XFF2a55a3),
                        ),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _textController1.clear();
                            _textController2.clear();
                          });
                        },
                        child: Text(
                          'Reset',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 7,
                          shadowColor: Colors.grey,
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                          primary: Color(0XFF7cbc53),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}