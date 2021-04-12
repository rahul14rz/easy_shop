import 'package:flutter/material.dart';
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
      home: LoginScreen(title: 'Login'),
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
        backgroundColor: Color(0XFF2a55a3),
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/adhoc_soft.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size (350,50)),
                  child: TextFormField(
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
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(
                          color: Color(0XFF2a55a3),
                        ),
                      ),
                      prefixIcon: Container(
                        width: 50,
                        height: 50,
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
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size (350,50)),
                    child: TextFormField(
                      obscureText: true,
                      controller: _textController2,
                      maxLength: 16,
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
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 2.0,
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: BorderSide(color: Color(0XFF2a55a3),
                          ),
                        ),
                        prefixIcon: Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Color(0XFF2a55a3),
                          ),
                          child: Icon(
                              Icons.vpn_key_rounded,
                              color: Colors.white,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0XFF2a55a3)),
                        counterText: '',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                  SizedBox(
                    width: 30,
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
