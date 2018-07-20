import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  final List<Map<String, dynamic>> products;

  AuthPage(this.products);

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  String _email;
  String _password;
  bool _acceptedTerms = false;

  Widget _usernameInput() {
    return TextField(
      maxLength: 200,
      decoration: InputDecoration(labelText: 'Username'),
      onChanged: (String value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _passwordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
      onChanged: (String value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _termSwitch() {
    return SwitchListTile(
        value: _acceptedTerms,
        title: Text('Accept Terms', textScaleFactor: 0.8),
        activeColor: Theme.of(context).primaryColor,
        onChanged: (bool value) {
          setState(() {
            _acceptedTerms = value;
          });
        });
  }

  Widget _loginButton() {
    return RaisedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/products');
      },
      child: Text('Login'),
      color: Theme.of(context).primaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _usernameInput(),
            _passwordInput(),
            _termSwitch(),
            SizedBox(
              height: 12.0,
            ),
            _loginButton(),
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
