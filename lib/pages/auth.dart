import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class AuthPage extends StatefulWidget {
  final List<Product> products;

  AuthPage(this.products);

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  String email = '';
  String password = '';
  bool acceptedTerms = false;

  Widget _buildTextInputEmail() {
    return TextField(
      maxLength: 200,
      decoration: InputDecoration(
          labelText: 'Username', fillColor: Colors.white, filled: true),
      onChanged: (String value) {
        setState(() {
          email = value;
        });
      },
    );
  }

  Widget _buildTextInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password', fillColor: Colors.white, filled: true),
      onChanged: (String value) {
        setState(() {
          password = value;
        });
      },
    );
  }

  Widget _buildSwitchListTerms() {
    return SwitchListTile(
        value: acceptedTerms,
        title: Text('Accept Terms', textScaleFactor: 0.8),
        activeColor: Theme.of(context).primaryColor,
        onChanged: (bool value) {
          setState(() {
            acceptedTerms = value;
          });
        });
  }

  Widget _buildButtonLogin() {
    return RaisedButton(
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      ),
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/products');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.limeAccent),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _buildTextInputEmail(),
            SizedBox(height: 12.0),
            _buildTextInputPassword(),
            _buildSwitchListTerms(),
            SizedBox(height: 12.0),
            _buildButtonLogin(),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.overlay),
          ),
        ),
      ),
    );
  }
}
